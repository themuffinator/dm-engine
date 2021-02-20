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
#ifndef __QFILES_H__
#define __QFILES_H__

//
// qfiles.h: quake file formats
// This file must be identical in the quake and utils directories
//

// surface geometry should not exceed these limits
#define	SHADER_MAX_VERTEXES	1000
#define	SHADER_MAX_INDEXES	(6*SHADER_MAX_VERTEXES)


// the maximum size of game relative pathnames
#define	MAX_QPATH		64

/*
========================================================================

QVM files

========================================================================
*/

#define	VM_MAGIC			0x12721444
#define	VM_MAGIC_VER2	0x12721445
typedef struct {
	int		vmMagic;

	int		instructionCount;

	int		codeOffset;
	int		codeLength;

	int		dataOffset;
	int		dataLength;
	int		litLength;			// ( dataLength - litLength ) should be byteswapped on load
	int		bssLength;			// zero filled memory appended to datalength

	//!!! below here is VM_MAGIC_VER2 !!!
	int		jtrgLength;			// number of jump table targets
} vmHeader_t;

/*
========================================================================

.MD3 triangle model file format

========================================================================
*/

#define MD3_IDENT			(('3'<<24)+('P'<<16)+('D'<<8)+'I')
#define MD3_VERSION			15

// limits
#define MD3_MAX_LODS		3
#define	MD3_MAX_TRIANGLES	8192	// per surface
#define MD3_MAX_VERTS		4096	// per surface
#define MD3_MAX_SHADERS		256		// per surface
#define MD3_MAX_FRAMES		1024	// per model
#define	MD3_MAX_SURFACES	32		// per model
#define MD3_MAX_TAGS		16		// per frame

// vertex scales
#define	MD3_XYZ_SCALE		(1.0/64)

typedef struct md3Frame_s {
	vec3_t		bounds[2];
	vec3_t		localOrigin;
	float		radius;
	char		name[16];
} md3Frame_t;

typedef struct md3Tag_s {
	char		name[MAX_QPATH];	// tag name
	vec3_t		origin;
	vec3_t		axis[3];
} md3Tag_t;

/*
** md3Surface_t
**
** CHUNK			SIZE
** header			sizeof( md3Surface_t )
** shaders			sizeof( md3Shader_t ) * numShaders
** triangles[0]		sizeof( md3Triangle_t ) * numTriangles
** st				sizeof( md3St_t ) * numVerts
** XyzNormals		sizeof( md3XyzNormal_t ) * numVerts * numFrames
*/
typedef struct {
	int		ident;				// 

	char	name[MAX_QPATH];	// polyset name

	int		flags;
	int		numFrames;			// all surfaces in a model should have the same

	int		numShaders;			// all surfaces in a model should have the same
	int		numVerts;

	int		numTriangles;
	int		ofsTriangles;

	int		ofsShaders;			// offset from start of md3Surface_t
	int		ofsSt;				// texture coords are common for all frames
	int		ofsXyzNormals;		// numVerts * numFrames

	int		ofsEnd;				// next surface follows
} md3Surface_t;

typedef struct {
	char			name[MAX_QPATH];
	int				shaderIndex;	// for in-game use
} md3Shader_t;

typedef struct {
	int			indexes[3];
} md3Triangle_t;

typedef struct {
	float		st[2];
} md3St_t;

typedef struct {
	short		xyz[3];
	short		normal;
} md3XyzNormal_t;

typedef struct {
	int			ident;
	int			version;

	char		name[MAX_QPATH];	// model name

	int			flags;

	int			numFrames;
	int			numTags;			
	int			numSurfaces;

	int			numSkins;

	int			ofsFrames;			// offset for first frame
	int			ofsTags;			// numFrames * numTags
	int			ofsSurfaces;		// first surface, others follow

	int			ofsEnd;				// end of file
} md3Header_t;

/*
==============================================================================

MDR file format

==============================================================================
*/

