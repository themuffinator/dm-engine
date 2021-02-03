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
//
// This file must be identical in the quake and utils directories

// contents flags are separate bits
// a given brush can contribute multiple content bits

// these definitions also need to be in q_shared.h!

#define	CONTENTS_SOLID				0x1			// an eye is never valid in a solid
#define	CONTENTS_Q2_WINDOW			0x2			// translucent, but not watery
#define	CONTENTS_Q2_AUX				0x4
#define	CONTENTS_LAVA				0x8
#define	CONTENTS_SLIME				0x10
#define	CONTENTS_WATER				0x20
#define	CONTENTS_FOG				0x40

#define CONTENTS_NOTTEAM1			0x80		// is this used? remove?
#define CONTENTS_NOTTEAM2			0x100		// is this used? remove?
#define CONTENTS_NOBOTCLIP			0x200		// is this used? remove?

#define	CONTENTS_AREAPORTAL			0x8000

#define	CONTENTS_PLAYERCLIP			0x10000
#define	CONTENTS_MONSTERCLIP		0x20000

// currents can be added to any other contents, and may be mixed
#define	CONTENTS_Q2_CURRENT_0		0x40000
#define	CONTENTS_Q2_CURRENT_90		0x80000
#define	CONTENTS_Q2_CURRENT_180		0x100000
#define	CONTENTS_Q2_CURRENT_270		0x200000
#define	CONTENTS_Q2_CURRENT_UP		0x400000
#define	CONTENTS_Q2_CURRENT_DOWN	0x800000

// bot-specific contents types
#define	CONTENTS_Q3_TELEPORTER		0x40000
#define	CONTENTS_Q3_JUMPPAD			0x80000
#define CONTENTS_Q3_CLUSTERPORTAL	0x100000
#define CONTENTS_Q3_DONOTENTER		0x200000
#define CONTENTS_Q3_BOTCLIP			0x400000
#define CONTENTS_Q3_MOVER			0x800000

#define	CONTENTS_ORIGIN				0x1000000	// removed before bsping an entity

#define	CONTENTS_Q2_MONSTER			0x2000000	// should never be on a brush, only in game
#define	CONTENTS_BODY				0x2000000	// should never be on a brush, only in game
#define	CONTENTS_Q2_DEADMONSTER		0x4000000	
#define	CONTENTS_CORPSE				0x4000000
#define	CONTENTS_DETAIL				0x8000000	// brushes not used for the bsp
#define	CONTENTS_Q2_TRANSLUCENT		0x10000000	// auto set if any surface has trans
#define	CONTENTS_STRUCTURAL			0x10000000	// brushes used for the bsp
#define	CONTENTS_Q2_LADDER			0x20000000	
#define	CONTENTS_TRANSLUCENT		0x20000000	// don't consume surface fragments inside
#define	CONTENTS_TRIGGER			0x40000000
#define	CONTENTS_NODROP				0x80000000	// don't leave bodies or items (death fog, lava)
#define	CONTENTS_NODE				0xFFFFFFFF

#define	SURF_Q2_LIGHT				0x1			// value will hold the light strength
#define	SURF_Q3_NODAMAGE			0x1			// never give falling damage
#define	SURF_SLICK					0x2			// affects game physics
#define	SURF_SKY					0x4			// lighting from environment map
#define	SURF_Q2_WARP				0x8			// turbulent water warp
#define	SURF_Q3_LADDER				0x8
#define	SURF_Q2_TRANS33				0x10
#define	SURF_Q3_NOIMPACT			0x10		// don't make missile explosions
#define	SURF_Q2_TRANS66				0x20
#define	SURF_Q3_NOMARKS				0x20		// don't leave missile marks
#define	SURF_Q2_FLOWING				0x40		// scroll towards angle
#define	SURF_Q3_FLESH				0x40		// make flesh sounds and effects
#define	SURF_NODRAW					0x80		// don't generate a drawsurface at all
#define	SURF_HINT					0x100		// make a primary bsp splitter
#define	SURF_SKIP					0x200		// completely ignore, allowing non-closed brushes
#define	SURF_Q3_NOLIGHTMAP			0x400		// surface doesn't need a lightmap
#define	SURF_Q3_POINTLIGHT			0x800		// generate lighting info at vertexes
#define	SURF_Q3_METALSTEPS			0x1000		// clanking footsteps
#define	SURF_Q3_NOSTEPS				0x2000		// no footstep sounds
#define	SURF_Q3_NONSOLID			0x4000		// don't collide against curves with this set
#define	SURF_Q3_LIGHTFILTER			0x8000		// act as a light filter during q3map -light
#define	SURF_Q3_ALPHASHADOW			0x10000		// do per-pixel light shadow casting in q3map
#define	SURF_Q3_NODLIGHT			0x20000		// don't dlight even if solid (solid lava, skies)
#define SURF_Q3_DUST				0x40000		// leave a dust trail when walking on this surface
#define	SURF_Q3_SNOW				0x80000		// QL: snow surface
#define	SURF_Q3_WOOD				0x100000	// QL: wood surface
