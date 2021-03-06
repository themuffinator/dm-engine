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
// cl_scrn.c -- master for refresh, status bar, console, chat, notify, etc

#include "client.h"

qboolean	scr_initialized;		// ready to draw

cvar_t *cl_timeGraph;
cvar_t *cl_debugGraph;
cvar_t *cl_graphHeight;
cvar_t *cl_graphScale;
cvar_t *cl_graphShift;

/*
================
SCR_AdjustFrom640

Adjusted for resolution and screen aspect ratio
================
*/
void SCR_AdjustFrom640( float *x, float *y, float *w, float *h, const screenAdjustEnum_t scrAlign ) {
	float xScale, yScale;

	if ( scrAlign == SA_NONE ) return;

	// scale for screen sizes
	xScale = (float)cls.glconfig.vidWidth / 640.0f;
	yScale = cls.vidScale;

	// simply scale to screen boundaries if 4:3
	if ( xScale == yScale ) {
		if ( x ) *x *= xScale;
		if ( y ) *y *= yScale;
		if ( w ) *w *= xScale;
		if ( h ) *h *= yScale;
		return;
	}

	switch ( scrAlign ) {
	case SA_LEFT:
		if ( x ) *x *= yScale;
		if ( y ) *y *= yScale;
		if ( w ) *w *= yScale;
		if ( h ) *h *= yScale;
		break;
	case SA_CENTER:
		if ( x != NULL ) {
			*x *= yScale;
			*x += ( (float)cls.glconfig.vidWidth - (640.0f * yScale) ) * 0.5;
		}
		if ( y ) *y *= yScale;
		if ( w ) *w *= yScale;
		if ( h ) *h *= yScale;
		break;
	case SA_RIGHT:
		if ( x != NULL ) {
			*x *= yScale;
			*x += (float)cls.glconfig.vidWidth - ( 640.0f * yScale );
		}
		if ( y ) *y *= yScale;
		if ( w ) *w *= yScale;
		if ( h ) *h *= yScale;
		break;
	default:
		if ( x ) *x *= xScale;
		if ( y ) *y *= yScale;
		if ( w ) *w *= xScale;
		if ( h ) *h *= yScale;
		break;
	}
}

/*
================
SCR_FillRect

=================
*/
void SCR_FillRect( int x, int y, int width, int height, const float *color ) {
	re.SetColor( color );
	re.DrawStretchPic( x, y, width, height, 0, 0, 0, 0, cls.whiteShader );
	re.SetColor( NULL );
}


/*
================
SCR_DrawPic

=================
*/
void SCR_DrawPic( int x, int y, int width, int height, qhandle_t hShader ) {
	re.DrawStretchPic( x, y, width, height, 0, 0, 1, 1, hShader );
}


/*
================
SCR_DrawChar

=================
*/
static void SCR_DrawChar( int x, int y, int charWidth, int charHeight, int ch ) {
	int row, col;
	float frow, fcol;
	float	ax, ay, aw, ah;

	ch &= 255;

	if ( ch == ' ' ) {
		return;
	}

	if ( y < -charHeight ) {
		return;
	}

	ax = x;
	ay = y;
	aw = charWidth;
	ah = charHeight;
	SCR_AdjustFrom640( &ax, &ay, &aw, &ah, SA_NONE );

	row = ch >> 4;
	col = ch & 15;

	frow = row * 0.0625;
	fcol = col * 0.0625;

	re.DrawStretchPic( ax, ay, aw, ah,
		fcol, frow,
		fcol + 0.0625, frow + 0.0625,
		cls.charSetShader );
}


/*
** SCR_DrawSmallChar
** small chars are drawn at native screen resolution
*/
void SCR_DrawSmallChar( int x, int y, int ch ) {
	int		row, col;
	float	frow, fcol;
	float	size;

	ch &= 255;

	if ( ch == ' ' ) {
		return;
	}

	if ( y < -cls.smallchar_height ) {
		return;
	}

	row = ch >> 4;
	col = ch & 15;

	frow = row * 0.0625;
	fcol = col * 0.0625;
	size = 0.0625;
#if 0
	if ( ch == 10 )
		Com_Printf( "x=%f y=%f w=%i h=%i --> %i\n", x, y, cls.smallchar_width, cls.smallchar_height, (x-1)/cls.smallchar_width );
#endif
	re.DrawStretchPic( x, y, cls.smallchar_width, cls.smallchar_height,
		fcol, frow, fcol + size, frow + size, cls.charSetShader );
}


