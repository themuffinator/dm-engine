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

/*
=============
RE_ScaleCorrection

Correct scaling and positioning for elements
=============
*/
void RE_ScaleCorrection( float *x, float *y, float *w, float *h, char *shaderName, const qboolean adjust, const int forceMode ) {
	int mode = (forceMode >= 0) ? forceMode : r_arc_uiMode->integer;

	//Com_Printf( "RE_ScaleCorrection() x:%f y:%f w:%f h:%f\n", *x, *y, *w, *h );
	if ( !mode || backEnd.isHyperspace || ( backEnd.refdef.rdflags & RDF_HYPERSPACE ) ) return;
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

	if ( !tr.registered ) return;
	cmd = R_GetCommandBuffer( sizeof(*cmd) );
	if ( !cmd ) return;
	cmd->commandId = RC_STRETCH_PIC;
	
	cmd->shader = R_GetShaderByHandle( hShader );

	if ( backEnd.isHyperspace || ( backEnd.refdef.rdflags & RDF_HYPERSPACE ) ) {
		goto shader_parms;
	}
	
	if ( !cgame && !strstr(cmd->shader->name, "ui/assets/") ) {
		if ( !Q_stricmp(ri.Cvar_VariableString("fs_game"), "threewave") && r_arc_threewave_menu_fix->integer ) {
			float xScale = glConfig.vidWidth / 640.0;
			float yScale = glConfig.vidHeight / 480.0;

			switch ( r_arc_threewave_menu_fix->integer ) {
			case 1:
				x -= ((float)glConfig.vidWidth - ((640.0f) * ((float)glConfig.vidHeight/480.0f)))/2;
				break;
			default:
				//x -= ( (float)glConfig.vidWidth - ( ( 640.0f ) * ( (float)glConfig.vidHeight / 480.0f ) ) ) / 2;

				//x *= xScale;
				//y /= yScale;
				//w /= xScale;
				//w *= ( 640.0f / (float)glConfig.vidWidth );
				w /= xScale;
				w *= yScale;
				x += ( (float)glConfig.vidWidth - ( 640.0f * yScale ) ) * 0.5;
				//x /= xScale;
				//x *= yScale;
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
		if ( Q_stricmp(ri.Cvar_VariableString("fs_game"), "edawn")
				&& Q_stricmp(ri.Cvar_VariableString("fs_game"), "excessiveplus") ) {
			w /= (glConfig.vidWidth/640.0);
			w *= (glConfig.vidHeight/480.0);
			
			x += ( oldW - w ) / 2;
		}
	}
	
	// detect elements and fix aspect
	// uniform fit
	else if ( /*!strstr(cmd->shader->name, "levelshots") && */(w < glConfig.vidWidth && h < glConfig.vidHeight) ) {
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