/*
 * Here are the definitions for Ravensoft's model format of md4. Raven stores their
 * playermodels in .mdr files, in some games, which are pretty much like the md4
 * format implemented by ID soft. It seems like ID's original md4 stuff is not used at all.
 * MDR is being used in EliteForce, JediKnight2 and Soldiers of Fortune2 (I think).
 * So this comes in handy for anyone who wants to make it possible to load player
 * models from these games.
 * This format has bone tags, which is similar to the thing you have in md3 I suppose.
 * Raven has released their version of md3view under GPL enabling me to add support
 * to this codebase. Thanks to Steven Howes aka Skinner for helping with example
 * source code.
 *
 * - Thilo Schulz (arny@ats.s.bawue.de)
 */

#define MDR_IDENT	(('5'<<24)+('M'<<16)+('D'<<8)+'R')
#define MDR_VERSION	2
#define	MDR_MAX_BONES	128

typedef struct {
	int			boneIndex;	// these are indexes into the boneReferences,
	float		   boneWeight;		// not the global per-frame bone list
	vec3_t		offset;
} mdrWeight_t;

typedef struct {
	vec3_t		normal;
	vec2_t		texCoords;
	int			numWeights;
	mdrWeight_t	weights[1];		// variable sized
} mdrVertex_t;

typedef struct {
	int			indexes[3];
} mdrTriangle_t;

typedef struct {
	int			ident;

	char		name[MAX_QPATH];	// polyset name
	char		shader[MAX_QPATH];
	int			shaderIndex;	// for in-game use

	int			ofsHeader;	// this will be a negative number

	int			numVerts;
	int			ofsVerts;

	int			numTriangles;
	int			ofsTriangles;

	// Bone references are a set of ints representing all the bones
	// present in any vertex weights for this surface.  This is
	// needed because a model may have surfaces that need to be
	// drawn at different sort times, and we don't want to have
	// to re-interpolate all the bones for each surface.
	int			numBoneReferences;
	int			ofsBoneReferences;

	int			ofsEnd;		// next surface follows
} mdrSurface_t;

typedef struct {
	float		matrix[3][4];
} mdrBone_t;

typedef struct {
	vec3_t		bounds[2];		// bounds of all surfaces of all LOD's for this frame
	vec3_t		localOrigin;		// midpoint of bounds, used for sphere cull
	float		radius;			// dist from localOrigin to corner
	char		name[16];
	mdrBone_t	bones[1];		// [numBones]
} mdrFrame_t;

typedef struct {
        unsigned char Comp[24]; // MC_COMP_BYTES is in MatComp.h, but don't want to couple
} mdrCompBone_t;

typedef struct {
        vec3_t          bounds[2];		// bounds of all surfaces of all LOD's for this frame
        vec3_t          localOrigin;		// midpoint of bounds, used for sphere cull
        float           radius;			// dist from localOrigin to corner
        mdrCompBone_t   bones[1];		// [numBones]
} mdrCompFrame_t;

typedef struct {
	int			numSurfaces;
	int			ofsSurfaces;		// first surface, others follow
	int			ofsEnd;				// next lod follows
} mdrLOD_t;

typedef struct {
        int                     boneIndex;
        char            name[32];
} mdrTag_t;

typedef struct {
	int			ident;
	int			version;

	char		name[MAX_QPATH];	// model name

	// frames and bones are shared by all levels of detail
	int			numFrames;
	int			numBones;
	int			ofsFrames;			// mdrFrame_t[numFrames]

	// each level of detail has completely separate sets of surfaces
	int			numLODs;
	int			ofsLODs;

        int                     numTags;
        int                     ofsTags;

	int			ofsEnd;				// end of file
} mdrHeader_t;


/*
==============================================================================

  .BSP file format

==============================================================================
*/


#define BSP_IDENT	(('P'<<24)+('S'<<16)+('B'<<8)+'I')
		// little-endian "IBSP"

