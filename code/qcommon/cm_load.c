/*
===========================================================================
Copyright (C) 1999-2005 Id Software, Inc.

This file is part of Quake III Arena source code.

Quake III Arena source code is free software; you can redistribute it
and/or modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 2 of the License,
or (at your option) any later version.

Quake III Arena source code is distributed in the hope that it will be
useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Quake III Arena source code; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
===========================================================================
*/
// cmodel.c -- model loading

#include "cm_local.h"

#ifdef BSPC

#include "../bspc/l_qfiles.h"

void SetPlaneSignbits(cPlane_t *out) {
	int	bits, j;

	// for fast box on planeside test
	bits = 0;
	for (j = 0; j < 3; j++) {
		if (out->normal[j] < 0) {
			bits |= 1 << j;
		}
	}
	out->signbits = bits;
}
#endif //BSPC

// to allow boxes to be treated as brush models, we allocate
// some extra indexes along with those needed by the map
#define	BOX_BRUSHES		1
#define	BOX_SIDES		6
#define	BOX_LEAFS		2
#define	BOX_PLANES		12

#define	LL(x) x=LittleLong(x)


clipMap_t	cm;
int			c_pointcontents;
int			c_traces, c_brush_traces, c_patch_traces;

byte *cmod_base;

#ifndef BSPC
cvar_t *cm_noAreas;
cvar_t *cm_noCurves;
cvar_t *cm_playerCurveClip;
#endif

cPlane_t *box_planes;

q3_cModel_t	q3_box_model;
q3_cBrush_t *q3_box_brush;

void	CM_Q3_InitBoxHull(void);
void	CM_Q3_FloodAreaConnections(void);

#ifdef QUAKE2
int			q2_box_headnode;
q2_cLeaf_t *q2_box_leaf;
q2_cBrush_t *q2_box_brush;
void	CM_Q2_InitBoxHull(void);
void	CM_Q2_FloodAreaConnections(void);

// QUAKE 2
q2_dVis_t *q2_vis = (q2_dVis_t *)cm.q2_visibility;
q2_mapSurface_t	nullsurface;	//TODO: used in CM_Q3_InitBoxHull, but is it needed?
int				q2_emptyleaf;
#endif

/*
===============================================================================

					MAP LOADING

===============================================================================
*/

/*
=================
CMod_Q3_LoadShaders
=================
*/
static void CMod_Q3_LoadShaders(const lump_t *l) {
	q3_dShader_t *in, *out;
	int			i, count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in)) {
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);
	}

	count = l->filelen / sizeof(*in);
	if (count < 1)
		Com_Error(ERR_DROP, "%s: map with no shaders", __func__);

	cm.shaders = Hunk_Alloc(count * sizeof(*cm.shaders), h_high);
	cm.numShaders = count;

	Com_Memcpy(cm.shaders, in, count * sizeof(*cm.shaders));

	out = cm.shaders;
	for (i = 0; i < count; i++, in++, out++) {
		out->contentFlags = LittleLong(out->contentFlags);
		out->surfaceFlags = LittleLong(out->surfaceFlags);
	}
}


/*
=================
CMod_Q3_LoadSubmodels
=================
*/
static void CMod_Q3_LoadSubmodels(const lump_t *l) {
	q3_dModel_t *in;
	q3_cModel_t *out;
	int			i, j, count;
	int *indexes;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);
	if (count < 1)
		Com_Error(ERR_DROP, "%s: map with no models", __func__);

	cm.cmodels = Hunk_Alloc(count * sizeof(*cm.cmodels), h_high);
	cm.numSubModels = count;

	if (count > MAX_SUBMODELS)
		Com_Error(ERR_DROP, "%s: MAX_SUBMODELS exceeded", __func__);

	for (i = 0; i < count; i++, in++)
	{
		out = &cm.cmodels[i];

		for (j = 0; j < 3; j++)
		{	// spread the mins / maxs by a pixel
			out->mins[j] = LittleFloat(in->mins[j]) - 1;
			out->maxs[j] = LittleFloat(in->maxs[j]) + 1;
		}

		if (i == 0) {
			continue;	// world model doesn't need other info
		}

		// make a "leaf" just to hold the model's brushes and surfaces
		out->leaf.numLeafBrushes = LittleLong(in->numBrushes);
		indexes = Hunk_Alloc(out->leaf.numLeafBrushes * 4, h_high);
		out->leaf.firstLeafBrush = indexes - cm.leafbrushes;
		for (j = 0; j < out->leaf.numLeafBrushes; j++) {
			indexes[j] = LittleLong(in->firstBrush) + j;
		}

		out->leaf.numLeafSurfaces = LittleLong(in->numSurfaces);
		indexes = Hunk_Alloc(out->leaf.numLeafSurfaces * 4, h_high);
		out->leaf.firstLeafSurface = indexes - cm.leafsurfaces;
		for (j = 0; j < out->leaf.numLeafSurfaces; j++) {
			indexes[j] = LittleLong(in->firstSurface) + j;
		}
	}
}


