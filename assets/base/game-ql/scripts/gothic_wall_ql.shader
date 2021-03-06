textures/gothic_wall/iron01_m
{
	qer_editorimage textures/gothic_wall/iron01_m.tga
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/gothic_wall/iron01_m.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_wall/iron01_ndark
{
	qer_editorimage textures/gothic_wall/iron01_ndark.tga
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/gothic_wall/iron01_ndark.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_wall/streetbricks10_shiny
{
	qer_editorimage textures/gothic_wall/streetbricks11.tga
	q3map_globaltexture
	sort opaque
	{
		map $lightmap 
		tcmod scale 2 2
		rgbgen identity
	}
	{
		map textures/gothic_wall/streetbricks11.tga
		rgbGen identity
		blendfunc gl_one gl_src_color
	}	
	{
		map $lightmap 
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_wall/window_evil6a
{
	q3map_lightimage textures/gothic_wall/window_evil6a_glow.tga
	q3map_surfacelight 50
	{
		map $lightmap
		rgbGen identity
	}	
	{
		map textures/gothic_wall/window_evil6a.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_wall/window_evil6a_glow.tga
		blendfunc add
		rgbGen identity
	}	
}

textures/gothic_wall/window_evil6a_merge
{
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_wall/window_evil6a_merge.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/gothic_wall/window_evil6a_glow_merge.tga
		blendfunc add
	}
}

textures/gothic_wall/xoct20c_shiney
{
	qer_editorimage textures/gothic_wall/xoct20c_shiney.tga
	{
		map $lightmap
		rgbgen identity      
	}	
	{
		map textures/gothic_wall/xoct20c_shiney.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_wall/xpipecolumn_gray_shiny
{    
	{
		map textures/effects/tinfx.tga       
            tcGen environment
            rgbGen identity
	}   
      {
		map textures/gothic_wall/xpipecolumn_gray_shiny.tga
            blendfunc blend
		rgbGen identity
	} 
      {
		map $lightmap
            blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}