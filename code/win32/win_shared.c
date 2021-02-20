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

#include "../qcommon/q_shared.h"
#include "../qcommon/qcommon.h"
#include "win_local.h"
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <direct.h>
#include <io.h>
#include <conio.h>
#include <intrin.h>

/*
================
Sys_Milliseconds
================
*/
int Sys_Milliseconds( void )
{
	static qboolean	initialized = qfalse;
	static DWORD sys_timeBase;
	int	sys_curtime;

	if ( !initialized ) {
		sys_timeBase = timeGetTime();
		initialized = qtrue;
	}

	sys_curtime = timeGetTime() - sys_timeBase;

	return sys_curtime;
}


/*
================
Sys_RandomBytes
================
*/
qboolean Sys_RandomBytes( byte *string, int len )
{
	HCRYPTPROV  prov;

	if( !CryptAcquireContext( &prov, NULL, NULL,
		PROV_RSA_FULL, CRYPT_VERIFYCONTEXT ) )  {

		return qfalse;
	}

	if( !CryptGenRandom( prov, len, (BYTE *)string ) )  {
		CryptReleaseContext( prov, 0 );
		return qfalse;
	}
	CryptReleaseContext( prov, 0 );
	return qtrue;
}


#ifdef UNICODE
LPWSTR AtoW( const char *s ) 
{
	static WCHAR buffer[MAXPRINTMSG*2];
	MultiByteToWideChar( CP_ACP, 0, s, strlen( s ) + 1, (LPWSTR) buffer, ARRAYSIZE( buffer ) );
	return buffer;
}

const char *WtoA( const LPWSTR s ) 
{
	static char buffer[MAXPRINTMSG*2];
	WideCharToMultiByte( CP_ACP, 0, s, -1, buffer, ARRAYSIZE( buffer ), NULL, NULL );
	return buffer;
}
#endif


/*
================
Sys_DefaultHomePath
================
*/
const char *Sys_DefaultHomePath( void ) 
{
#ifdef USE_PROFILES
	TCHAR szPath[MAX_PATH];
	static char path[MAX_OSPATH];
	FARPROC qSHGetFolderPath;
	HMODULE shfolder = LoadLibrary("shfolder.dll");
	
	if(shfolder == NULL) {
		Com_Printf("Unable to load SHFolder.dll\n");
		return NULL;
	}

	qSHGetFolderPath = GetProcAddress(shfolder, "SHGetFolderPathA");
	if(qSHGetFolderPath == NULL)
	{
		Com_Printf("Unable to find SHGetFolderPath in SHFolder.dll\n");
		FreeLibrary(shfolder);
		return NULL;
	}

	if( !SUCCEEDED( qSHGetFolderPath( NULL, CSIDL_APPDATA,
		NULL, 0, szPath ) ) )
	{
		Com_Printf("Unable to detect CSIDL_APPDATA\n");
		FreeLibrary(shfolder);
		return NULL;
	}
	Q_strncpyz( path, szPath, sizeof(path) );
	Q_strcat( path, sizeof(path), "\\" PRODUCT_NAME );
	FreeLibrary(shfolder);
	if( !CreateDirectory( path, NULL ) )
	{
		if( GetLastError() != ERROR_ALREADY_EXISTS )
		{
			Com_Printf("Unable to create directory \"%s\"\n", path);
			return NULL;
		}
	}
	return path;
#else
    return NULL;
#endif
}


/*
================
Sys_Q1_Path
	//fnq3 FIXME: is this correct?
================
*/
const char *Sys_Q1_Path(void) {
	static TCHAR q1Path[MAX_OSPATH];
	return q1Path;
#if 0
	HKEY q1RegKey;
	DWORD pathLen = MAX_OSPATH;

	if (!q1Path[0] && !RegOpenKeyEx(HKEY_LOCAL_MACHINE, "SOFTWARE\\WOW6432Node\\Id\\Quake", 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &q1RegKey))
	{
		pathLen = MAX_OSPATH;
		if (RegQueryValueEx(q1RegKey, "INSTALLPATH", NULL, NULL, (LPBYTE)q1Path, &pathLen))
			q1Path[0] = '\0';

		RegCloseKey(q1RegKey);
	}

	return q1Path;
#endif
}