/*
=================
CMod_Q3_LoadNodes

=================
*/
static void CMod_Q3_LoadNodes(const lump_t *l) {
	q3_dNode_t *in;
	int				child;
	cNode_t *out;
	int				i, j, count;

	in = (q3_dNode_t *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);
	if (count < 1)
		Com_Error(ERR_DROP, "%s: map has no nodes", __func__);

	cm.nodes = Hunk_Alloc(count * sizeof(*cm.nodes), h_high);
	cm.numNodes = count;

	out = cm.nodes;

	for (i = 0; i < count; i++, out++, in++)
	{
		out->plane = cm.planes + LittleLong(in->planeNum);
		for (j = 0; j < 2; j++)
		{
			child = LittleLong(in->children[j]);
			out->children[j] = child;
		}
	}

}

/*
=================
CM_BoundBrush

=================
*/
void CM_BoundBrush(q3_cBrush_t *b) {
	b->bounds[0][0] = -b->sides[0].plane->dist;
	b->bounds[1][0] = b->sides[1].plane->dist;

	b->bounds[0][1] = -b->sides[2].plane->dist;
	b->bounds[1][1] = b->sides[3].plane->dist;

	b->bounds[0][2] = -b->sides[4].plane->dist;
	b->bounds[1][2] = b->sides[5].plane->dist;
}


/*
=================
CMod_Q3_LoadBrushes

=================
*/
static void CMod_Q3_LoadBrushes(const lump_t *l) {
	q3_dBrush_t *in;
	q3_cBrush_t *out;
	int			i, count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);

	cm.brushes = Hunk_Alloc((BOX_BRUSHES + count) * sizeof(*cm.brushes), h_high);
	cm.numBrushes = count;

	out = cm.brushes;

	for (i = 0; i < count; i++, out++, in++) {
		out->sides = cm.brushsides + LittleLong(in->firstSide);
		out->numsides = LittleLong(in->numSides);

		out->shaderNum = LittleLong(in->shaderNum);
		if (out->shaderNum < 0 || out->shaderNum >= cm.numShaders) {
			Com_Error(ERR_DROP, "%s: bad shaderNum: %i", __func__, out->shaderNum);
		}
		out->contents = cm.shaders[out->shaderNum].contentFlags;

		CM_BoundBrush(out);
	}

}


/*
=================
CMod_Q3_LoadLeafs
=================
*/
static void CMod_Q3_LoadLeafs(const lump_t *l) {
	int			i;
	q3_cLeaf_t *out;
	q3_dLeaf_t *in;
	int			count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);
	if (count < 1)
		Com_Error(ERR_DROP, "%s: map with no leafs", __func__);

	cm.leafs = Hunk_Alloc((BOX_LEAFS + count) * sizeof(*cm.leafs), h_high);
	cm.numLeafs = count;

	out = cm.leafs;
	for (i = 0; i < count; i++, in++, out++)
	{
		out->cluster = LittleLong(in->cluster);
		out->area = LittleLong(in->area);
		out->firstLeafBrush = LittleLong(in->firstLeafBrush);
		out->numLeafBrushes = LittleLong(in->numLeafBrushes);
		out->firstLeafSurface = LittleLong(in->firstLeafSurface);
		out->numLeafSurfaces = LittleLong(in->numLeafSurfaces);

		if (out->cluster >= cm.numClusters)
			cm.numClusters = out->cluster + 1;
		if (out->area >= cm.numAreas)
			cm.numAreas = out->area + 1;
	}

	cm.areas = Hunk_Alloc(cm.numAreas * sizeof(*cm.areas), h_high);
	cm.areaPortals = Hunk_Alloc(cm.numAreas * cm.numAreas * sizeof(*cm.areaPortals), h_high);
}


/*
=================
CMod_Q3_LoadPlanes
=================
*/
static void CMod_Q3_LoadPlanes(const lump_t *l) {
	int			i, j;
	cPlane_t *out;
	q3_dPlane_t *in;
	int			count;
	int			bits;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);
	if (count < 1)
		Com_Error(ERR_DROP, "%s: map with no planes", __func__);

	cm.planes = Hunk_Alloc((BOX_PLANES + count) * sizeof(*cm.planes), h_high);
	cm.numPlanes = count;

	out = cm.planes;

	for (i = 0; i < count; i++, in++, out++)
	{
		bits = 0;
		for (j = 0; j < 3; j++)
		{
			out->normal[j] = LittleFloat(in->normal[j]);
			if (out->normal[j] < 0)
				bits |= 1 << j;
		}

		out->dist = LittleFloat(in->dist);
		out->type = PlaneTypeForNormal(out->normal);
		out->signbits = bits;
	}
}


/*
=================
CMod_Q3_LoadLeafBrushes
=================
*/
static void CMod_Q3_LoadLeafBrushes(const lump_t *l) {
	int i;
	int *out;
	int *in;
	int count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);

	cm.leafbrushes = Hunk_Alloc((count + BOX_BRUSHES) * sizeof(*cm.leafbrushes), h_high);
	cm.numLeafBrushes = count;

	out = cm.leafbrushes;

	for (i = 0; i < count; i++, in++, out++) {
		*out = LittleLong(*in);
	}
}


