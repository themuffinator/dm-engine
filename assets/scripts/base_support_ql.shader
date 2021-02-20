textures/base_support/basic1_1_nonsolid
{
	qer_editorimage textures/base_support/basic1_1.tga	
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_support/basic1_1.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/base_support/metal_support3
{
    	surfaceparm trans	
	surfaceparm alphashadow
   	surfaceparm nonsolid
	surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/metal_support3.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}


textures/base_support/metal_support
{
    	surfaceparm trans	
	surfaceparm alphashadow
   	surfaceparm nonsolid
	surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/metal_support.png
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/base_support/metal_support2
{
    	surfaceparm trans	
	surfaceparm alphashadow
   	surfaceparm nonsolid
	surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/metal_support2.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}


textures/base_support/cable_trans
{
	
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/base_support/cable_trans.tga
		rgbGen identity
		blendfunc filter

	
	}
}

textures/base_support/grate1_3
{

	{
		map $lightmap
		rgbgen identity      
	}

	{
		map textures/base_support/grate1_3.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		alphaGen lightingSpecular
		rgbGen identity
	}
				
}

textures/base_support/pj_metal14_1
//Paul Jaquays uses this on the tops of metal frameworks
{
	qer_editorimage textures/base_support/metal14_1.tga
	surfaceparm	metalsteps		

	// metal that makes metalsteps sound
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_support/metal14_1.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/base_support/support1rust
{
	//deformVertexes wave 100 sin 3 2 .1 3
        {
		rgbGen identity
		map $lightmap
	}
	{
		map textures/base_support/support1rust.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_trim/tinfx.tga
                tcgen environment
		blendfunc add
		rgbGen identity
	}
       
        {
		map textures/base_support/support1rust.tga
		//blendfunc add
                blendfunc filter
		rgbGen identity
	}
}

textures/base_support/support1shiny
{   
    
        {
                map textures/effects/tinfx.tga       
                tcGen environment
                rgbGen identity
	}   
        {
		map textures/base_support/support1shiny.tga
                blendfunc blend
		rgbGen identity
	} 
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}


textures/base_support/support2rust
{
	qer_editorimage textures/base_support/support1rust.tga
        {
		rgbGen identity
		map $lightmap
	}
	{
		map textures/base_support/support1rust.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/base_support/x_support
{
	qer_editorimage textures/base_support/x_support.tga
	surfaceparm	metalsteps	
	surfaceparm trans	
	surfaceparm alphashadow
    surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/x_support.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/base_support/x_support_nonsolid
{
	qer_editorimage textures/base_support/x_support.tga
	surfaceparm	metalsteps	
	surfaceparm trans	
	surfaceparm alphashadow
	surfaceparm nomarks	
	surfaceparm nonsolid
	cull none
        nopicmip
	{
		map textures/base_support/x_support.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/base_support/x_support2
{
	surfaceparm	metalsteps	
    	surfaceparm trans	
	surfaceparm alphashadow
	surfaceparm playerclip
   	surfaceparm nonsolid
	surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/x_support2.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/base_support/x_support4
{
	surfaceparm	metalsteps	
    	surfaceparm trans	
	surfaceparm alphashadow
	surfaceparm playerclip
   	surfaceparm nonsolid
	surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/x_support4.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/base_support/x_support_cobalt
{
	surfaceparm	metalsteps	
    	surfaceparm trans	
	surfaceparm alphashadow
	surfaceparm playerclip
   	surfaceparm nonsolid
	surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/x_support_cobalt.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}
textures/base_support/x_support_cobalt_half
{
	surfaceparm	metalsteps	
    	surfaceparm trans	
	surfaceparm alphashadow
	surfaceparm playerclip
   	surfaceparm nonsolid
	surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/x_support_cobalt_half.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/base_support/x_support3
{
	surfaceparm	metalsteps	
	surfaceparm trans	
	surfaceparm alphashadow
    surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/x_support3.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/base_support/z_support
{
	surfaceparm	metalsteps	
    surfaceparm trans	
	surfaceparm alphashadow
    surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_support/z_support.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

