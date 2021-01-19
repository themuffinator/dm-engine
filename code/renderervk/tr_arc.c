#include "tr_local.h"
// tr_arc.c -- UI aspect ratio correction hacks
#define MAX_ELEMENTS	2048
#define MAX_GROUPS		256

#define Y_ALIGN_TOP		0
#define Y_ALIGN_MID		1
#define Y_ALIGN_BOT		2

#define X_ALIGN_LEFT	0
#define X_ALIGN_CENTER	1
#define X_ALIGN_RIGHT	2

#define PARM_UNAVAILABLE	-999

#if 0
typedef struct aspectCorrectElement_s {
	int			num;
	float		x;
	float		y;
	float		w;
	float		h;
	float		x_origin;
	float		y_origin;
	float		adj_x;
	float		adj_y;
	float		adj_w;
	float		adj_h;
	int			alignment;
	char		*shaderName;
	int			eGroup;	// eGroup = 0 is ungrouped
	qboolean	eAdjusted;
	int			time;			// time element was registered
} aspectCorrectElement_t;

typedef struct aspectCorrectGroup_s {
	float		x;			// raw x
	float		y;			// raw y
	float		w;			// raw w
	float		h;			// raw h
	float		adj_x;		// arc adjusted x
	float		adj_y;		// arc adjusted y
	float		adj_w;		// arc adjusted w
	float		adj_h;		// arc adjusted h
	float		x_origin;
	float		y_origin;
	int			alignment;
	char		*shaderGroup;
	int			group_num;
	int			total_elements;
	qboolean	modified;
} aspectCorrectGroup_t;

typedef struct aspectCorrect_s {
	qboolean 				initialized;
	
	aspectCorrectElement_t	*element[MAX_ELEMENTS];
	aspectCorrectGroup_t	*group[MAX_GROUPS];
	
	int						total_elements;
	int						total_groups;
} aspectCorrect_t;
aspectCorrect_t *arc;

/*
=============
RE_CorrectGroupElements
=============
*/
static qboolean RE_AdjustGroupElements( aspectCorrectGroup_t *group ) {
	int i;

	for ( i = 0 ; i < MAX_ELEMENTS ; i++ ) {
		aspectCorrectElement_t *e1 = arc->element[i];

		if ( e1->eGroup != group->group_num ) continue;
		if ( e1->time < 100 ) continue;
		if ( e1->eAdjusted && !group->modified ) continue;

		// first position the element correctly within the group bounds
		// then adjust it accordingly

		
	}
}


/*
=============
RE_UpdateGroup

Realign elements within group
=============
*/
static void RE_UpdateGroup( aspectCorrectGroup_t *group ) {
	aspectCorrectElement_t *element;
	int i;

	if (!group->modified) return qfalse;

	// realign elements within group boundaries

	element = arc->element[0];
	for (i = 0; i < sizeof(element); *element++, i++) {
		if (element->eGroup != group->group_num) continue;
		if (element->time < 100) continue;

		//push x into position
		element->adj_x += group->adj_x;
	}
	group->modified = qfalse;
}