/*
=================
CMod_Q3_LoadLeafSurfaces
=================
*/
static void CMod_Q3_LoadLeafSurfaces(const lump_t *l) {
	int i;
	int *out;
	int *in;
	int count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);

	cm.leafsurfaces = Hunk_Alloc(count * sizeof(*cm.leafsurfaces), h_high);
	cm.numLeafSurfaces = count;

	out = cm.leafsurfaces;

	for (i = 0; i < count; i++, in++, out++) {
		*out = LittleLong(*in);
	}
}


/*
=================
CMod_CheckLeafBrushes
=================
*/
static void CMod_CheckLeafBrushes(void) {
	int	i;

	for (i = 0; i < cm.numLeafBrushes; i++) {
		if (cm.leafbrushes[i] < 0 || cm.leafbrushes[i] >= cm.numBrushes) {
			Com_DPrintf(S_COLOR_YELLOW "[%i] invalid leaf brush %08x\n", i, cm.leafbrushes[i]);
			cm.leafbrushes[i] = 0;
		}
	}
}


/*
=================
CMod_Q3_LoadBrushSides
=================
*/
static void CMod_Q3_LoadBrushSides(const lump_t *l) {
	int				i;
	q3_cBrushSide_t *out;
	q3_dBrushSide_t *in;
	int				count;
	int				num;

	in = (q3_dBrushSide_t *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in)) {
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);
	}
	count = l->filelen / sizeof(*in);

	cm.brushsides = Hunk_Alloc((BOX_SIDES + count) * sizeof(*cm.brushsides), h_high);
	cm.numBrushSides = count;

	out = cm.brushsides;

	for (i = 0; i < count; i++, in++, out++) {
		num = LittleLong(in->planeNum);
		out->plane = &cm.planes[num];
		out->shaderNum = LittleLong(in->shaderNum);
		if (out->shaderNum < 0 || out->shaderNum >= cm.numShaders) {
			Com_Error(ERR_DROP, "%s: bad shaderNum: %i", __func__, out->shaderNum);
		}
		out->surfaceFlags = cm.shaders[out->shaderNum].surfaceFlags;
	}
}


/*
=================
CMod_LoadEntityString
=================
*/
static void CMod_LoadEntityString(const lump_t *l) {
	cm.entityString = Hunk_Alloc(l->filelen, h_high);
	cm.numEntityChars = l->filelen;
	Com_Memcpy(cm.entityString, cmod_base + l->fileofs, l->filelen);
}


//fnq
/*
=================
CMod_OverrideEntityString
=================
*/
void CMod_OverrideEntityString(char *buf, const int len) {
	//memset( cm.entityString, 0, sizeof(cm.entityString) );
	cm.entityString = Hunk_Alloc(len, h_high);
	cm.numEntityChars = len;
	Com_Memcpy(cm.entityString, buf, len);
}
//-fnq


/*
=================
CMod_Q3_LoadVisibility
=================
*/
#define	VIS_HEADER	8
static void CMod_Q3_LoadVisibility(const lump_t *l) {
	int		len;
	byte *buf;

	len = l->filelen;
	if (!len) {
		cm.clusterBytes = (cm.numClusters + 31) & ~31;
		cm.visibility = Hunk_Alloc(cm.clusterBytes, h_high);
		Com_Memset(cm.visibility, 255, cm.clusterBytes);
		return;
	}
	buf = cmod_base + l->fileofs;

	cm.vised = qtrue;
	cm.visibility = Hunk_Alloc(len, h_high);
	cm.numClusters = LittleLong(((int *)buf)[0]);
	cm.clusterBytes = LittleLong(((int *)buf)[1]);
	Com_Memcpy(cm.visibility, buf + VIS_HEADER, len - VIS_HEADER);
}

//==================================================================


