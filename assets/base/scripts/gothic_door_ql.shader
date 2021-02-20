textures/gothic_door/archpart1_trans
{
	qer_editorimage textures/gothic_door/archpart1.tga 
	surfaceparm nonsolid
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_door/archpart1.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_door/door02_bred2_shiny
{              
	qer_editorimage textures/gothic_door/door02_bred2.tga 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_door/door02_bred2.tga
		blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/gothic_door/door02_eblue2_shiny
{              
	qer_editorimage textures/gothic_door/door02_eblue2.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_door/door02_eblue2.tga
		blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/gothic_door/door02_i_ornate5_fin
{
	qer_editorimage textures/gothic_door/door02_i_ornate5_fin.tga
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/gothic_door/door02_i_ornate5_fin.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_door/skullarch_b
{
	{
		map textures/sfx/firegorre.tga
            tcmod scroll 0 1
            tcMod turb 0 .25 0 5.6
            tcmod scale 1.5 1.5
            blendfunc GL_ONE GL_ZERO
            rgbGen identity
	}
	{
		map textures/gothic_door/skullarch_b.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/gothic_door/skullarch_combined_redglow
{
	qer_editorimage textures/gothic_door/skullarch_combined.tga
	{
		map textures/sfx/fireswirl2red.jpg
            tcmod scroll 0 1
            tcMod turb 0 .15 0 4
            tcmod scale 1.5 1.5
            blendfunc GL_ONE GL_ZERO
            rgbGen identity
	}
	{
		map textures/gothic_door/skullarch_combined.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/gothic_door/skullarch_combined_blueglow
{
	qer_editorimage textures/gothic_door/skullarch_combined.tga
	{
		map textures/sfx/fireswirl2blue.jpg
            tcmod scroll 0 1
            tcMod turb 0 .15 0 4
            tcmod scale 1.5 1.5
            blendfunc GL_ONE GL_ZERO
            rgbGen identity
	}
	{
		map textures/gothic_door/skullarch_combined.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}