textures/base_door/shinymetaldoor
{
	{
		map textures/base_wall/chrome_env.tga
            tcGen environment
		tcmod scale .25 .25 
		rgbGen identity   
	}	
	{
		map textures/base_door/shinymetaldoor.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		rgbGen identity
	}
	{
		map textures/base_door/quake3sign.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}	
} 

textures/base_door/shinymetaldoor_outside
{
	{
		map textures/base_wall/chrome_env.tga
            tcGen environment
		tcmod scale .25 .25 
		rgbGen identity   
	}		
	{
		map textures/base_door/shinymetaldoor_outside.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		rgbGen identity
	}
	{
		map textures/base_door/quake3sign_outside.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}		
} 

textures/base_door/shinymetaldoor_outside3a2
{
	{
		map textures/base_wall/chrome_env.tga
            tcGen environment
		tcmod scale .25 .25 
		rgbGen identity   
	}		
	{
		map textures/base_door/shinymetaldoor_outside3a2.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
	{
		map textures/base_door/shinymetaldoor_outside3glow.tga
		blendfunc add
		rgbGen wave sin .9 .1 0 5
	}	
}

textures/base_door/kcdm18_combinedshiny
{
	qer_editorimage textures/base_door/kcdm18_combined.tga
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_door/kcdm18_combined.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}

			
}