/*
=================
CMod_Q3_LoadPatches
=================
*/
#define	MAX_PATCH_VERTS		1024
static void CMod_Q3_LoadPatches(const lump_t *surfs, const lump_t *verts) {
	drawVert_t *dv, *dv_p;
	q3_dSurface_t *in;
	int			count;
	int			i, j;
	int			c;
	q3_cPatch_t *patch;
	vec3_t		points[MAX_PATCH_VERTS];
	int			width, height;
	int			shaderNum;

	in = (void *)(cmod_base + surfs->fileofs);
	if (surfs->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	cm.numSurfaces = count = surfs->filelen / sizeof(*in);
	cm.surfaces = Hunk_Alloc(cm.numSurfaces * sizeof(cm.surfaces[0]), h_high);

	dv = (void *)(cmod_base + verts->fileofs);
	if (verts->filelen % sizeof(*dv))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	// scan through all the surfaces, but only load patches,
	// not planar faces
	for (i = 0; i < count; i++, in++) {
		if (LittleLong(in->surfaceType) != MST_PATCH) {
			continue;		// ignore other surfaces
		}
		// FIXME: check for non-colliding patches

		cm.surfaces[i] = patch = Hunk_Alloc(sizeof(*patch), h_high);

		// load the full drawverts onto the stack
		width = LittleLong(in->patchWidth);
		height = LittleLong(in->patchHeight);
		c = width * height;
		if (c > MAX_PATCH_VERTS) {
			Com_Error(ERR_DROP, "%s: MAX_PATCH_VERTS", __func__);
		}

		dv_p = dv + LittleLong(in->firstVert);
		for (j = 0; j < c; j++, dv_p++) {
			points[j][0] = LittleFloat(dv_p->xyz[0]);
			points[j][1] = LittleFloat(dv_p->xyz[1]);
			points[j][2] = LittleFloat(dv_p->xyz[2]);
		}

		shaderNum = LittleLong(in->shaderNum);
		patch->contents = cm.shaders[shaderNum].contentFlags;
		patch->surfaceFlags = cm.shaders[shaderNum].surfaceFlags;

		// create the internal facet structure
		patch->pc = CM_GeneratePatchCollide(width, height, points);
	}
}

//==================================================================
// QUAKE 2 CMOD LOADING
//==================================================================
#ifdef QUAKE2
/*
=================
CMod_Q2_LoadSubmodels
=================
*/
static void CMod_Q2_LoadSubmodels(const lump_t *l) {
	q2_dModel_t *in;
	q2_cModel_t *out;
	int			i, j, count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);

	if (count < 1)
		Com_Error(ERR_DROP, "%s: Map with no models", __func__);

	cm.q2_cmodels = Hunk_Alloc(count * sizeof(*cm.q2_cmodels), h_high);
	cm.numSubModels = count;

	if (count > MAX_MAP_MODELS)
		Com_Error(ERR_DROP, "%s: Map has too many models", __func__);

	cm.numSubModels = count;

	for (i = 0; i < count; i++, in++, out++) {
		out = &cm.q2_cmodels[i];

		for (j = 0; j < 3; j++) {
			// spread the mins / maxs by a pixel
			out->mins[j] = LittleFloat(in->mins[j]) - 1;
			out->maxs[j] = LittleFloat(in->maxs[j]) + 1;
			out->origin[j] = LittleFloat(in->origin[j]);
		}
		out->headnode = LittleLong(in->headnode);
	}
}


/*
=================
CMod_Q2_LoadSurfaces
=================
*/
static void CMod_Q2_LoadSurfaces(const lump_t *l) {
	q2_texInfo_t	*in;
	q2_mapSurface_t *out;
	int				i, count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);
	cm.q2_surfaces = Hunk_Alloc(count * sizeof(*cm.q2_surfaces), h_high);

	cm.numTexInfo = count;

	out = cm.q2_surfaces;

	for (i = 0; i < count; i++, in++, out++) {
		strncpy(out->c.name, in->texture, sizeof(out->c.name) - 1);
		strncpy(out->rname, in->texture, sizeof(out->rname) - 1);
		out->c.flags = LittleLong(in->flags);
		out->c.value = LittleLong(in->value);
	}
}


/*
=================
CMod_Q2_LoadNodes

=================
*/
static void CMod_Q2_LoadNodes(const lump_t *l) {
	q2_dNode_t	*in;
	int			child;
	cNode_t		*out;
	int			i, j, count;

	in = (q2_dNode_t *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);
	if (count < 1)
		Com_Error(ERR_DROP, "%s: map has no nodes", __func__);

	cm.nodes = Hunk_Alloc(count * sizeof(*cm.nodes), h_high);
	cm.numNodes = count;

	out = cm.q2_nodes;

	for (i = 0; i < count; i++, out++, in++) {
		out->plane = cm.q2_planes + LittleLong(in->planeNum);
		for (j = 0; j < 2; j++) {
			child = LittleLong(in->children[j]);
			out->children[j] = child;
		}
	}

}


/*
=================
CMod_Q2_LoadBrushes

=================
*/
static void CMod_Q2_LoadBrushes( const lump_t *l ) {
	q2_dBrush_t *in;
	q2_cBrush_t *out;
	int			i, count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);
	count = l->filelen / sizeof(*in);

	if (count > Q2_MAX_MAP_BRUSHES)
		Com_Error(ERR_DROP, "%s: Map has too many brushes", __func__);

	out = cm.q2_brushes;

	cm.numBrushes = count;

	for (i = 0; i < count; i++, out++, in++) {
		out->firstBrushSide = LittleLong(in->firstSide);
		out->numsides = LittleLong(in->numSides);
		out->contents = LittleLong(in->contents);

		//fnq3: q3's CM_BoundBrush(out);?
	}
}

/*
=================
CMod_Q2_LoadLeafs
=================
*/
static void CMod_Q2_LoadLeafs( const lump_t *l ) {
	int			i;
	q2_cLeaf_t *out;
	q2_dLeaf_t *in;
	int			count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);
	if (count < 1)
		Com_Error(ERR_DROP, "%s: map with no leafs", __func__);

	cm.q2_leafs = Hunk_Alloc((BOX_LEAFS + count) * sizeof(*cm.q2_leafs), h_high);
	cm.numLeafs = count;

	out = cm.q2_leafs;
	cm.numClusters = 0; //q2

	for (i = 0; i < count; i++, in++, out++)
	{
		out->contents = LittleLong(in->contents);
		out->cluster = LittleShort(in->cluster);
		out->area = LittleShort(in->area);
		out->firstLeafBrush = LittleShort(in->firstLeafBrush);
		out->numLeafBrushes = LittleShort(in->numLeafBrushes);

		if (out->cluster >= cm.numClusters)
			cm.numClusters = out->cluster + 1;
		if (out->area >= cm.numAreas)
			cm.numAreas = out->area + 1;
	}

	if (cm.q2_leafs[0].contents != CONTENTS_SOLID)
		Com_Error(ERR_DROP, "%s: Map leaf 0 is not CONTENTS_SOLID", __func__);
	q2_emptyleaf = -1;
	for ( i = 1; i < cm.numLeafs; i++ ) {
		if (!cm.q2_leafs[i].contents) {
			q2_emptyleaf = i;
			break;
		}
	}
	if ( q2_emptyleaf == -1 )
		Com_Error(ERR_DROP, "%s: Map does not have an empty leaf", __func__);
}