#define IBSP_Q2			38
#define IBSP_Q3A		46
#define IBSP_QL			47

// there shouldn't be any problem with increasing these values at the
// expense of more memory allocation in the utilities

#define	Q2_MAX_MAP_BRUSHES		0x2000
#define	Q2_MAX_MAP_TEXINFO		0x2000
#define	Q2_MAX_MAP_AREAPORTALS	0x400
#define	Q2_MAX_MAP_PLANES		0x10000
#define	Q2_MAX_MAP_NODES		0x10000
#define	Q2_MAX_MAP_BRUSHSIDES	0x10000
#define	Q2_MAX_MAP_LEAFS		0x10000
#define	Q2_MAX_MAP_VERTS		0x10000
#define	Q2_MAX_MAP_FACES		0x10000
#define	Q2_MAX_MAP_LEAFFACES	0x10000
#define	Q2_MAX_MAP_LEAFBRUSHES	0x10000
#define	Q2_MAX_MAP_PORTALS		0x10000
#define	Q2_MAX_MAP_EDGES		0x1F400
#define	Q2_MAX_MAP_SURFEDGES	0x3E800
#define	Q2_MAX_MAP_LIGHTING		0x200000
#define	Q2_MAX_MAP_VISIBILITY	0x100000

#define	MAX_MAP_MODELS			0x400		// shared by Q2 and Q3
#define	Q3_MAX_MAP_BRUSHES		0x8000
#define	MAX_MAP_ENTITIES		0x800		// shared by Q2 and Q3
#define	MAX_MAP_ENTSTRING		0x40000		// shared by Q2 and Q3
#define	Q3_MAX_MAP_SHADERS		0x400

#define	MAX_MAP_AREAS			0x100	// Q3_MAX_MAP_AREA_BYTES in q_shared must match!		// shared by Q2 and Q3
#define	Q3_MAX_MAP_FOGS			0x100
#define	Q3_MAX_MAP_PLANES		0x20000
#define	Q3_MAX_MAP_NODES		0x20000
#define	Q3_MAX_MAP_BRUSHSIDES	0x20000
#define	Q3_MAX_MAP_LEAFS		0x20000
#define	Q3_MAX_MAP_LEAFFACES	0x20000
#define	Q3_MAX_MAP_LEAFBRUSHES	0x40000
#define	Q3_MAX_MAP_PORTALS		0x20000
#define	Q3_MAX_MAP_LIGHTING		0x800000
#define	Q3_MAX_MAP_LIGHTGRID	0x800000
#define	Q3_MAX_MAP_VISIBILITY	0x200000

#define	Q3_MAX_MAP_DRAW_SURFS	0x20000
#define	Q3_MAX_MAP_DRAW_VERTS	0x80000
#define	Q3_MAX_MAP_DRAW_INDEXES	0x80000

#define Q3_MAX_MAP_ADVERTS		0x20

// key / value pair sizes in the entities lump
#define	MAX_KEY				32
#define	MAX_VALUE			1024

// the editor uses these predefined yaw angles to orient entities up or down
#define	ANGLE_UP			-1
#define	ANGLE_DOWN			-2

#define	LIGHTMAP_WIDTH		128
#define	LIGHTMAP_HEIGHT		128

#define MAX_WORLD_COORD		( 128*1024 )
#define MIN_WORLD_COORD		( -128*1024 )
#define WORLD_SIZE			( MAX_WORLD_COORD - MIN_WORLD_COORD )

//=============================================================================


typedef struct {
	int		fileofs, filelen;
} lump_t;