/*
=============
RE_AddElementToGroup
=============
*/
static void RE_AddElementToGroup( aspectCorrectElement_t *element, int group ) {
	qboolean group_adjust = qfalse;

	if ( !group ) {
		group = arc->total_groups;
	}

	// register the group if it doesn't exist
	if ( !arc->total_groups || !arc->group[group]->total_elements ) {
		arc->total_groups++;
		group = arc->total_groups;

		arc->group[group]->x = PARM_UNAVAILABLE;
		arc->group[group]->w = PARM_UNAVAILABLE;
		arc->group[group]->y = PARM_UNAVAILABLE;
		arc->group[group]->h = PARM_UNAVAILABLE;
		arc->group[group]->modified = qfalse;
	}

	element->eGroup = group;
	arc->group[group]->total_elements++;

	// adjust group boundaries
	if ( arc->group[group]->x == PARM_UNAVAILABLE || element->x < arc->group[group]->x ) {
		arc->group[group]->x = element->x;
		group_adjust = qtrue;
	}
	if ( arc->group[group]->y == PARM_UNAVAILABLE || element->y < arc->group[group]->y ) {
		arc->group[group]->y = element->y;
		//group_adjust = qtrue;
	}
	if ( arc->group[group]->w == PARM_UNAVAILABLE || element->w > arc->group[group]->w ) {
		arc->group[group]->w = element->w;
		group_adjust = qtrue;
	}
	if ( arc->group[group]->h == PARM_UNAVAILABLE || element->h > arc->group[group]->h ) {
		arc->group[group]->h = element->h;
		//group_adjust = qtrue;
	}

	// recalculate group origin
	if ( group_adjust ) {
		arc->group[group]->x_origin = arc->group[group]->x + ( (arc->group[group]->w - arc->group[group]->x) / 2 );
		arc->group[group]->y_origin = arc->group[group]->y + ( (arc->group[group]->h - arc->group[group]->y) / 2 );

		// adjust for widescreen
		arc->group[group]->adj_x = arc->group[group]->x;
		arc->group[group]->adj_x /= (glConfig.vidWidth/640.0);
		arc->group[group]->adj_x *= (glConfig.vidHeight/480.0);
		arc->group[group]->adj_w = arc->group[group]->w;
		arc->group[group]->adj_w /= (glConfig.vidWidth/640.0);
		arc->group[group]->adj_w *= (glConfig.vidHeight/480.0);

		// TODO: get group screen alignment
		// aligned central
		if ( arc->group[group]->x_origin >= (float)glConfig.vidWidth/2-1 &&
				arc->group[group]->x_origin <= (float)glConfig.vidWidth/2+1 ) {
			arc->group[group]->adj_x += ( arc->group[group]->w - arc->group[group]->adj_w ) / 2;

		// aligned left
		} else if ( arc->group[group]->x_origin < (float)glConfig.vidWidth/2 ) {
			arc->group[group]->adj_x += arc->group[group]->x;

		// aligned right
		} else if ( arc->group[group]->x_origin > (float)glConfig.vidWidth/2 ) {
			arc->group[group]->adj_x += arc->group[group]->x + ( arc->group[group]->w - arc->group[group]->adj_w );
		}
		
		arc->group[group]->modified = qtrue;
	}

}


/*
=============
RE_AssignElementsToGroup
=============
*/
static void RE_AssignElementsToGroup( aspectCorrectElement_t *ea ) {
	int			i, y_align;
	qboolean	to_group = qfalse;

	// work through previously registered elements
	for ( i = ea->num - 1 ; i >= 0 ; i-- ) {
		aspectCorrectElement_t *eb = arc->element[i];

		if ( ea->y == eb->y ) {	// aligned top
			y_align = Y_ALIGN_TOP;
			to_group = qtrue;
		} else if ( ea->y_origin == eb->y_origin ) {	// aligned mid
			y_align = Y_ALIGN_MID;
			to_group = qtrue;
		} else if ( ea->y + ea->h == eb->y + eb->h ) {	// aligned bottom
			y_align = Y_ALIGN_BOT;
			to_group = qtrue;
		}

		// form/extend group

		if ( !to_group ) break;

		if ( !eb->eGroup ) {
			RE_AddElementToGroup( eb, arc->group[0] );
		}
		if ( ea->eGroup != eb->eGroup ) {
			RE_AddElementToGroup( ea, eb->eGroup );
		}

	}
}


/*
=============
RE_FindRegisteredElement
=============
*/
static int RE_FindRegisteredElement( float x, float y, float w, float h, char *shaderName ) {
	int i;
	
	for ( i = 0 ; i <= arc->total_elements ; i++ ) {
		if ( x != arc->element[i]->x ) continue;
		if ( y != arc->element[i]->y ) continue;
		if ( w != arc->element[i]->w ) continue;
		if ( h != arc->element[i]->h ) continue;
		if ( strcmp(shaderName, arc->element[i]->shaderName) ) continue;
		return i;
	}
	
	// not registered
	return -1;
}


