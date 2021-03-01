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

#if 0
#define	MAX_UIADJ_VARS			64
#define	MAX_UIADJ_VARS_CHARS		4096

typedef struct {
	char		*uiAdjStr;
	char		*uiAdjParsePoint;

	qboolean	adjust;

	int			numUIAdjVars;
	char		*sRegVars[MAX_UIADJ_VARS][2];
	int			numUIAdjVarChars;
	char		sRegVarChars[MAX_UIADJ_VARS_CHARS];
} uiaVars;
uiaVars	uia;


void RE_UIAdjust_Load( void ) {
	union {
		char *c;
		void *v;
	} f;
	char filename[MAX_QPATH];

	Q_strncpyz( filename, Cmd_Argv( 1 ), sizeof( filename ) );
	COM_DefaultExtension( filename, sizeof( filename ), ".tok" );
	FS_BypassPure();
	FS_ReadFile( filename, &f.v );
	FS_RestorePure();
	if ( f.v == NULL ) {
		Com_Printf( "Couldn't load %s\n", filename );
		return;
	}
	Com_Memcpy( f.c, uia.uiAdjStr, strlen( f.c ) );

	uia.uiAdjParsePoint = uia.uiAdjStr;

	FS_FreeFile( f.v );
}


/*
=================
RE_GetUIAdjToken
=================
*/
qboolean RE_GetUIAdjToken( char *buffer, int size ) {
	const char *s;

	s = COM_Parse( &uia.uiAdjParsePoint );
	Q_strncpyz( buffer, s, size );
	if ( !uia.uiAdjParsePoint && !s[0] ) {
		uia.uiAdjParsePoint = uia.uiAdjStr;
		return qfalse;
	} else {
		return qtrue;
	}
}

/*
====================
RE_AddUIAdjVarToken

====================
*/
char *RE_AddUIAdjVarToken( const char *string ) {
	int		l = (int)strlen( string );
	char *dest;

	if ( uia.numUIAdjVarChars + l + 1 > MAX_UIADJ_VARS_CHARS ) {
		ri.Error( ERR_DROP, "%s: MAX_UIADJ_VARS_CHARS", __func__ );
	}

	dest = uia.sRegVarChars + uia.numUIAdjVarChars;
	memcpy( dest, string, l + 1 );

	uia.numUIAdjVarChars += l + 1;

	return dest;
}

/*
====================
RE_ParseUIAdjVars

====================
*/
qboolean RE_ParseUIAdjVars( void ) {
	char		keyname[MAX_TOKEN_CHARS];
	char		com_token[MAX_TOKEN_CHARS];

	uia.numUIAdjVars = 0;
	uia.numUIAdjVarChars = 0;

	// parse the opening brace
	if ( !RE_GetUIAdjToken( com_token, sizeof( com_token ) ) ) {
		// end of spawn string
		return qfalse;
	}
	if ( com_token[0] != '{' ) {
		ri.Error( ERR_DROP, "%s: found %s when expecting {", __func__, com_token );
	}

	// go through all the key / value pairs
	while ( 1 ) {
		// parse key
		if ( !RE_GetUIAdjToken( keyname, sizeof( keyname ) ) ) {
			ri.Error( ERR_DROP, "%s: EOF without closing brace.", __func__ );
		}

		if ( keyname[0] == '}' ) {
			break;
		}

		// parse value	
		if ( !RE_GetUIAdjToken( com_token, sizeof( com_token ) ) ) {
			ri.Error( ERR_DROP, "%s: EOF without closing brace.", __func__ );
		}

		if ( com_token[0] == '}' ) {
			ri.Error( ERR_DROP, "%s: Closing brace without data.", __func__ );
		}
		if ( uia.numUIAdjVars == MAX_UIADJ_VARS ) {
			ri.Error( ERR_DROP, "%s: MAX_UIADJ_VARS", __func__ );
		}
		uia.sRegVars[uia.numUIAdjVars][0] = RE_AddUIAdjVarToken( keyname );
		uia.sRegVars[uia.numUIAdjVars][1] = RE_AddUIAdjVarToken( com_token );
		uia.numUIAdjVars++;
	}

	return qtrue;
}


qboolean	G_SpawnString( const char *key, const char *defaultString, char **out ) {
	int		i;

	if ( !level.spawning ) {
		*out = (char *)defaultString;
		//		G_Error( "G_SpawnString() called while not spawning" );
	}

	for ( i = 0; i < level.numSpawnVars; i++ ) {
		if ( !Q_stricmp( key, level.spawnVars[i][0] ) ) {
			*out = level.spawnVars[i][1];
			return qtrue;
		}
	}

	*out = (char *)defaultString;
	return qfalse;
}