#define	Q2_LUMP_ENTITIES		0
#define	Q2_LUMP_PLANES			1
#define	Q2_LUMP_VERTEXES		2
#define	Q2_LUMP_VISIBILITY		3
#define	Q2_LUMP_NODES			4
#define	Q2_LUMP_TEXINFO			5
#define	Q2_LUMP_FACES			6
#define	Q2_LUMP_LIGHTING		7
#define	Q2_LUMP_LEAFS			8
#define	Q2_LUMP_LEAFFACES		9
#define	Q2_LUMP_LEAFBRUSHES		10
#define	Q2_LUMP_EDGES			11
#define	Q2_LUMP_SURFEDGES		12
#define	Q2_LUMP_MODELS			13
#define	Q2_LUMP_BRUSHES			14
#define	Q2_LUMP_BRUSHSIDES		15
#define	Q2_LUMP_POP				16
#define	Q2_LUMP_AREAS			17
#define	Q2_LUMP_AREAPORTALS		18
#define	Q2_HEADER_LUMPS			19

#define	Q3_LUMP_ENTITIES		0
#define	Q3_LUMP_SHADERS			1
#define	Q3_LUMP_PLANES			2
#define	Q3_LUMP_NODES			3
#define	Q3_LUMP_LEAFS			4
#define	Q3_LUMP_LEAFSURFACES	5
#define	Q3_LUMP_LEAFBRUSHES		6
#define	Q3_LUMP_MODELS			7
#define	Q3_LUMP_BRUSHES			8
#define	Q3_LUMP_BRUSHSIDES		9
#define	Q3_LUMP_DRAWVERTS		10
#define	Q3_LUMP_DRAWINDEXES		11
#define	Q3_LUMP_FOGS			12
#define	Q3_LUMP_SURFACES		13
#define	Q3_LUMP_LIGHTMAPS		14
#define	Q3_LUMP_LIGHTGRID		15
#define	Q3_LUMP_VISIBILITY		16
#define	Q3_LUMP_ADVERTS			17	//QL exclusive
#define	Q3_HEADER_LUMPS			18

typedef struct {
	int			ident;
	int			version;

	lump_t		lumps[Q2_HEADER_LUMPS];
} q2_dHeader_t;

typedef struct {
	int			ident;
	int			version;

	lump_t		lumps[Q3_HEADER_LUMPS];
} q3_dHeader_t;

typedef struct {
	float		mins[3], maxs[3];
	int			firstSurface, numSurfaces;
	int			firstBrush, numBrushes;
} q3_dModel_t;

typedef struct texinfo_s {
	float		vecs[2][4];		// [s/t][xyz offset]
	int			flags;			// miptex flags + overrides
	int			value;			// light emission, etc
	char		texture[32];	// texture name (textures/*.wal)
	int			nexttexinfo;	// for animations, -1 = end of chain
} q2_texInfo_t;

typedef struct {
	char		shader[MAX_QPATH];
	int			surfaceFlags;
	int			contentFlags;
} q3_dShader_t;

// planes (x&~1) and (x&~1)+1 are always opposites
typedef struct {
	float		normal[3];
	float		dist;
	int			type;		// PLANE_X - PLANE_ANYZ ?remove? trivial to regenerate
} q2_dPlane_t;

// planes x^1 is always the opposite of plane x
typedef struct {
	float		normal[3];
	float		dist;
} q3_dPlane_t;

typedef struct {
	int			planeNum;
	int			children[2];	// negative numbers are -(leafs+1), not nodes
	short		mins[3];		// for frustom culling
	short		maxs[3];
	unsigned short	firstface;
	unsigned short	numfaces;	// counting both sides
} q2_dNode_t;

typedef struct {
	int			planeNum;
	int			children[2];	// negative numbers are -(leafs+1), not nodes
	int			mins[3];		// for frustom culling
	int			maxs[3];
} q3_dNode_t;

typedef struct {
	int				contents;			// OR of all brushes (not needed?)

	short			cluster;
	short			area;

	short			mins[3];			// for frustum culling
	short			maxs[3];

	unsigned short	firstLeafSurface;
	unsigned short	numLeafSurfaces;

	unsigned short	firstLeafBrush;
	unsigned short	numLeafBrushes;
} q2_dLeaf_t;

