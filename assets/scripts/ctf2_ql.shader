textures/ctf2/blue_banner01
{       	
	surfaceparm alphashadow
	cull none
	{
		map textures/ctf2/blue_banner01.tga
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
    {
		map textures/ctf2/b_dummy.tga
		blendfunc add
		rgbGen wave sin 1 .5 0 .5              
	}
}

textures/ctf2/blue_pennant
{
	DeformVertexes autosprite2
    tessSize 64
    deformVertexes wave 128 sin 0 5 0 .2
    deformVertexes normal .5 .2
    surfaceparm nomarks
	surfaceparm nolightmap
    {
		map textures/ctf2/blue_pennant.tga
		rgbGen identity
	}
    {
		map textures/ctf2/blue_pennant.tga
        blendfunc blend
		rgbGen identity
	}
}

textures/ctf2/blue_techsign01
{       	
	surfaceparm alphashadow
	cull none
	{
		map textures/ctf2/blue_techsign01.tga
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
	{
		map textures/ctf2/b_dummy.tga
		blendfunc add
		rgbGen wave sin 1 .5 0 .5       
	}
}

textures/ctf2/blueteam01
{        
	cull none
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nomarks
	{
	  	map textures/ctf2/blueteam01.tga
		blendfunc GL_SRC_ALPHA GL_ONE 
		rgbGen wave sin .2 .5 0 .2
	}
}

textures/ctf2/blueteam02
{      
    qer_editorimage textures/ctf2/blueteam01.tga 	
	cull none
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nomarks
	{
	  	map textures/ctf2/blueteam01.tga
		blendfunc GL_SRC_ALPHA GL_ONE
		rgbGen wave sin .5 .25 0 .2
	}
}

textures/ctf2/blueteam03
{      
    qer_editorimage textures/ctf2/blueteam03.tga 	
	polygonOffset
	qer_trans 0.5
	sort 6
	surfaceparm nolightmap
	surfaceparm pointlight
	surfaceparm nomarks
	surfaceparm trans
	cull none
	nopicmip
	{
	  	map textures/ctf2/blueteam03.tga
		blendfunc add
		rgbgen vertex
		depthWrite
	}
}

textures/ctf2/blueteamscore
{       	
	cull none
    surfaceparm nolightmap
    surfaceparm trans
    surfaceparm nomarks
	{
		map textures/ctf2/blueteam01.tga
		blendfunc add          
	}
}

textures/ctf2/orange_banner02
{
	qer_editorimage textures/ctf2/orange_banner02.tga
	surfaceparm alphashadow
	cull none
	{
		map textures/ctf2/orange_banner02.tga
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

textures/ctf2/red_banner02
{
	qer_editorimage textures/ctf2/red_banner02.tga
	surfaceparm alphashadow
	cull none
	{
		map textures/ctf2/red_banner02.tga
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

textures/ctf2/blue_banner02
{
	qer_editorimage textures/ctf2/blue_banner02.tga
	surfaceparm alphashadow
	cull none
	{
		map textures/ctf2/blue_banner02.tga
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

textures/ctf2/red_banner02_nonsolid
{   
	qer_editorimage textures/ctf2/red_banner02.tga
	surfaceparm alphashadow
	surfaceparm nonsolid
	cull none
	{
		map textures/ctf2/red_banner02.tga
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

textures/ctf2/blue_banner02_nonsolid
{
	qer_editorimage textures/ctf2/blue_banner02.tga
	surfaceparm alphashadow
	surfaceparm nonsolid
	cull none
	{
		map textures/ctf2/blue_banner02.tga
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

textures/ctf2/jaildr_bluescroll
{
	qer_editorimage textures/ctf2/jaildr_blue.tga
	q3map_lightimage textures/ctf2/jaildr_blue.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf2/jaildr_blue.tga
		blendfunc filter
		tcMod scroll 0 -.25
		rgbGen identity
	}
	{
		map textures/ctf2/jaildr_blue.blend.tga
		rgbGen wave sin 0.5 0.5 1 1
		tcMod scroll 0 -.25
		blendfunc add
	}
}

textures/ctf2/pj_baseboardr
{
	{
		map textures/ctf2/pj_baseboardr.tga
        rgbGen identity
    }
    {
	    map $lightmap
        blendfunc filter
	    rgbGen identity
	}
    {
		map textures/ctf2/pj_baseboardr_l.tga
        blendfunc add
        rgbGen wave sin .9 .5 0 .1
    }
}

textures/ctf2/pj_baseboardb
{
	{
		map textures/ctf2/pj_baseboardb.tga
        rgbGen identity
    }
    {
        map $lightmap
        blendfunc filter
        rgbGen identity
	}
    {
		map textures/ctf2/pj_baseboardb_l.tga
        blendfunc add
        rgbGen wave sin .9 .5 0 .1
    }	
}

textures/ctf2/orangeteam01
{        
	cull none
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nomarks
	{
	  	map textures/ctf2/orangeteam01.tga
		blendfunc GL_SRC_ALPHA GL_ONE
		rgbGen wave sin .2 .5 0 .2
	}
}

textures/ctf2/redteam01
{        
	cull none
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nomarks
	{
	  	map textures/ctf2/redteam01.tga
		blendfunc GL_SRC_ALPHA GL_ONE
		rgbGen wave sin .2 .5 0 .2
	}
}

textures/ctf2/redteam02
{      
    qer_editorimage textures/ctf2/redteam01.tga 
	cull none
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nomarks
	{
	  	map textures/ctf2/redteam01.tga
		blendfunc GL_SRC_ALPHA GL_ONE
		rgbGen wave sin .5 .25 0 .2
	}
}

textures/ctf2/redteam03
{      
    qer_editorimage textures/ctf2/redteam03.tga	
	polygonOffset
	qer_trans 0.5
	sort 6
	surfaceparm nolightmap
	surfaceparm pointlight
	surfaceparm nomarks
	surfaceparm trans
	cull none
	nopicmip
	{
	  	map textures/ctf2/redteam03.tga
		blendfunc add
		rgbgen vertex
		depthWrite
	}
}

textures/ctf2/redteamscore
{       	
	cull none
    surfaceparm nolightmap
    surfaceparm trans
    surfaceparm nomarks
	{
		map textures/ctf2/redteam01.tga
		blendfunc add
                  
	}
}

textures/ctf2/test2_trans_vert
{
	qer_editorimage textures/ctf/test2.tga
	surfaceparm nonsolid
	surfaceparm pointlight
  	{
		map textures/ctf/test2.tga 
		rgbGen vertex
	}
}

textures/ctf2/test2_r_trans_vert
{
	qer_editorimage textures/ctf/test2_r.tga
	surfaceparm nonsolid
	surfaceparm pointlight
  	{
		map textures/ctf/test2_r.tga 
		rgbGen vertex
	}
}

textures/ctf2/tin_redpanel
{    
    surfaceparm	metalsteps	
    qer_editorimage textures/proto2/tin_panel.tga  
    {
		map textures/effects/envmapred.tga
        tcGen environment
        blendfunc GL_ONE GL_ZERO
        rgbGen identity
	}
    {
		map textures/proto2/tin_panel.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc filter
		rgbGen identity
	}
}
textures/ctf2/tin_blupanel
{    
    surfaceparm	metalsteps	
    qer_editorimage textures/proto2/tin_panel.tga    
    {
		map textures/effects/envmapblue.tga
        tcGen environment
        blendfunc GL_ONE GL_ZERO
        rgbGen identity
	}
    {
		map textures/proto2/tin_panel.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc filter
		rgbGen identity
	}
}

textures/ctf2/white_banner01
{
	qer_editorimage textures/ctf2/white_banner01.tga
	surfaceparm alphashadow
	cull none
	{
		map textures/ctf2/white_banner01.tga
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

textures/ctf2/white_banner01_nonsolid
{
	qer_editorimage textures/ctf2/white_banner01.tga
	surfaceparm alphashadow
	surfaceparm nonsolid
	cull none
	{
		map textures/ctf2/white_banner01.tga
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

textures/ctf2/xblueteam01
// non flashy version
{       	
	qer_editorimage textures/ctf2/blueteam01.tga
	cull none
    surfaceparm nolightmap
    surfaceparm trans
    surfaceparm nomarks
	{
		map textures/ctf2/blueteam01.tga
		blendfunc GL_SRC_ALPHA GL_ONE 
		rgbgen identity                  
	}
}

textures/ctf2/xredteam01
// Non Flashy version
{       	
	qer_editorimage textures/ctf2/redteam01.tga
	cull none
    surfaceparm nolightmap
    surfaceparm trans
    surfaceparm nomarks
	{
		map textures/ctf2/redteam01.tga
		blendfunc GL_SRC_ALPHA GL_ONE
		rgbgen identity
	}
}