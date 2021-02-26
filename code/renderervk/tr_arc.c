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

#define SCR_NONE 0

#define SCR_LEFT 1
#define SCR_MID 2
#define SCR_RIGHT 3

#define SCR_V_TOP 4
#define SCR_V_MID 5
#define SCR_V_BOTTOM 6


/*
=============
RE_ScrCoordToAlign

Check coordinates to check if left/right screen space should be applied. Uses 640x480.
=============
*/
static int RE_ScrCoordToAlign( const qboolean vertical, const int x1, const int y1, const int x2, const int y2 ) {
	if ( vertical ) {
		if ( r_arc_region_top_x1->integer || r_arc_region_top_x2->integer ||
			r_arc_region_top_y1->integer || r_arc_region_top_y2->integer ) {
			if ( x2 <= r_arc_region_top_x2->integer && y2 <= r_arc_region_top_y2->integer
				&& x1 >= r_arc_region_top_x1->integer && y1 >= r_arc_region_top_y1->integer ) {
				//Com_Printf( "x1=%i y1=%i x2=%i y2=%i --> TOP\n", x1, y1, x2, y2 );
				return SCR_V_TOP;
			}
		}

		if ( r_arc_region_bottom_x1->integer || r_arc_region_bottom_x2->integer ||
			r_arc_region_bottom_y1->integer || r_arc_region_bottom_y2->integer ) {
			if ( x2 <= r_arc_region_bottom_x2->integer && y2 <= r_arc_region_bottom_y2->integer
				&& x1 >= r_arc_region_bottom_x1->integer && y1 >= r_arc_region_bottom_y1->integer ) {
				//Com_Printf( "x1=%i y1=%i x2=%i y2=%i --> BOTTOM\n", x1, y1, x2, y2 );
				return SCR_V_BOTTOM;
			}
		}

		return SCR_V_MID;
	}

	if ( r_arc_region_left_x1->integer || r_arc_region_left_x2->integer ||
			r_arc_region_left_y1->integer || r_arc_region_left_y2->integer ) {
		if ( x2 <= r_arc_region_left_x2->integer && y2 <= r_arc_region_left_y2->integer
			&& x1 >= r_arc_region_left_x1->integer && y1 >= r_arc_region_left_y1->integer ) {
			//Com_Printf( "x1=%i y1=%i x2=%i y2=%i --> LEFT\n", x1, y1, x2, y2 );
			return SCR_LEFT;
		}
	}

	if ( r_arc_region_right_x1->integer || r_arc_region_right_x2->integer ||
			r_arc_region_right_y1->integer || r_arc_region_right_y2->integer ) {
		if ( x2 <= r_arc_region_right_x2->integer && y2 <= r_arc_region_right_y2->integer
			&& x1 >= r_arc_region_right_x1->integer && y1 >= r_arc_region_right_y1->integer ) {
			//Com_Printf( "x1=%i y1=%i x2=%i y2=%i --> RIGHT\n", x1, y1, x2, y2 );
			return SCR_RIGHT;
		}
	}

	return SCR_MID;
}