/*
** SCR_DrawSmallString
** small string are drawn at native screen resolution
*/
void SCR_DrawSmallString( int x, int y, const char *s, int len ) {
	int		row, col, ch, i;
	float	frow, fcol;
	float	size;
	int		aX, aY;

	if ( y < -cls.smallchar_height ) {
		return;
	}

	size = 0.0625;
	aX = x;
	aY = y;

	for ( i = 0; i < len; i++ ) {
		ch = *s++ & 255;
		row = ch >> 4;
		col = ch & 15;

		frow = row * size;
		fcol = col * size;

		re.DrawStretchPic( aX, aY, cls.smallchar_width, cls.smallchar_height,
			fcol, frow, fcol + size, frow + size,
			cls.charSetShader );

		aX += cls.smallchar_width;
	}
}


/*
==================
SCR_DrawStringExt

Draws a multi-colored string with a drop shadow, optionally forcing
to a fixed color.

Coordinates are at 640 by 480 virtual resolution
==================
*/
void SCR_DrawStringExt( int x, int y, int charWidth, int charHeight, const char *string, const float *setColor, qboolean forceColor, qboolean noColorEscape ) {
	vec4_t		color;
	const char	*s;
	int			xx;

	// draw the drop shadow
	color[0] = color[1] = color[2] = 0.0;
	color[3] = setColor[3];
	re.SetColor( color );
	s = string;
	xx = x;
	while ( *s ) {
		if ( !noColorEscape && Q_IsColorString( s ) ) {
			s += 2;
			continue;
		}
		SCR_DrawChar( xx + 2, y + 2, charWidth, charHeight, *s );
		xx += charWidth;
		s++;
	}

	// draw the colored text
	s = string;
	xx = x;
	re.SetColor( setColor );
	while ( *s ) {
		if ( Q_IsColorString( s ) ) {
			if ( !forceColor ) {
				Com_Memcpy( color, g_color_table[ColorIndexFromChar( *( s + 1 ) )], sizeof( color ) );
				color[3] = setColor[3];
				re.SetColor( color );
			}
			if ( !noColorEscape ) {
				s += 2;
				continue;
			}
		}
		SCR_DrawChar( xx, y, charWidth, charHeight, *s );
		xx += charWidth;
		s++;
	}
	re.SetColor( NULL );
}


/*
==================
SCR_DrawBigString

Draws a string with embedded color control characters with fade.
==================
*/
void SCR_DrawBigString( int x, int y, const char *s, float alpha, qboolean noColorEscape ) {
	float	color[4];

	color[0] = color[1] = color[2] = 1.0;
	color[3] = alpha;
	SCR_DrawStringExt( x, y, cls.bigchar_width, cls.bigchar_height, s, color, qfalse, noColorEscape );
}


/*
==================
SCR_DrawSmallStringExt

Draws a multi-colored string with a drop shadow, optionally forcing
to a fixed color.
==================
*/
void SCR_DrawSmallStringExt( int x, int y, const char *string, const float *setColor, qboolean forceColor, qboolean noColorEscape ) {
	vec4_t		color;
	const char	*s;

	// draw the colored text
	s = string;
	re.SetColor( setColor );

	while ( *s ) {
		if ( Q_IsColorString( s ) ) {
			if ( !forceColor ) {
				Com_Memcpy( color, g_color_table[ColorIndexFromChar( *( s + 1 ) )], sizeof( color ) );
				color[3] = setColor[3];
				re.SetColor( color );
			}
			if ( !noColorEscape ) {
				s += 2;
				continue;
			}
		}
		SCR_DrawSmallChar( x, y, *s );
		x += cls.smallchar_width;
		s++;
	}
	re.SetColor( NULL );
}


/*
==================
SCR_Strlen

Skips color escape codes
==================
*/
static int SCR_Strlen( const char *str ) {
	const char *s = str;
	int count = 0;

	while ( *s ) {
		if ( Q_IsColorString( s ) ) {
			s += 2;
		}
		else {
			count++;
			s++;
		}
	}

	return count;
}


/*
==================
SCR_GetBigStringWidth

==================
*/
int SCR_GetBigStringWidth( const char *str ) {
	return SCR_Strlen( str ) * cls.bigchar_width;
}


//===============================================================================