/*
=================
CMod_Q2_LoadPlanes
=================
*/
static void CMod_Q2_LoadPlanes(const lump_t *l) {
	int			i, j;
	cPlane_t	*out;
	q2_dPlane_t *in;
	int			count;
	int			bits;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);
	if (count < 1)
		Com_Error(ERR_DROP, "%s: Map with no planes", __func__);

	cm.q2_planes = Hunk_Alloc((BOX_PLANES + count) * sizeof(*cm.q2_planes), h_high);
	cm.numPlanes = count;

	out = cm.q2_planes;

	for (i = 0; i < count; i++, in++, out++) {
		bits = 0;
		for (j = 0; j < 3; j++) {
			out->normal[j] = LittleFloat(in->normal[j]);
			if (out->normal[j] < 0)
				bits |= 1 << j;
		}

		out->dist = LittleFloat(in->dist);
		out->type = LittleLong(in->type);	//fnq3: change to q3's PlaneTypeForNormal(out->normal);?
		out->signbits = bits;
	}
}

/*
=================
CMod_Q2_LoadLeafBrushes
=================
*/
static void CMod_Q2_LoadLeafBrushes(const lump_t *l) {
	int				i;
	unsigned short	*in, *out;
	int				count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);

	count = l->filelen / sizeof(*in);

	cm.q2_leafbrushes = Hunk_Alloc((count + BOX_BRUSHES) * sizeof(*cm.q2_leafbrushes), h_high);
	cm.numLeafBrushes = count;

	out = cm.q2_leafbrushes;

	for (i = 0; i < count; i++, in++, out++)
		*out = LittleShort(*in);
}

/*
=================
CMod_Q2_LoadBrushSides
=================
*/
static void CMod_Q2_LoadBrushSides(const lump_t *l) {
	int				i, j;
	q2_cBrushSide_t *out;
	q2_dBrushSide_t *in;
	int				count;
	int				num;

	in = (q2_dBrushSide_t *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in)) {
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);
	}
	count = l->filelen / sizeof(*in);

	cm.q2_brushsides = Hunk_Alloc((BOX_SIDES + count) * sizeof(*cm.q2_brushsides), h_high);
	cm.numBrushSides = count;

	out = cm.q2_brushsides;

	for (i = 0; i < count; i++, in++, out++) {
		num = LittleShort(in->planeNum);
		out->plane = &cm.q2_planes[num];
		j = LittleShort(in->texInfo);
		if (j >= cm.numTexInfo)
			Com_Error(ERR_DROP, "%s: Bad texture info: %i", __func__, num);
		out->surface = &cm.q2_surfaces[j];
	}
}

/*
=================
CMod_Q2_LoadAreas
=================
*/
static void CMod_Q2_LoadAreas(const lump_t *l) {
	int			i;
	q2_cArea_t *out;
	q2_dArea_t *in;
	int			count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "%s: funny lump size", __func__);
	count = l->filelen / sizeof(*in);

	if (count > MAX_MAP_AREAS)
		Com_Error(ERR_DROP, "%s: Map has too many areas", __func__);

	out = cm.q2_areas;
	cm.numAreas = count;

	for (i = 0; i < count; i++, in++, out++) {
		out->numareaportals = LittleLong(in->numareaportals);
		out->firstareaportal = LittleLong(in->firstareaportal);
		out->floodvalid = 0;
		out->floodnum = 0;
	}
}

/*
=================
CMod_Q2_LoadAreaPortals
=================
*/
static void CMod_Q2_LoadAreaPortals(const lump_t *l) {
	int					i;
	q2_dAreaPortal_t	*in, *out;
	int					count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in))
		Com_Error(ERR_DROP, "CMod_Q2_LoadAreaPortals: funny lump size");
	count = l->filelen / sizeof(*in);

	if (count > MAX_MAP_AREAS)
		Com_Error(ERR_DROP, "Map has too many areas");

	out = cm.q2_areaportals;
	cm.numAreaPortals = count;

	for (i = 0; i < count; i++, in++, out++) {
		out->portalnum = LittleLong(in->portalnum);
		out->otherarea = LittleLong(in->otherarea);
	}
}