/*
=============
RE_ScaleCorrection

Correct scaling and positioning for elements
=============
*/
void RE_ScaleCorrection( float *x, float *y, float *w, float *h, char *shaderName, const qboolean adjust, const int forceMode ) {
	const int mode = ( forceMode >= 0 ) ? forceMode : r_arc_uiMode->integer;

	//Com_Printf( "RE_ScaleCorrection() x:%f y:%f w:%f h:%f\n", *x, *y, *w, *h );
	if ( !mode || backEnd.isHyperspace || ( backEnd.refdef.rdflags & RDF_HYPERSPACE ) ) return;
	else {
		float xScale, yScale;
		float mx, my, mw, mh;

		mx = (float)*x;
		my = (float)*y;
		mw = (float)*w;
		mh = (float)*h;

		xScale = ( (float)glConfig.vidWidth / 640.0 );
		yScale = ( (float)glConfig.vidHeight / 480.0 );

		// no adjustments needed for 4:3
		if ( xScale == yScale ) return;

		//Com_Printf( "RE_ScaleCorrection(): mx:%f my:%f mw:%f mh:%f\n", mx, my, mw, mh );

		switch ( mode ) {
		case 1:	// uniform fit to screen
			{
				if ( xScale > yScale ) {	// wide aspect - scale x w to height
					if ( mx ) {
						mx /= xScale;
						mx *= yScale;
						mx += ( glConfig.vidWidth - ( 640.0 * yScale ) ) * 0.5;
					}
					if ( mw ) {
						mw /= xScale;
						mw *= yScale;
					}
				} else {	// narrow/tall aspect - scale h to width
					if ( my ) {
						my /= yScale;
						my *= xScale;
						my += ( glConfig.vidHeight - ( 480.0 * xScale ) ) * 0.5;
					}
					if ( mh ) {
						mh /= yScale;
						mh *= xScale;
					}
				}
				break;
			}
		case 2:	// screen adjusted uniform scale
			{
				if ( xScale > yScale ) {	// wide aspect
					int sAlign;

					// revert to 640x480
					if ( mx ) mx /= xScale;
					if ( mw ) mw /= xScale;

					// determine horizontal screen space alignment
					sAlign = RE_ScrCoordToAlign( qfalse, mx, my, mx + mw, my + mh );

					// scale back up uniformly
					mx *= yScale;
					mw *= yScale;

					// adjust horizontal position
					switch ( sAlign ) {
					case SCR_MID:
						mx += ( glConfig.vidWidth - ( 640.0f * yScale ) ) * 0.5f;
						break;
					case SCR_RIGHT:
						mx += glConfig.vidWidth - ( 640.0f * yScale );
						break;
					default: //SCR_LEFT
						break;
					}
				} else {	//narrow/tall aspect
					int sAlign;

					// revert to 640x480
					if ( my ) my /= yScale;
					if ( mh ) mh /= yScale;

					// determine horizontal screen space alignment
					sAlign = RE_ScrCoordToAlign( qtrue, mx, my, mx + mw, my + mh );

					// scale back up uniformly
					if ( my ) my *= xScale;
					if ( mh ) mh *= xScale;

					// adjust horizontal position
					switch ( sAlign ) {
					case SCR_V_MID:
						my += ( glConfig.vidHeight - ( 480.0f * xScale ) ) * 0.5f;
						break;
					case SCR_V_BOTTOM:
						my += glConfig.vidHeight - ( 480.0f * xScale );
						break;
					default: //SCR_V_TOP
						break;
					}
				}
				break;
			}

		default: break;
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

	if ( backEnd.isHyperspace || ( backEnd.refdef.rdflags & RDF_HYPERSPACE ) ) {
		goto shader_parms;
	}
	
	if ( !cgame && !strstr(cmd->shader->name, "ui/assets/") ) {
		if ( !Q_stricmp( ri.Cvar_VariableString( "fs_game" ), "threewave" ) && r_arc_threewave_menu_fix->integer ) {
			float xScale = glConfig.vidWidth / 640.0;
			float yScale = glConfig.vidHeight / 480.0;

			switch ( r_arc_threewave_menu_fix->integer ) {
			case 1:
				x -= ( (float)glConfig.vidWidth - ( ( 640.0f ) * ( (float)glConfig.vidHeight / 480.0f ) ) ) / 2;
				break;
			default:
				//x -= ( (float)glConfig.vidWidth - ( ( 640.0f ) * ( (float)glConfig.vidHeight / 480.0f ) ) ) / 2;

				//x *= xScale;
				//y /= yScale;
				//w /= xScale;
				//w *= ( 640.0f / (float)glConfig.vidWidth );
				w /= xScale;
				w *= yScale;
				//x += ( (float)glConfig.vidWidth - ( 640.0f * yScale ) ) * 0.5;
				x /= xScale;
				x *= yScale;
				//h /= yScale;
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