/*
================
Sys_Q2_Path
	//fnq3 FIXME: is this correct?
================
*/
const char *Sys_Q2_Path(void) {
	static TCHAR q2Path[MAX_OSPATH];
	HKEY q2RegKey;
	DWORD pathLen = MAX_OSPATH;
	char *s = "";
#if defined(__x86_64__)
	s = "SOFTWARE\\Wow6432Node\\Microsoft\\Windows\\CurrentVersion\\App Paths\\Quake2_exe";
#else
	s = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\App Paths\\Quake2_exe";
#endif
	if (!q2Path[0] && !RegOpenKeyEx(HKEY_LOCAL_MACHINE, s, 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &q2RegKey)) {
		pathLen = MAX_OSPATH;
		if (RegQueryValueEx(q2RegKey, "Path", NULL, NULL, (LPBYTE)q2Path, &pathLen))
			q2Path[0] = '\0';

		RegCloseKey(q2RegKey);
	}

	return q2Path;
}


/*
================
Sys_Q3_Path

================
*/
const char *Sys_Q3_Path(void) {
	static TCHAR q3Path[MAX_OSPATH];
	HKEY q3RegKey;
	DWORD pathLen = MAX_OSPATH;
	char *s = "";
#if defined(__x86_64__)
	s = "SOFTWARE\\WOW6432Node\\Id\\Quake III Arena";
#else
	s = "SOFTWARE\\Id\\Quake III Arena";
#endif

	if (!q3Path[0] && !RegOpenKeyEx(HKEY_LOCAL_MACHINE, s, 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &q3RegKey))
	{
		pathLen = MAX_OSPATH;
		if (RegQueryValueEx(q3RegKey, "INSTALLPATH", NULL, NULL, (LPBYTE)q3Path, &pathLen))
			q3Path[0] = '\0';

		RegCloseKey(q3RegKey);
	}

	return q3Path;
}

#if 0
/*
================
Sys_Q1_SteamPath
================
*/
const char *Sys_Q1_SteamPath(void)
{
	static TCHAR steamPathQ1[MAX_OSPATH]; // will be converted from TCHAR to ANSI

#if defined(STEAMPATH_Q1_GAMEDIR) || defined(STEAMPATH_Q1_APPID)
	HKEY steamRegKey;
	DWORD pathLen = MAX_OSPATH;
	qboolean finishPath = qfalse;
#endif

#ifdef STEAMPATH_Q1_APPID
	// Assuming Steam is a 32-bit app
	if (!steamPathQ1[0] && RegOpenKeyEx(HKEY_LOCAL_MACHINE, AtoW("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App " STEAMPATH_Q1_APPID), 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &steamRegKey) == ERROR_SUCCESS)
	{
		pathLen = sizeof(steamPathQ1);
		if (RegQueryValueEx(steamRegKey, AtoW("InstallLocation"), NULL, NULL, (LPBYTE)steamPathQ1, &pathLen) != ERROR_SUCCESS)
			steamPathQ1[0] = '\0';

		RegCloseKey(steamRegKey);
	}

#ifdef STEAMPATH_Q1_GAMEDIR
	if (!steamPathQ1[0] && RegOpenKeyEx(HKEY_CURRENT_USER, AtoW("Software\\Valve\\Steam"), 0, KEY_QUERY_VALUE, &steamRegKey) == ERROR_SUCCESS)
	{
		pathLen = sizeof(steamPathQ1);
		if (RegQueryValueEx(steamRegKey, AtoW("SteamPath"), NULL, NULL, (LPBYTE)steamPathQ1, &pathLen) != ERROR_SUCCESS) {
			pathLen = sizeof(steamPathQ1);
			if (RegQueryValueEx(steamRegKey, AtoW("InstallPath"), NULL, NULL, (LPBYTE)steamPathQ1, &pathLen) != ERROR_SUCCESS)
				steamPathQ1[0] = '\0';
		}

		if (steamPathQ1[0])
			finishPath = qtrue;

		RegCloseKey(steamRegKey);
	}
#endif

	if (steamPathQ1[0])
	{
		if (pathLen == sizeof(steamPathQ1))
			pathLen--;

		*(((char *)steamPathQ1) + pathLen) = '\0';
#ifdef UNICODE
		strcpy((char *)steamPathQ1, WtoA(steamPathQ1));
#endif
		if (finishPath)
			Q_strcat((char *)steamPathQ1, MAX_OSPATH, "\\SteamApps\\common\\" STEAMPATH_Q1_GAMEDIR);
	}
#endif

	return (const char *)steamPathQ1;
}


