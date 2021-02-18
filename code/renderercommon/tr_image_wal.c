/*
===========================================================================
Copyright (C) 1999-2005 Id Software, Inc.
              2008 Ludwig Nussel

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
#if 0
#include "../qcommon/q_shared.h"
#include "../renderercommon/tr_public.h"

#define	MIPLEVELS	4
typedef struct wal_s {
	char		name[32];
	unsigned	width, height;
	unsigned	offsets[MIPLEVELS];		// four mip maps stored
	char		animname[32];			// next frame in animation chain
	int			flags;
	int			contents;
	int			value;
} wal_t;

void R_LoadWal(const char *filename, byte **pic, int *width, int *height) {
	union {
		byte	*b;
		void	*v;
	} raw;
	int			len;
	byte		*end;

	unsigned short w, h;

	wal_t		*wal;
	int			ofs;
	image_t *image;

	//
	// load the file
	//
	len = ri.FS_ReadFile((char *)filename, &raw.v);
	if (!raw.b || len < 0) {
		return;
	}

	if ((unsigned)len < sizeof(wal_t)) {
		ri.Printf(PRINT_ALL, "WAL truncated: %s\n", filename);
		ri.FS_FreeFile(raw.v);
		return;
	}

	//
	// parse the WAL file
	//
	wal = (wal_t *)raw.b;
	end = raw.b + len;

	w = LittleLong(wal->width);
	h = LittleLong(wal->height);
	ofs = LittleLong(wal->offsets[0]);

	//image = GL_LoadPic(filename, (byte *)wal + ofs, w, h, it_wall, 8);

	if (width)
		*width = w;
	if (height)
		*height = h;

	*pic = out;

	ri.FS_FreeFile(wal);
	ri.Free(pic8);
}
#endif