/*
=================
SCR_DrawDemoRecording
=================
*/
void SCR_DrawDemoRecording( void ) {
	if ( !clc.demoRecording ) return;
	if ( clc.spDemoRecording ) return;
	if ( !cl_demoRecordMessage->integer ) return;

	if ( cl_demoRecordMessage->integer == 1 ) {
		char	string[sizeof( clc.recordNameShort ) + 32];
		int		pos;

		pos = FS_FTell( clc.recordFile );
		
		sprintf( string, "RECORDING %s: %ik", clc.recordNameShort, pos / 1024 );
		SCR_DrawStringExt( ( cls.glconfig.vidWidth - strlen( string ) * cls.smallchar_width ) / 2, (int)( cl_demoRecordMessage_y->integer * cls.vidScale ), cls.smallchar_width, cls.smallchar_height, string, colorWhite, qtrue, qfalse );
	} else {
		const int iconSize = (int)( cls.smallchar_height * 1.5 );
		int offset = (int)( 1.0f * cls.vidScale );
		int x = offset;
		if ( cls.recordShader ) {
			SCR_DrawPic( x, cls.glconfig.vidHeight - iconSize - offset, iconSize, iconSize, cls.recordShader );
			x += iconSize + offset;
		}
		SCR_DrawStringExt( x, cls.glconfig.vidHeight - offset - iconSize + (int)(( iconSize - cls.smallchar_width ) / 2), cls.smallchar_width, cls.smallchar_height, "REC", colorWhite, qtrue, qfalse );
	}
}


#ifdef USE_VOIP
/*
=================
SCR_DrawVoipMeter
=================
*/
void SCR_DrawVoipMeter( void ) {
	char	buffer[16];
	char	string[256];
	int limit, i;

	if ( !cl_voipShowMeter->integer )
		return;  // player doesn't want to show meter at all.
	else if ( !cl_voipSend->integer )
		return;  // not recording at the moment.
	else if ( clc.state != CA_ACTIVE )
		return;  // not connected to a server.
	else if ( !clc.voipEnabled )
		return;  // server doesn't support VoIP.
	else if ( clc.demoplaying )
		return;  // playing back a demo.
	else if ( !cl_voip->integer )
		return;  // client has VoIP support disabled.

	limit = (int)( clc.voipPower * 10.0f );
	if ( limit > 10 )
		limit = 10;

	for ( i = 0; i < limit; i++ )
		buffer[i] = '*';
	while ( i < 10 )
		buffer[i++] = ' ';
	buffer[i] = '\0';

	sprintf( string, "VoIP: [%s]", buffer );
	SCR_DrawStringExt( cls.glconfig.vidWidth - strlen( string ) * (int)( cls.smallchar_width / 2 ), (int)( cls.smallchar_height * 1.5 ), cls.smallchar_width, cls.smallchar_height, string, colorWhite, qtrue, qfalse, SA_CENTER );
}
#endif


/*
===============================================================================

DEBUG GRAPH

===============================================================================
*/

static	int			current;
static	float		values[1024];

/*
==============
SCR_DebugGraph
==============
*/
void SCR_DebugGraph( float value )
{
	values[current] = value;
	current = ( current + 1 ) % ARRAY_LEN( values );
}


/*
==============
SCR_DrawDebugGraph
==============
*/
void SCR_DrawDebugGraph( void )
{
	int		a, x, y, w, i, h;
	float	v;

	//
	// draw the graph
	//
	w = cls.glconfig.vidWidth;
	x = 0;
	y = cls.glconfig.vidHeight;
	re.SetColor( g_color_table[ColorIndex( COLOR_BLACK )] );
	re.DrawStretchPic( x, y - cl_graphHeight->integer,
		w, cl_graphHeight->integer, 0, 0, 0, 0, cls.whiteShader );
	re.SetColor( NULL );

	for ( a = 0; a < w; a++ )
	{
		i = ( ARRAY_LEN( values ) + current - 1 - ( a % ARRAY_LEN( values ) ) ) % ARRAY_LEN( values );
		v = values[i];
		v = v * cl_graphScale->integer + cl_graphShift->integer;

		if ( v < 0 )
			v += cl_graphHeight->integer * ( 1 + (int)( -v / cl_graphHeight->integer ) );
		h = (int)v % cl_graphHeight->integer;
		re.DrawStretchPic( x + w - 1 - a, y - h, 1, h, 0, 0, 0, 0, cls.whiteShader );
	}
}

//=============================================================================

/*
==================
SCR_Init
==================
*/
void SCR_Init( void ) {
	cl_timeGraph = Cvar_Get( "cl_timeGraph", "0", CVAR_CHEAT, "0", "1", CV_INTEGER );
	cl_debugGraph = Cvar_Get( "cl_debugGraph", "0", CVAR_CHEAT, "0", "1", CV_INTEGER );
	cl_graphHeight = Cvar_Get( "cl_graphHeight", "32", CVAR_CHEAT, NULL, NULL, CV_NONE );
	cl_graphScale = Cvar_Get( "cl_graphScale", "1", CVAR_CHEAT, NULL, NULL, CV_NONE );
	cl_graphShift = Cvar_Get( "cl_graphShift", "0", CVAR_CHEAT, NULL, NULL, CV_NONE );

	scr_initialized = qtrue;
}


//=======================================================

