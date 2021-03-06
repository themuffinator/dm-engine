textures/organics/dirt_trans
{
	qer_editorimage textures/organics/dirt.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/organics/dirt.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/organics/wire02a_f	
{
	q3map_surfacelight 200
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/organics/wire02a_f.tga
		blendfunc filter
		rgbGen identity
	}
}