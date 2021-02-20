# DarkMatter Engine


## Introduction
QUAKE communities have always been fractured as players gravitate towards a certain title. From Q1 to Q3, there are at least 1,500 quality community-made levels - many of which have either not received the acclaim they deserved or are slowly disappearing from online presence.

DarkMatter is a project that ultimately aims to provide a unified platform for enjoying the classic QUAKE titles in specially-made mods on a robust, high-performing and stable engine. It will be split into engine and game logic modules.
	
**Core features**
* A flexible filesystem for loading from multiple game bases, with automatic detection of game installation paths.
* Supporting maps and assets from QUAKE LIVE.
* OGG Vorbis codec
* Aspect-correct UI and expanded field of view for widescreens
* Entity override dumping and loading for servers to modify level items
* Detailed cvar descriptions straight from the console, min and max values for all appropriate cvars
* A number of added cvars and commands providing more customization and control

More information including features and installation available in the assets/docs directory.

**Quake3e features**:

* optimized OpenGL renderer
* optimized Vulkan renderer
* raw mouse input support, enabled automatically instead of DirectInput(**\in_mouse 1**) if available
* unlagged mouse events processing, can be reverted by setting **\in_lagged 1**
* **\in_minimize** - hotkey for minimize/restore main window (win32-only, direct replacement for Q3Minimizer)
* **\video-pipe** - to use external ffmpeg binary as an encoder for better quality and smaller output files
* significally reworked QVM (Quake Virtual Machine)
* improved server-side DoS protection, much reduced memory usage
* raized filesystem limits (up to 20.000 maps can be handled in a single directory)
* reworked Zone memory allocator, no more out-of-memory errors
* non-intrusive support for SDL2 backend (video,audio,input), selectable at compile time
* tons of bugfixes and other improvements

## Links
* https://github.com/ec-/Quake3e
* https://bitbucket.org/CPMADevs/cnq3
* https://github.com/ioquake/ioq3
* https://github.com/kennyalive/Quake-III-Arena-Kenny-Edition
* https://github.com/OpenArena/engine