/*
================
Sys_Q2_SteamPath
================
*/
const char *Sys_Q2_SteamPath(void)
{
	static TCHAR steamPathQ2[MAX_OSPATH]; // will be converted from TCHAR to ANSI

#if defined(STEAMPATH_Q2_GAMEDIR) || defined(STEAMPATH_Q2_APPID)
	HKEY steamRegKey;
	DWORD pathLen = MAX_OSPATH;
	qboolean finishPath = qfalse;
#endif

#ifdef STEAMPATH_Q2_APPID
	// Assuming Steam is a 32-bit app
	if (!steamPathQ2[0] && RegOpenKeyEx(HKEY_LOCAL_MACHINE, AtoW("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App " STEAMPATH_Q2_APPID), 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &steamRegKey) == ERROR_SUCCESS)
	{
		pathLen = sizeof(steamPathQ2);
		if (RegQueryValueEx(steamRegKey, AtoW("InstallLocation"), NULL, NULL, (LPBYTE)steamPathQ2, &pathLen) != ERROR_SUCCESS)
			steamPathQ2[0] = '\0';

		RegCloseKey(steamRegKey);
	}

#ifdef STEAMPATH_Q2_GAMEDIR
	if (!steamPathQ2[0] && RegOpenKeyEx(HKEY_CURRENT_USER, AtoW("Software\\Valve\\Steam"), 0, KEY_QUERY_VALUE, &steamRegKey) == ERROR_SUCCESS)
	{
		pathLen = sizeof(steamPathQ2);
		if (RegQueryValueEx(steamRegKey, AtoW("SteamPath"), NULL, NULL, (LPBYTE)steamPathQ2, &pathLen) != ERROR_SUCCESS) {
			pathLen = sizeof(steamPathQ2);
			if (RegQueryValueEx(steamRegKey, AtoW("InstallPath"), NULL, NULL, (LPBYTE)steamPathQ2, &pathLen) != ERROR_SUCCESS)
				steamPathQ2[0] = '\0';
		}

		if (steamPathQ2[0])
			finishPath = qtrue;

		RegCloseKey(steamRegKey);
	}
#endif

	if (steamPathQ2[0])
	{
		if (pathLen == sizeof(steamPathQ2))
			pathLen--;

		*(((char *)steamPathQ2) + pathLen) = '\0';
#ifdef UNICODE
		strcpy((char *)steamPathQ2, WtoA(steamPathQ2));
#endif
		if (finishPath)
			Q_strcat((char *)steamPathQ2, MAX_OSPATH, "\\SteamApps\\common\\" STEAMPATH_Q2_GAMEDIR);
	}
#endif

	return (const char *)steamPathQ2;
}
#endif