/*
=================
CMod_Q2_LoadVisibility
=================
*/
static void CMod_Q2_LoadVisibility(const lump_t *l) {
	int i;

	cm.numVisibility = l->filelen;
	if (l->filelen > Q2_MAX_MAP_VISIBILITY)
		Com_Error(ERR_DROP, "Map has too large visibility lump");

	memcpy(cm.q2_visibility, cmod_base + l->fileofs, l->filelen);

	q2_vis->numclusters = LittleLong(q2_vis->numclusters);
	for (i = 0; i < q2_vis->numclusters; i++) {
		q2_vis->bitofs[i][0] = LittleLong(q2_vis->bitofs[i][0]);
		q2_vis->bitofs[i][1] = LittleLong(q2_vis->bitofs[i][1]);
	}
}
#endif //QUAKE2

/*
==================
CM_LoadMap

Loads in the map and all submodels
==================
*/
void CM_LoadMap(const char *name, qboolean clientload, int *checksum, int *version) {
	void *buf;
	int				i;
	q3_dHeader_t		header;
	int				length;

	if (!name || !name[0]) {
		Com_Error(ERR_DROP, "CM_LoadMap: NULL name");
	}

#ifndef BSPC
	cm_noAreas = Cvar_Get("cm_noAreas", "0", CVAR_CHEAT);
	cm_noCurves = Cvar_Get("cm_noCurves", "0", CVAR_CHEAT);
	cm_playerCurveClip = Cvar_Get("cm_playerCurveClip", "1", CVAR_ARCHIVE_ND | CVAR_CHEAT);
#endif

	Com_DPrintf("%s( '%s', %s )\n", __func__, name, clientload ? "true" : "false");

	if (!strcmp(cm.name, name) && clientload) {
		*checksum = cm.checksum;
		return;
	}

	// free old stuff
	CM_ClearMap();

	//
	// load the file
	//
#ifndef BSPC
	length = FS_ReadFile(name, &buf);
#else
	length = LoadQuakeFile((quakefile_t *)name, &buf);
#endif

	if (!buf) {
		Com_Error(ERR_DROP, "Couldn't load %s", name);
	}

	*checksum = cm.checksum = LittleLong(Com_BlockChecksum(buf, length));

	header = *(q3_dHeader_t *)buf;
	for (i = 0; i < sizeof(q3_dHeader_t) / 4; i++) {
		((int *)&header)[i] = LittleLong(((int *)&header)[i]);
	}

	*version = header.version;
	Cvar_Set("com_bspversion", va("%i", header.version));
	cmod_base = (byte *)buf;

	switch (header.version) {
#ifdef QUAKE2
	case IBSP_Q2:
		// load into heap
		CMod_Q2_LoadSurfaces(&header.lumps[Q2_LUMP_TEXINFO]);
		CMod_Q2_LoadLeafs(&header.lumps[Q2_LUMP_LEAFS]);
		CMod_Q2_LoadLeafBrushes(&header.lumps[Q2_LUMP_LEAFBRUSHES]);
		CMod_Q2_LoadPlanes(&header.lumps[Q2_LUMP_PLANES]);
		CMod_Q2_LoadBrushes(&header.lumps[Q2_LUMP_BRUSHES]);
		CMod_Q2_LoadBrushSides(&header.lumps[Q2_LUMP_BRUSHSIDES]);
		CMod_Q2_LoadSubmodels(&header.lumps[Q2_LUMP_MODELS]);
		CMod_Q2_LoadNodes(&header.lumps[Q2_LUMP_NODES]);
		CMod_Q2_LoadAreas(&header.lumps[Q2_LUMP_AREAS]);
		CMod_Q2_LoadAreaPortals(&header.lumps[Q2_LUMP_AREAPORTALS]);
		CMod_Q2_LoadVisibility(&header.lumps[Q2_LUMP_VISIBILITY]);
		CMod_LoadEntityString(&header.lumps[Q2_LUMP_ENTITIES]);
		break;
#endif //QUAKE2
	case IBSP_Q3A:
	case IBSP_QL:
		// load into heap
		CMod_Q3_LoadShaders(&header.lumps[Q3_LUMP_SHADERS]);
		CMod_Q3_LoadLeafs(&header.lumps[Q3_LUMP_LEAFS]);
		CMod_Q3_LoadLeafBrushes(&header.lumps[Q3_LUMP_LEAFBRUSHES]);
		CMod_Q3_LoadLeafSurfaces(&header.lumps[Q3_LUMP_LEAFSURFACES]);
		CMod_Q3_LoadPlanes(&header.lumps[Q3_LUMP_PLANES]);
		CMod_Q3_LoadBrushSides(&header.lumps[Q3_LUMP_BRUSHSIDES]);
		CMod_Q3_LoadBrushes(&header.lumps[Q3_LUMP_BRUSHES]);
		CMod_Q3_LoadSubmodels(&header.lumps[Q3_LUMP_MODELS]);
		CMod_Q3_LoadNodes(&header.lumps[Q3_LUMP_NODES]);
		CMod_LoadEntityString(&header.lumps[Q3_LUMP_ENTITIES]);
		CMod_Q3_LoadVisibility(&header.lumps[Q3_LUMP_VISIBILITY]);
		CMod_Q3_LoadPatches(&header.lumps[Q3_LUMP_SURFACES], &header.lumps[Q3_LUMP_DRAWVERTS]);

		CMod_CheckLeafBrushes();
		break;
	default:
		//Com_Error(ERR_DROP, "%s: %s has unsupported BSP version number (%i)", __func__, name, header.version);
		ErrorDrop(va("%s has unsupported BSP version number (%i)", name, header.version));
		break;
	}

	// we are NOT freeing the file, because it is cached for the ref
	FS_FreeFile(buf);

	switch (header.version) {
#ifdef QUAKE2
	case IBSP_Q2:
		CM_Q2_InitBoxHull();

		CM_Q2_FloodAreaConnections();
		break;
#endif //QUAKE2
	case IBSP_Q3A:
	case IBSP_QL:
		CM_Q3_InitBoxHull();

		CM_Q3_FloodAreaConnections();
		break;
	default: break;
	}

	// allow this to be cached if it is loaded by the server
	if (!clientload) {
		Q_strncpyz(cm.name, name, sizeof(cm.name));
	}
}