/*
=============
RE_RegisterElement
=============
*/
static qboolean RE_RegisterElement(float *x, float *y, float *w, float *h, char *shaderName) {
	float 	oldW = w;
	int 	index;
	
	// check whether the element is registered, if not then register it
	index = RE_FindRegisteredElement(x, y, w, h, shaderName);
	
	if ( index < 0 ) {	// has not been registered

		// cannot be registered if we're at limit
		if ( arc->total_elements >= MAX_ELEMENTS )
			return qfalse;

		arc->total_elements++;
	
		memset(arc->element[arc->total_elements], 0, arc->element[arc->total_elements]);
		arc->element[arc->total_elements]->x = *x;
		arc->element[arc->total_elements]->y = *y;
		arc->element[arc->total_elements]->w = *w;
		arc->element[arc->total_elements]->h = *h;
		arc->element[arc->total_elements]->x_origin = x + (w / 2);
		arc->element[arc->total_elements]->y_origin = y + (h / 2);
		arc->element[arc->total_elements]->shaderName = shaderName;
		arc->element[arc->total_elements]->num = arc->total_elements;
		arc->element[arc->total_elements]->time = tr.refdef.time;

		RE_AssignElementsToGroup(arc->element[arc->total_elements]);
	}

	return qtrue;
}

#endif

/*
=============
RE_ScaleCorrection

Correct scaling and positioning for elements
=============
*/
void RE_ScaleCorrection( float *x, float *y, float *w, float *h, char *shaderName, const qboolean adjust, const int forceMode ) {
	int mode = (forceMode >= 0) ? forceMode : r_arc_uiMode->integer;

	//Com_Printf( "RE_ScaleCorrection() x:%f y:%f w:%f h:%f\n", *x, *y, *w, *h );
	if ( !mode ) return;
	else {
		const float aratio = (float)glConfig.vidWidth/(float)glConfig.vidHeight;
		//const qboolean widescreen = (aratio > 1.3334) ? qtrue : qfalse;
		//const qboolean tallscreen = (aratio < 0.75) ? qtrue : qfalse;
		float mx, my, mw, mh;

		mx = (float)*x;
		my = (float)*y;
		mw = (float)*w;
		mh = (float)*h;

		//Com_Printf( "RE_ScaleCorrection(): mx:%f my:%f mw:%f mh:%f\n", mx, my, mw, mh );

		switch ( mode ) {
		case 1:	// uniform fit to shorter side
			{
				if ( aratio > 1.0 ) {
					mw /= ((float)glConfig.vidWidth/640.0);
					mw *= ((float)glConfig.vidHeight/480.0);
					mx /= ((float)glConfig.vidWidth/640.0);
					mx *= ((float)glConfig.vidHeight/480.0);
					mx += ( (glConfig.vidWidth - (640.0 * ((float)glConfig.vidHeight/480.0)))/2 );
				} else {
					mh /= ((float)glConfig.vidHeight/480.0);
					mh *= ((float)glConfig.vidWidth/640.0);
					my /= ((float)glConfig.vidWidth/480.0);
					my *= ((float)glConfig.vidWidth/640.0);
					my += ( (glConfig.vidHeight - (480.0 * ((float)glConfig.vidWidth/640.0)))/2 );
				}
			}
			break;
		case 2:	// screen adjusted uniform scale
			{
				//not correct atm, just for testing...
				if ( aratio > 1.0 ) {
					float oldW = mw;
					
					mw /= ((float)glConfig.vidWidth/640.0);
					mw *= ((float)glConfig.vidHeight/480.0);
					
					mx += ( oldW - mw ) / 2;
				} else {
					float oldH = mh;

					mh /= ((float)glConfig.vidHeight/480.0);
					mh *= ((float)glConfig.vidWidth/640.0);
					
					my += ( oldH - mh ) / 2;
				}
			}
			break;
		default:	// screen-adjusted uniform scaling
			{
				//not correct atm, just for testing...
				if ( aratio > 1.0 ) {
					float oldW = mw;
					
					mw /= ((float)glConfig.vidWidth/640.0);
					mw *= ((float)glConfig.vidHeight/480.0);
					
					mx += ( oldW - mw ) / 2;
				} else {
					float oldH = mh;

					mh /= ((float)glConfig.vidHeight/480.0);
					mh *= ((float)glConfig.vidWidth/640.0);
					
					my += ( oldH - mh ) / 2;
				}
#if 0
				RE_RegisterElement(*x, *y, *w, *h, *shaderName);
#endif
			}
			break;
		}
		
		*x = mx;
		*y = my;
		*w = mw;
		*h = mh;
		
	}
}