qboolean	G_SpawnFloat( const char *key, const char *defaultString, float *out ) {
	char *s;
	qboolean	present;

	present = G_SpawnString( key, defaultString, &s );
	*out = atof( s );
	return present;
}

qboolean	G_SpawnInt( const char *key, const char *defaultString, int *out ) {
	char *s;
	qboolean	present;

	present = G_SpawnString( key, defaultString, &s );
	*out = atoi( s );
	return present;
}

qboolean	G_SpawnVector( const char *key, const char *defaultString, float *out ) {
	char *s;
	qboolean	present;

	present = G_SpawnString( key, defaultString, &s );
	Q_sscanf( s, "%f %f %f", &out[0], &out[1], &out[2] );
	return present;
}

#define	FOFS(x) ((intptr_t)&(((gentity_t *)0)->x))

typedef enum {
	F_REGION,			// x1 y1 x2 y2
	F_RANGE,			// min max
	F_INT,
	F_STRING,

	F_IGNORE
} fieldtype_t;

typedef struct {
	const char *name;
	int			ofs;
	fieldtype_t	type;
} field_t;

const field_t fields[] = {
	{ "test_region", FOFS( classname ), F_REGION },
	{ "test_width", FOFS( model ), F_RANGE },
	{ "test_height", FOFS( s.origin ), F_RANGE },
	{ "test_shader", FOFS( model2 ), F_STRING },
	{ "adjust_screen", FOFS( spawnflags ), F_INT },
	{ "adjust_scaling", FOFS( spawnflags ), F_INT },
	{ NULL }
};


typedef struct {
	char *name;
	void	( *spawn )( gentity_t *ent );
} spawn_t;


/*
===============
RE_ParseUIAdjField

Takes a key/value pair and sets the binary values
in a gentity
===============
*/
void RE_ParseUIAdjField( const char *key, const char *value, gentity_t *ent ) {
	const field_t	*f;
	byte			*b;
	float			v;
	vec3_t			vec;

	for ( f = fields; f->name; f++ ) {
		if ( !Q_stricmp( f->name, key ) ) {
			// found it
			b = (byte *)ent;

			switch ( f->type ) {
			case F_LSTRING:
				*(char **)( b + f->ofs ) = G_NewString( value );
				break;
			case F_VECTOR:
				Q_sscanf( value, "%f %f %f", &vec[0], &vec[1], &vec[2] );
				( (float *)( b + f->ofs ) )[0] = vec[0];
				( (float *)( b + f->ofs ) )[1] = vec[1];
				( (float *)( b + f->ofs ) )[2] = vec[2];
				break;
			case F_INT:
				*(int *)( b + f->ofs ) = atoi( value );
				break;
			case F_FLOAT:
				*(float *)( b + f->ofs ) = atof( value );
				break;
			case F_ANGLEHACK:
				v = atof( value );
				( (float *)( b + f->ofs ) )[0] = 0;
				( (float *)( b + f->ofs ) )[1] = v;
				( (float *)( b + f->ofs ) )[2] = 0;
				break;
			default:
			case F_IGNORE:
				break;
			}
			return;
		}
	}
}


/*
===================
RE_SetUIAdjFromVars

Spawn an entity and fill in all of the level fields from
uia.uiAdjVars[], then call the class specfic spawn function
===================
*/
void RE_SetUIAdjFromVars( void ) {
	int			i;
	//gentity_t *ent;
	char *s, *value, *gametypeName;

	// get the next free entity
	ent = G_Spawn();

	for ( i = 0; i < uia.numUIAdjVars; i++ ) {
		G_ParseField( uia.uiAdjVars[i][0], uia.uiAdjVars[i][1], ent );
	}

	// if we didn't get a classname, don't bother spawning anything
	if ( !G_CallSpawn( ent ) ) {
		G_FreeEntity( ent );
	}
}


/*
==============
RE_UIAdjFromString

==============
*/
void RE_UIAdjFromString( void ) {
	uia.adjust = qtrue;
	uia.numUIAdjVars = 0;

	if ( !RE_ParseUIAdjVars() ) {
		ri.Error( ERR_DROP, "%s: no screen adjustment vars.", __func__ );
	}

	// parse adjustment vars
	while ( RE_ParseUIAdjVars() ) {
		RE_SetUIAdjFromVars();
	}

	uia.adjust = qfalse;
}
#endif

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
void RE_ScaleCorrection( float *x, float *y, float *w, float *h, const int forceMode ) {
	const int mode = ( forceMode >= 0 ) ? forceMode : r_arc_uiMode->integer;

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
			RE_ScaleCorrection( &x, &y, &w, &h, -1 );
		}
		// uniform fill
		else if (/* (w == glConfig.vidWidth && h == glConfig.vidHeight) && */r_arc_uiMode->integer > 1 ) {
			RE_ScaleCorrection( &x, &y, &w, &h, -1 );
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