/*
==================
CM_ClearMap
==================
*/
void CM_ClearMap(void) {
	Com_Memset(&cm, 0, sizeof(cm));
	CM_ClearLevelPatches();
}

#ifdef QUAKE2
/*
==================
CM_Q2_ClipHandleToModel
==================
*/
q2_cModel_t *CM_Q2_ClipHandleToModel(clipHandle_t handle) {

	if (handle < 0) {
		Com_Error(ERR_DROP, "CM_Q2_ClipHandleToModel: bad handle %i", handle);
	}
	if (handle < cm.numSubModels) {
		return &cm.q2_cmodels[handle];
	}
	if (handle == BOX_MODEL_HANDLE) {
		//return &q3_box_model;		//fnq3 todo q2_box_model
		Com_Error(ERR_DROP, "CM_Q2_ClipHandleToModel: BOX_MODEL_HANDLE not yet supported in Q2");
	}
	if (handle < MAX_SUBMODELS) {
		Com_Error(ERR_DROP, "CM_Q2_ClipHandleToModel: bad handle %i < %i < %i",
			cm.numSubModels, handle, MAX_SUBMODELS);
	}
	Com_Error(ERR_DROP, "CM_Q2_ClipHandleToModel: bad handle %i", handle + MAX_SUBMODELS);

	return NULL;
}
#endif //QUAKE2

/*
==================
CM_ClipHandleToModel
==================
*/
q3_cModel_t *CM_ClipHandleToModel(clipHandle_t handle) {
	if (handle < 0) {
		Com_Error(ERR_DROP, "CM_ClipHandleToModel: bad handle %i", handle);
	}
	if (handle < cm.numSubModels) {
		return &cm.cmodels[handle];
	}
	if (handle == BOX_MODEL_HANDLE) {
		return &q3_box_model;
	}
	if (handle < MAX_SUBMODELS) {
		Com_Error(ERR_DROP, "CM_ClipHandleToModel: bad handle %i < %i < %i",
			cm.numSubModels, handle, MAX_SUBMODELS);
	}
	Com_Error(ERR_DROP, "CM_ClipHandleToModel: bad handle %i", handle + MAX_SUBMODELS);

	return NULL;
}


/*
==================
CM_InlineModel
==================
*/
clipHandle_t CM_InlineModel(int index) {
	if (index < 0 || index >= cm.numSubModels) {
		Com_Error(ERR_DROP, "CM_InlineModel: bad number");
	}
	return index;
}


int CM_NumClusters(void) {
	return cm.numClusters;
}


int CM_NumInlineModels(void) {
	return cm.numSubModels;
}


char *CM_EntityString(void) {
	char *s = cm.entityString;
	s = replace(s, "\"advertisement\"", "\"func_static\"");
	return s;
}


int CM_LeafCluster(int leafnum) {
	if (leafnum < 0 || leafnum >= cm.numLeafs) {
		Com_Error(ERR_DROP, "CM_LeafCluster: bad number");
	}
	return cm.leafs[leafnum].cluster;
}


int CM_LeafArea(int leafnum) {
	if (leafnum < 0 || leafnum >= cm.numLeafs) {
		Com_Error(ERR_DROP, "CM_LeafArea: bad number");
	}
	return cm.leafs[leafnum].area;
}