/*
==================
SCR_DrawScreenField

This will be called twice if rendering in stereo mode
==================
*/
void SCR_DrawScreenField( stereoFrame_t stereoFrame ) {
	qboolean uiFullscreen;
	qboolean draw = cl_loadScreenStyle->integer;

	re.BeginFrame( stereoFrame );

	uiFullscreen = ( uivm && VM_Call( uivm, 0, UI_IS_FULLSCREEN ) );

	// non-4:3 aspect ratio screens need to have the sides cleared
	// unless they are displaying game renderings
	//TODO: don't clear while loading and cl_loadScreenStyle = 0, save buffer to print under console
	if ( uiFullscreen || cls.state < CA_ACTIVE ) {	//LOADING ) {
		if ( cls.glconfig.vidWidth * 480 != cls.glconfig.vidHeight * 640 ) {
			re.SetColor( g_color_table[ColorIndex( COLOR_BLACK )] );
			re.DrawStretchPic( 0, 0, cls.glconfig.vidWidth, cls.glconfig.vidHeight, 0, 0, 0, 0, cls.whiteShader );
			re.SetColor( NULL );
		}
	}

	// if the menu is going to cover the entire screen, we
	// don't need to render anything under it
	if ( uivm && !uiFullscreen ) {
		switch ( cls.state ) {
		default:
			Com_Error( ERR_FATAL, "SCR_DrawScreenField: bad cls.state" );
			break;
		case CA_CINEMATIC:
			SCR_DrawCinematic();
			break;
		case CA_DISCONNECTED:
			// force menu up
			S_StopAllSounds();
			VM_Call( uivm, 1, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
			break;
		case CA_CONNECTING:
		case CA_CHALLENGING:
		case CA_CONNECTED:
			// connecting clients will only show the connection dialog
			// refresh to update the time
			if ( draw ) VM_Call( uivm, 1, UI_REFRESH, cls.realtime );
			if ( draw ) VM_Call( uivm, 1, UI_DRAW_CONNECT_SCREEN, qfalse );
			break;
		case CA_LOADING:
		case CA_PRIMED:
			// draw the game information screen and loading progress
			if ( draw && cgvm ) CL_CGameRendering( stereoFrame );

			// also draw the connection information, so it doesn't
			// flash away too briefly on local or lan games
			// refresh to update the time
			if ( draw ) VM_Call( uivm, 1, UI_REFRESH, cls.realtime );
			if ( draw ) VM_Call( uivm, 1, UI_DRAW_CONNECT_SCREEN, qtrue );
			break;
		case CA_ACTIVE:
			// always supply STEREO_CENTER as vieworg offset is now done by the engine.
			CL_CGameRendering( stereoFrame );
			SCR_DrawDemoRecording();
#ifdef USE_VOIP
			SCR_DrawVoipMeter();
#endif
			break;
		}
	}

	// the menu draws next
	if ( Key_GetCatcher() & KEYCATCH_UI && uivm ) {
		VM_Call( uivm, 1, UI_REFRESH, cls.realtime );
	}

	// console draws next
	Con_DrawConsole();

	// debug graph can be drawn on top of anything
	if ( cl_debugGraph->integer || cl_timeGraph->integer || cl_debugMove->integer ) {
		SCR_DrawDebugGraph();
	}
}


/*
==================
SCR_UpdateScreen

This is called every frame, and can also be called explicitly to flush
text to the screen.
==================
*/
void SCR_UpdateScreen( void ) {
	static int recursive;
	static int framecount;
	static int next_frametime;

	if ( !scr_initialized )
		return; // not initialized yet

	if ( framecount == cls.framecount ) {
		int ms = Sys_Milliseconds();
		if ( next_frametime && ms - next_frametime < 0 ) {
			re.ThrottleBackend();
		}
		else {
			next_frametime = ms + 16; // limit to 60 FPS
		}
	}
	else {
		next_frametime = 0;
		framecount = cls.framecount;
	}

	if ( ++recursive > 2 ) {
		Com_Error( ERR_FATAL, "SCR_UpdateScreen: recursively called" );
	}
	recursive = 1;

	// If there is no VM, there are also no rendering commands issued. Stop the renderer in
	// that case.
	if ( uivm )
	{
		// XXX
		int in_anaglyphMode = Cvar_VariableIntegerValue( "r_anaglyphMode" );
		// if running in stereo, we need to draw the frame twice
		if ( cls.glconfig.stereoEnabled || in_anaglyphMode ) {
			SCR_DrawScreenField( STEREO_LEFT );
			SCR_DrawScreenField( STEREO_RIGHT );
		}
		else {
			SCR_DrawScreenField( STEREO_CENTER );
		}

		if ( com_speeds->integer ) {
			re.EndFrame( &time_frontend, &time_backend );
		}
		else {
			re.EndFrame( NULL, NULL );
		}
	}

	recursive = 0;
}
