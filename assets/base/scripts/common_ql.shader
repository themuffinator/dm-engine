textures/common/black_nonsolid
{
	qer_editorimage textures/common/black.tga
	surfaceparm nonsolid
	qer_trans 0.75
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/common/black.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/common/blackout
{
	qer_editorimage textures/common/black.tga
	surfaceParm nolightmap  
	surfaceparm nomarks
	{
		map textures/common/black.tga
		rgbGen vertex
	}
}