typedef struct {
	int			cluster;			// -1 = opaque cluster (do I still store these?)
	int			area;

	int			mins[3];			// for frustum culling
	int			maxs[3];

	int			firstLeafSurface;
	int			numLeafSurfaces;

	int			firstLeafBrush;
	int			numLeafBrushes;
} q3_dLeaf_t;

typedef struct {
	unsigned short	planeNum;		// facing out of the leaf
	short			texInfo;
} q2_dBrushSide_t;

typedef struct {
	int			planeNum;			// positive plane side faces out of the leaf
	int			shaderNum;
} q3_dBrushSide_t;

typedef struct {
	int				firstSide;
	int				numSides;
	int				contents;
} q2_dBrush_t;

typedef struct {
	int			firstSide;
	int			numSides;
	int			shaderNum;		// the shader that determines the contents flags
} q3_dBrush_t;

typedef struct {
	char		shader[MAX_QPATH];
	int			brushNum;
	int			visibleSide;	// the brush side that ray tests need to clip against (-1 == none)
} q3_dFog_t;

typedef struct {
	vec3_t		xyz;
	float		st[2];
	float		lightmap[2];
	vec3_t		normal;
	byte		color[4];
} drawVert_t;

#define drawVert_t_cleared(x) drawVert_t (x) = {{0, 0, 0}, {0, 0}, {0, 0}, {0, 0, 0}, {0, 0, 0, 0}}

typedef enum {
	MST_BAD,
	MST_PLANAR,
	MST_PATCH,
	MST_TRIANGLE_SOUP,
	MST_FLARE
} mapSurfaceType_t;

typedef struct {
	int			shaderNum;
	int			fogNum;
	int			surfaceType;

	int			firstVert;
	int			numVerts;

	int			firstIndex;
	int			numIndexes;

	int			lightmapNum;
	int			lightmapX, lightmapY;
	int			lightmapWidth, lightmapHeight;

	vec3_t		lightmapOrigin;
	vec3_t		lightmapVecs[3];	// for patches, [0] and [1] are lodbounds

	int			patchWidth;
	int			patchHeight;
} q3_dSurface_t;

//qlbsp: from wolfcamql
typedef struct {
	int			cellId;
	vec3_t		normal;
	vec3_t		rect[4];
	char		model[MAX_QPATH];
} q3_dAdvertisement_t;
//-qlbsp

// =========================
// QUAKE 2
// =========================

typedef struct {
	float		mins[3], maxs[3];
	float		origin[3];		// for sounds or lights
	int			headnode;
	int			firstface, numfaces;	// submodels just draw faces
										// without walking the bsp tree
} q2_dModel_t;

typedef struct {
	float		point[3];
} q2_dVertex_t;

// note that edge 0 is never used, because negative edge nums are used for
// counterclockwise use of the edge in a face
typedef struct {
	unsigned short	v[2];		// vertex numbers
} q2_dEdge_t;

#define	MAXLIGHTMAPS	4
typedef struct {
	unsigned short	planenum;
	short			side;

	int				firstedge;		// we must support > 64k edges
	short			numedges;
	short			texinfo;

	// lighting info
	byte			styles[MAXLIGHTMAPS];
	int				lightofs;		// start of [numstyles*surfsize] samples
} q2_dFace_t;

// the visibility lump consists of a header with a count, then
// byte offsets for the PVS and PHS of each cluster, then the raw
// compressed bit vectors
#define	DVIS_PVS	0
#define	DVIS_PHS	1
typedef struct {
	int				numclusters;
	int				bitofs[8][2];	// bitofs[numclusters][2]
} q2_dVis_t;

// each area has a list of portals that lead into other areas
// when portals are closed, other areas may not be visible or
// hearable even if the vis info says that it should be
typedef struct {
	int		portalnum;
	int		otherarea;
} q2_dAreaPortal_t;

typedef struct {
	int		numareaportals;
	int		firstareaportal;
} q2_dArea_t;
#endif