/*
=============
RE_StretchAspectPic
=============
*/
void RE_StretchAspectPic( float x, float y, float w, float h, 
					  float s1, float t1, float s2, float t2, qhandle_t hShader, const qboolean cgame ) {
	stretchPicCommand_t	*cmd;
	const char *mod = ri.Cvar_VariableString("fs_game");

	if ( !tr.registered ) return;
	cmd = R_GetCommandBuffer( sizeof(*cmd) );
	if ( !cmd ) return;
	cmd->commandId = RC_STRETCH_PIC;
	
	cmd->shader = R_GetShaderByHandle( hShader );

	if ( (backEnd.refdef.rdflags & RDF_HYPERSPACE) ) {
		goto shader_parms;
	}
	
	if ( !cgame && !strstr(cmd->shader->name, "ui/assets/") ) {
		if ( !Q_stricmp(mod, "threewave") && r_arc_threewave_menu_fix->integer ) {
			switch ( r_arc_threewave_menu_fix->integer ) {
			case 1:
				x -= ((float)glConfig.vidWidth - ((640.0f) * ((float)glConfig.vidHeight/480.0f)))/2;
				break;
			default:
				w /= ((float)glConfig.vidWidth/640.0);
				w *= ((float)glConfig.vidHeight/480.0);
				x /= ((float)glConfig.vidWidth/640.0);
				x *= ((float)glConfig.vidHeight/480.0);
				break;
			}
		}
		goto shader_parms;
	}
	// detect crosshairs and fix aspect
	else if ( strstr(cmd->shader->name, "crosshair") && r_arc_crosshairs->integer ) {
		float oldW = w;
		
		// excessive dawn already adjusts crosshairs for widescreen
		if ( Q_stricmp(mod, "edawn") && Q_stricmp(mod, "excessiveplus") ) {
			w /= (glConfig.vidWidth/640.0);
			w *= (glConfig.vidHeight/480.0);
			
			x += ( oldW - w ) / 2;
		}
	}
	
	// detect elements and fix aspect
	// uniform fit
	else if ( /*!strstr(cmd->shader->name, "levelshots") && */Q_stricmp(mod, "cpma") && (w < glConfig.vidWidth && h < glConfig.vidHeight) ) {
		if (/* (w == glConfig.vidWidth && h == glConfig.vidHeight) && */r_arc_uiMode->integer == 1 ) {
			//Com_Printf( "RE_StretchAspectPic() arcMode 1: x:%f y:%f w:%f h:%f\n", x, y, w, h );
			RE_ScaleCorrection( &x, &y, &w, &h, cmd->shader->name, X_ALIGN_CENTER, -1 );
		}
		// uniform fill
		else if (/* (w == glConfig.vidWidth && h == glConfig.vidHeight) && */r_arc_uiMode->integer > 1 ) {
			RE_ScaleCorrection( &x, &y, &w, &h, cmd->shader->name, X_ALIGN_CENTER, -1 );
		}
	}
#if 0
	else if ( w != glConfig.vidWidth && h != glConfig.vidHeight && r_arc_uiMode->integer ) {	//if ( strstr(cmd->shader->name, "char") ) {

		// register element and form element groups
		if ( !RE_RegisterElement(x, y, w, h, cmd->shader->name) ) goto shader_parms;

		// arc can only be applied in the next frame
		// when all element groups are completed for the frame
		// for now it's probably best to hide the un-adjusted mess
		return;
	}
#endif
shader_parms:
	cmd->x = x;
	cmd->y = y;
	cmd->w = w;
	cmd->h = h;
	cmd->s1 = s1;
	cmd->t1 = t1;
	cmd->s2 = s2;
	cmd->t2 = t2;
}