/*
================
Sys_SteamPath
================
*/
const char *Sys_Q1_SteamPath(const char *appID, const char *gameDir) {
	static TCHAR steamPath[MAX_OSPATH]; // will be converted from TCHAR to ANSI

	if (!appID[0] || !gameDir[0]) return "";
	else {
		HKEY steamRegKey;
		DWORD pathLen = MAX_OSPATH;
		qboolean finishPath = qfalse;

		// Assuming Steam is a 32-bit app
		if (!steamPath[0] && RegOpenKeyEx(HKEY_LOCAL_MACHINE, AtoW(va("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App %s", appID)), 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &steamRegKey) == ERROR_SUCCESS) {
			pathLen = sizeof(steamPath);
			if (RegQueryValueEx(steamRegKey, AtoW("InstallLocation"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS)
				steamPath[0] = '\0';

			RegCloseKey(steamRegKey);
		}

		if (!steamPath[0] && RegOpenKeyEx(HKEY_CURRENT_USER, AtoW("Software\\Valve\\Steam"), 0, KEY_QUERY_VALUE, &steamRegKey) == ERROR_SUCCESS) {
			pathLen = sizeof(steamPath);
			if (RegQueryValueEx(steamRegKey, AtoW("SteamPath"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS) {
				pathLen = sizeof(steamPath);
				if (RegQueryValueEx(steamRegKey, AtoW("InstallPath"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS)
					steamPath[0] = '\0';
			}

			if (steamPath[0])
				finishPath = qtrue;

			RegCloseKey(steamRegKey);
		}

		if (steamPath[0]) {
			if (pathLen == sizeof(steamPath))
				pathLen--;

			*(((char *)steamPath) + pathLen) = '\0';
#ifdef UNICODE
			strcpy((char *)steamPath, WtoA(steamPath));
#endif
			if (finishPath)
				Q_strcat((char *)steamPath, MAX_OSPATH, va("\\SteamApps\\common\\%s", gameDir));
		}
	}

	return va("%s", (const char *)steamPath);
}
const char *Sys_Q2_SteamPath( const char *appID, const char *gameDir ) {
	static TCHAR steamPath[ MAX_OSPATH ]; // will be converted from TCHAR to ANSI

	if (!appID[0] || !gameDir[0]) return "";
	else {
		HKEY steamRegKey;
		DWORD pathLen = MAX_OSPATH;
		qboolean finishPath = qfalse;

		// Assuming Steam is a 32-bit app
		if (!steamPath[0] && RegOpenKeyEx(HKEY_LOCAL_MACHINE, AtoW(va("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App %s", appID)), 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &steamRegKey) == ERROR_SUCCESS) {
			pathLen = sizeof(steamPath);
			if (RegQueryValueEx(steamRegKey, AtoW("InstallLocation"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS)
				steamPath[0] = '\0';

			RegCloseKey(steamRegKey);
		}

		if (!steamPath[0] && RegOpenKeyEx(HKEY_CURRENT_USER, AtoW("Software\\Valve\\Steam"), 0, KEY_QUERY_VALUE, &steamRegKey) == ERROR_SUCCESS) {
			pathLen = sizeof(steamPath);
			if (RegQueryValueEx(steamRegKey, AtoW("SteamPath"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS) {
				pathLen = sizeof(steamPath);
				if (RegQueryValueEx(steamRegKey, AtoW("InstallPath"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS)
					steamPath[0] = '\0';
			}

			if (steamPath[0])
				finishPath = qtrue;

			RegCloseKey(steamRegKey);
		}

		if (steamPath[0]) {
			if (pathLen == sizeof(steamPath))
				pathLen--;

			*(((char *)steamPath) + pathLen) = '\0';
#ifdef UNICODE
			strcpy((char *)steamPath, WtoA(steamPath));
#endif
			if (finishPath)
				Q_strcat((char *)steamPath, MAX_OSPATH, va("\\SteamApps\\common\\%s", gameDir));
		}
	}

	return va("%s", (const char*)steamPath);
}
const char *Sys_Q3_SteamPath(const char *appID, const char *gameDir) {
	static TCHAR steamPath[MAX_OSPATH]; // will be converted from TCHAR to ANSI

	if (!appID[0] || !gameDir[0]) return "";
	else {
		HKEY steamRegKey;
		DWORD pathLen = MAX_OSPATH;
		qboolean finishPath = qfalse;

		// Assuming Steam is a 32-bit app
		if (!steamPath[0] && RegOpenKeyEx(HKEY_LOCAL_MACHINE, AtoW(va("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App %s", appID)), 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &steamRegKey) == ERROR_SUCCESS) {
			pathLen = sizeof(steamPath);
			if (RegQueryValueEx(steamRegKey, AtoW("InstallLocation"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS)
				steamPath[0] = '\0';

			RegCloseKey(steamRegKey);
		}

		if (!steamPath[0] && RegOpenKeyEx(HKEY_CURRENT_USER, AtoW("Software\\Valve\\Steam"), 0, KEY_QUERY_VALUE, &steamRegKey) == ERROR_SUCCESS) {
			pathLen = sizeof(steamPath);
			if (RegQueryValueEx(steamRegKey, AtoW("SteamPath"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS) {
				pathLen = sizeof(steamPath);
				if (RegQueryValueEx(steamRegKey, AtoW("InstallPath"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS)
					steamPath[0] = '\0';
			}

			if (steamPath[0])
				finishPath = qtrue;

			RegCloseKey(steamRegKey);
		}

		if (steamPath[0]) {
			if (pathLen == sizeof(steamPath))
				pathLen--;

			*(((char *)steamPath) + pathLen) = '\0';
#ifdef UNICODE
			strcpy((char *)steamPath, WtoA(steamPath));
#endif
			if (finishPath)
				Q_strcat((char *)steamPath, MAX_OSPATH, va("\\SteamApps\\common\\%s", gameDir));
		}
	}

	return va("%s", (const char *)steamPath);
}
const char *Sys_QL_SteamPath(const char *appID, const char *gameDir) {
	static TCHAR steamPath[MAX_OSPATH]; // will be converted from TCHAR to ANSI

	if (!appID[0] || !gameDir[0]) return "";
	else {
		HKEY steamRegKey;
		DWORD pathLen = MAX_OSPATH;
		qboolean finishPath = qfalse;

		// Assuming Steam is a 32-bit app
		if (!steamPath[0] && RegOpenKeyEx(HKEY_LOCAL_MACHINE, AtoW(va("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App %s", appID)), 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &steamRegKey) == ERROR_SUCCESS) {
			pathLen = sizeof(steamPath);
			if (RegQueryValueEx(steamRegKey, AtoW("InstallLocation"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS)
				steamPath[0] = '\0';

			RegCloseKey(steamRegKey);
}

		if (!steamPath[0] && RegOpenKeyEx(HKEY_CURRENT_USER, AtoW("Software\\Valve\\Steam"), 0, KEY_QUERY_VALUE, &steamRegKey) == ERROR_SUCCESS) {
			pathLen = sizeof(steamPath);
			if (RegQueryValueEx(steamRegKey, AtoW("SteamPath"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS) {
				pathLen = sizeof(steamPath);
				if (RegQueryValueEx(steamRegKey, AtoW("InstallPath"), NULL, NULL, (LPBYTE)steamPath, &pathLen) != ERROR_SUCCESS)
					steamPath[0] = '\0';
			}

			if (steamPath[0])
				finishPath = qtrue;

			RegCloseKey(steamRegKey);
		}

		if (steamPath[0]) {
			if (pathLen == sizeof(steamPath))
				pathLen--;

			*(((char *)steamPath) + pathLen) = '\0';
#ifdef UNICODE
			strcpy((char *)steamPath, WtoA(steamPath));
#endif
			if (finishPath)
				Q_strcat((char *)steamPath, MAX_OSPATH, va("\\SteamApps\\common\\%s", gameDir));
		}
	}

	return va("%s", (const char *)steamPath);
}

#if 0
/*
================
Sys_QL_SteamPath
================
*/
const char *Sys_QL_SteamPath(void)
{
	static TCHAR steamPathQL[MAX_OSPATH]; // will be converted from TCHAR to ANSI

#if defined(STEAMPATH_QL_GAMEDIR) || defined(STEAMPATH_QL_APPID)
	HKEY steamRegKey;
	DWORD pathLen = MAX_OSPATH;
	qboolean finishPath = qfalse;
#endif

#ifdef STEAMPATH_QL_APPID
	// Assuming Steam is a 32-bit app
	if (!steamPathQL[0] && RegOpenKeyEx(HKEY_LOCAL_MACHINE, AtoW("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\Steam App " STEAMPATH_QL_APPID), 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &steamRegKey) == ERROR_SUCCESS)
	{
		pathLen = sizeof(steamPathQL);
		if (RegQueryValueEx(steamRegKey, AtoW("InstallLocation"), NULL, NULL, (LPBYTE)steamPathQL, &pathLen) != ERROR_SUCCESS)
			steamPathQL[0] = '\0';

		RegCloseKey(steamRegKey);
	}

#ifdef STEAMPATH_QL_GAMEDIR
	if (!steamPathQL[0] && RegOpenKeyEx(HKEY_CURRENT_USER, AtoW("Software\\Valve\\Steam"), 0, KEY_QUERY_VALUE, &steamRegKey) == ERROR_SUCCESS)
	{
		pathLen = sizeof(steamPathQL);
		if (RegQueryValueEx(steamRegKey, AtoW("SteamPath"), NULL, NULL, (LPBYTE)steamPathQL, &pathLen) != ERROR_SUCCESS) {
			pathLen = sizeof(steamPathQL);
			if (RegQueryValueEx(steamRegKey, AtoW("InstallPath"), NULL, NULL, (LPBYTE)steamPathQL, &pathLen) != ERROR_SUCCESS)
				steamPathQL[0] = '\0';
		}

		if (steamPathQL[0])
			finishPath = qtrue;

		RegCloseKey(steamRegKey);
	}
#endif

	if (steamPathQL[0])
	{
		if (pathLen == sizeof(steamPathQL))
			pathLen--;

		*(((char *)steamPathQL) + pathLen) = '\0';
#ifdef UNICODE
		strcpy((char *)steamPathQL, WtoA(steamPathQL));
#endif
		if (finishPath)
			Q_strcat((char *)steamPathQL, MAX_OSPATH, "\\SteamApps\\common\\" STEAMPATH_QL_GAMEDIR);
	}
#endif

	return (const char *)steamPathQL;
}
#endif

/*
================
Sys_Q1_GOGPath
================
*/
const char *Sys_Q1_GOGPath(void) {
	static TCHAR gogPathQ1[MAX_OSPATH]; // will be converted from TCHAR to ANSI
#ifdef GOGPATH_Q1_APPID
	HKEY gogRegKey;
	DWORD pathLen = MAX_OSPATH;

	if (!gogPathQ1[0] && !RegOpenKeyEx(HKEY_LOCAL_MACHINE, "SOFTWARE\\GOG.com\\Games\\" GOGPATH_Q1_APPID, 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &gogRegKey))
	{
		pathLen = MAX_OSPATH;
		if (RegQueryValueEx(gogRegKey, "PATH", NULL, NULL, (LPBYTE)gogPathQ1, &pathLen))
			gogPathQ1[0] = '\0';

		RegCloseKey(gogRegKey);
	}

	if (gogPathQ1[0])
	{
		if (pathLen == MAX_OSPATH)
			pathLen--;

		gogPathQ1[pathLen] = '\0';
	}
#endif

	return (const char *)gogPathQ1;
}


/*
================
Sys_Q2_GOGPath
================
*/
const char *Sys_Q2_GOGPath(void) {
	static TCHAR gogPathQ2[MAX_OSPATH]; // will be converted from TCHAR to ANSI
#ifdef GOGPATH_Q2_APPID
	HKEY gogRegKey;
	DWORD pathLen = MAX_OSPATH;

	if (!gogPathQ2[0] && !RegOpenKeyEx(HKEY_LOCAL_MACHINE, "SOFTWARE\\GOG.com\\Games\\" GOGPATH_Q2_APPID, 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &gogRegKey))
	{
		pathLen = MAX_OSPATH;
		if (RegQueryValueEx(gogRegKey, "PATH", NULL, NULL, (LPBYTE)gogPathQ2, &pathLen))
			gogPathQ2[0] = '\0';

		RegCloseKey(gogRegKey);
	}

	if (gogPathQ2[0])
	{
		if (pathLen == MAX_OSPATH)
			pathLen--;

		gogPathQ2[pathLen] = '\0';
	}
#endif

	return (const char *)gogPathQ2;
}


/*
================
Sys_Q3_GOGPath
================
*/
const char *Sys_Q3_GOGPath( void ) {
	static TCHAR gogPathQ3[MAX_OSPATH]; // will be converted from TCHAR to ANSI
#ifdef GOGPATH_Q3_APPID
	HKEY gogRegKey;
	DWORD pathLen = MAX_OSPATH;

	if (!gogPathQ3[0] && !RegOpenKeyEx(HKEY_LOCAL_MACHINE, "SOFTWARE\\GOG.com\\Games\\" GOGPATH_Q3_APPID, 0, KEY_QUERY_VALUE | KEY_WOW64_32KEY, &gogRegKey))
	{
		pathLen = MAX_OSPATH;
		if (RegQueryValueEx(gogRegKey, "PATH", NULL, NULL, (LPBYTE)gogPathQ3, &pathLen))
			gogPathQ3[0] = '\0';

		RegCloseKey(gogRegKey);
	}

	if (gogPathQ3[0])
	{
		if (pathLen == MAX_OSPATH)
			pathLen--;

		gogPathQ3[pathLen] = '\0';
	}
#endif

	return (const char *)gogPathQ3;
}


/*
================
Sys_CheckForGame
================
*/
void Sys_CheckForGame( const char *path ) {
	int title = 0;

	if ( FS_FileExistsInPath( "glquake.exe", path )
		&& FS_FileExistsInPath( "pak0.pak", va( "%s\\%s", path, BASEQ1 ) ) )
			title |= ( 1 << TITLE_QUAKE1 );
	if ( FS_FileExistsInPath( "quake2.exe", path )
		&& FS_FileExistsInPath( "pak0.pak", va( "%s\\%s", path, BASEQ2 ) ) )
			title |= ( 1 << TITLE_QUAKE2 );
	if ( FS_FileExistsInPath( "quake3.exe", path )
		&& FS_FileExistsInPath( "pak0.pk3", va( "%s\\%s", path, BASEQ3 ) ) )
			title |= ( 1 << TITLE_QUAKE3 );
	if ( FS_FileExistsInPath( "quake4.exe", path )
		&& FS_FileExistsInPath( "pak001.pk4", va( "%s\\%s", path, BASEQ4 ) ) )
			title |= ( 1 << TITLE_QUAKE4 );
	if ( FS_FileExistsInPath( "quakelive_steam.exe", path )
		&& FS_FileExistsInPath( "pak00.pk3", va( "%s\\%s", path, BASEQL ) ) )
			title |= ( 1 << TITLE_QUAKELIVE );

	Cvar_Set( "fs_gameDetect", va( "%i", title ) );
}


/*
================
Sys_SetAffinityMask
================
*/
#ifdef USE_AFFINITY_MASK
void Sys_SetAffinityMask( int mask )
{
	static DWORD_PTR dwOldProcessMask;
	static DWORD_PTR dwSystemMask;

	// initialize
	if ( !dwOldProcessMask ) {
		dwSystemMask = 0x1;
		dwOldProcessMask = 0x1;
		GetProcessAffinityMask( GetCurrentProcess(), &dwOldProcessMask, &dwSystemMask );
	}

	 // set default mask
	if ( !mask ) {
		if ( dwOldProcessMask )
			mask = dwOldProcessMask;
		else
			mask = dwSystemMask;
	}

	if ( SetProcessAffinityMask( GetCurrentProcess(), mask ) ) {
		Sleep( 0 );
		Com_Printf( "setting CPU affinity mask to %i\n", mask );
	} else {
		Com_WPrintf( "Error setting CPU affinity mask %i\n", mask );
	}
}
#endif // USE_AFFINITY_MASK