//=======================================================================
#ifdef QUAKE2
void CM_Q2_InitBoxHull(void) {
	int				i;
	int				side;
	cNode_t *c;
	cPlane_t *p;
	q2_cBrushSide_t *s;

	q2_box_headnode = cm.numNodes;
	box_planes = &cm.q2_planes[cm.numPlanes];
	if (cm.numNodes + 6 > Q2_MAX_MAP_NODES
		|| cm.numBrushes + 1 > Q2_MAX_MAP_BRUSHES
		|| cm.numLeafBrushes + 1 > Q2_MAX_MAP_LEAFBRUSHES
		|| cm.numBrushSides + 6 > Q2_MAX_MAP_BRUSHSIDES
		|| cm.numPlanes + 12 > Q2_MAX_MAP_PLANES)
		Com_Error(ERR_DROP, "Not enough room for box tree");

	q2_box_brush = &cm.q2_brushes[cm.numBrushes];
	q2_box_brush->numsides = 6;
	q2_box_brush->firstBrushSide = cm.numBrushSides;
	q2_box_brush->contents = CONTENTS_Q2_MONSTER;

	q2_box_leaf = &cm.q2_leafs[cm.numLeafs];
	q2_box_leaf->contents = CONTENTS_Q2_MONSTER;
	q2_box_leaf->firstLeafBrush = cm.numLeafBrushes;
	q2_box_leaf->numLeafBrushes = 1;

	cm.q2_leafbrushes[cm.numLeafBrushes] = cm.numBrushes;

	for (i = 0; i < 6; i++) {
		side = i & 1;

		// brush sides
		s = &cm.q2_brushsides[cm.numBrushSides + i];
		s->plane = cm.planes + (cm.numPlanes + i * 2 + side);
		s->surface = &nullsurface;

		// nodes
		c = &cm.q2_nodes[q2_box_headnode + i];
		c->plane = cm.q2_planes + (cm.numPlanes + i * 2);
		c->children[side] = -1 - q2_emptyleaf;
		if (i != 5)
			c->children[side ^ 1] = q2_box_headnode + i + 1;
		else
			c->children[side ^ 1] = -1 - cm.numLeafs;

		// planes
		p = &box_planes[i * 2];
		p->type = i >> 1;
		p->signbits = 0;
		VectorClear(p->normal);
		p->normal[i >> 1] = 1;

		p = &box_planes[i * 2 + 1];
		p->type = 3 + (i >> 1);
		p->signbits = 0;
		VectorClear(p->normal);
		p->normal[i >> 1] = -1;
	}
}
#endif //QUAKE2

/*
===================
CM_Q3_InitBoxHull

Set up the planes and nodes so that the six floats of a bounding box
can just be stored out and get a proper clipping hull structure.
===================
*/
void CM_Q3_InitBoxHull(void) {
	int			i;
	int			side;
	cPlane_t *p;
	q3_cBrushSide_t *s;

	box_planes = &cm.planes[cm.numPlanes];

	q3_box_brush = &cm.brushes[cm.numBrushes];
	q3_box_brush->numsides = 6;
	q3_box_brush->sides = cm.brushsides + cm.numBrushSides;
	q3_box_brush->contents = CONTENTS_BODY;

	q3_box_model.leaf.numLeafBrushes = 1;
	//	q3_box_model.leaf.firstLeafBrush = cm.numBrushes;
	q3_box_model.leaf.firstLeafBrush = cm.numLeafBrushes;
	cm.leafbrushes[cm.numLeafBrushes] = cm.numBrushes;

	for (i = 0; i < 6; i++) {
		side = i & 1;

		// brush sides
		s = &cm.brushsides[cm.numBrushSides + i];
		s->plane = cm.planes + (cm.numPlanes + i * 2 + side);
		s->surfaceFlags = 0;

		// planes
		p = &box_planes[i * 2];
		p->type = i >> 1;
		p->signbits = 0;
		VectorClear(p->normal);
		p->normal[i >> 1] = 1;

		p = &box_planes[i * 2 + 1];
		p->type = 3 + (i >> 1);
		p->signbits = 0;
		VectorClear(p->normal);
		p->normal[i >> 1] = -1;

		SetPlaneSignbits(p);
	}
}


/*
===================
CM_TempBoxModel

To keep everything totally uniform, bounding boxes are turned into small
BSP trees instead of being compared directly.
Capsules are handled differently though.
===================
*/
clipHandle_t CM_TempBoxModel(const vec3_t mins, const vec3_t maxs, int capsule) {

	VectorCopy(mins, q3_box_model.mins);
	VectorCopy(maxs, q3_box_model.maxs);

	if (capsule) {
		return CAPSULE_MODEL_HANDLE;
	}

	box_planes[0].dist = maxs[0];
	box_planes[1].dist = -maxs[0];
	box_planes[2].dist = mins[0];
	box_planes[3].dist = -mins[0];
	box_planes[4].dist = maxs[1];
	box_planes[5].dist = -maxs[1];
	box_planes[6].dist = mins[1];
	box_planes[7].dist = -mins[1];
	box_planes[8].dist = maxs[2];
	box_planes[9].dist = -maxs[2];
	box_planes[10].dist = mins[2];
	box_planes[11].dist = -mins[2];

	VectorCopy(mins, q3_box_brush->bounds[0]);
	VectorCopy(maxs, q3_box_brush->bounds[1]);

	return BOX_MODEL_HANDLE;
}


/*
===================
CM_ModelBounds
===================
*/
void CM_ModelBounds(clipHandle_t model, vec3_t mins, vec3_t maxs) {
#ifdef QUAKE2
	const int bspversion = Cvar_VariableIntegerValue("com_bspversion");
	if (bspversion == IBSP_Q2) {
		q2_cModel_t *cmod;

		cmod = CM_Q2_ClipHandleToModel(model);
		VectorCopy(cmod->mins, mins);
		VectorCopy(cmod->maxs, maxs);
	}
	else {
#endif //QUAKE2
		q3_cModel_t *cmod;

		cmod = CM_ClipHandleToModel(model);
		VectorCopy(cmod->mins, mins);
		VectorCopy(cmod->maxs, maxs);
#ifdef QUAKE2
	}
#endif //QUAKE2
}
