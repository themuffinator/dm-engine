textures/base_wall/atech1_alpha
{
	{
		map textures/sfx/hologirl.tga
		tcmod scale 2 .4
		tcmod scroll 6 .6
		blendfunc GL_ONE GL_ZERO
		rgbGen identity
	}
	{
		map textures/base_wall/atech1_alpha.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
}

textures/base_wall/atech1_e_merge1_trans
{
	qer_editorimage textures/base_wall/atech1_e_merge1.tga
	surfaceparm nonsolid
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_wall/atech1_e_merge1.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/base_wall/atechengine_ax
{
	q3map_lightimage textures/base_wall/atechengine_ax2.tga
	q3map_surfacelight 300  
	{
		map textures/sfx/proto_zzztpink.tga
		tcmod rotate 60
		tcMod turb 0 .5 0 9.6
		tcmod scale 2 2
		tcmod scroll 9 5
		blendfunc GL_ONE GL_ZERO
		rgbGen identity
	}
	{
		map textures/base_wall/atechengine_ax.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_wall/basewall01_ow
{
	q3map_lightimage textures/base_wall/basewall01_owfx.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/basewall01_ow.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_wall/basewall01_owfx.tga
		blendfunc add
		rgbGen wave sin .5 0.5 0 .5
	}       
}

textures/base_wall/basewall01bit
{
	q3map_lightimage textures/base_wall/basewall01bitfx.tga
	q3map_surfacelight 300
	{
		map textures/base_wall/basewall01bit.tga
		rgbGen identity
	}	      
	{
		map textures/base_wall/basewall01bitfx.tga
		blendfunc add
		tcmod scroll 3.3 1
		rgbGen wave sin .5 0.5 0 5
	}
	{
		map textures/effects/envmap2.tga
		tcGen environment
		tcmod scale 4 4
		blendfunc add
		rgbGen identity
	}
	{
		map textures/base_wall/basewall01bit.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}       
}

textures/base_wall/bluemetal1b_chrome
{
	qer_editorimage textures/base_wall/bluemetal1b_shiny.tga
	{
		map textures/base_wall/chrome_env2.tga
		rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}	
	{
		map textures/base_wall/bluemetal1b_shiny.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/cobalt_chrome
{
	qer_editorimage textures/base_wall/cobalt_shiny.tga
	{
		map textures/base_wall/chrome_env2.tga
		rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}	
	{
		map textures/base_wall/cobalt_shiny.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}
textures/base_wall/cobaltborder_chrome
{
	qer_editorimage textures/base_wall/cobaltborder_shiny.tga
	{
		map textures/base_wall/chrome_env2.tga
		rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}	
	{
		map textures/base_wall/cobaltborder_shiny.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/cobaltborder_orange
{
	qer_editorimage textures/base_wall/cobaltborder_orange.tga
	{
		map textures/base_wall/chrome_env2.tga
		rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}	
	{
		map textures/base_wall/cobaltborder_orange.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/concrete_darktrim_nonsolid
{
	qer_editorimage textures/base_wall/concrete_darktrim.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_wall/concrete_darktrim.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/base_wall/bluemetal1b_shiny
{
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/base_wall/bluemetal1b_shiny.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}		
}

textures/base_wall/bluemetal2_noisy
{
	qer_editorimage textures/base_wall/bluemetal2_shiny.tga
	surfaceparm metalsteps
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/base_wall/bluemetal2_shiny.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}			
}

textures/base_wall/bluemetal2_shiny
{
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/bluemetal2_shiny.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}		
}

textures/base_wall/bluemetal2_shiny_trans
{
	qer_editorimage textures/base_wall/bluemetal2_shiny.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/bluemetal2_shiny.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}		
}

textures/base_wall/bluemetalsupport2
{
	{
		map textures/base_wall/chrome_env2.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/bluemetalsupport2b
{
	q3map_surfacelight 100
	q3map_lightimage textures/base_wall/bluemetalsupport2bglow.tga
	{
		map textures/base_wall/chrome_env.tga
		rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2b.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_wall/bluemetalsupport2bglow.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 .2
	}
}

textures/base_wall/bluemetalsupport2c
{
	{
		map textures/base_wall/chrome_env2.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}	
	{
		map textures/base_wall/bluemetalsupport2c.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/bluemetalsupport2c_1
{
	

	{
		map textures/base_wall/chrome_env.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	
	{
		map textures/base_wall/bluemetalsupport2c_1.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/bluemetalsupport2c_1vent
{
	

	{
		map textures/base_wall/chrome_env.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	
	{
		map textures/base_wall/bluemetalsupport2c_1vent.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/bluemetalsupport2clight
{
	surfaceparm nomarks
	q3map_surfacelight 500

	

	{
		map textures/base_wall/chrome_env.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	
	{
		map textures/base_wall/bluemetalsupport2clight.tga
		blendfunc blend	
		rgbGen identity
	}
	
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}


	{
		map textures/base_wall/bluemetalsupport2clight.glow.tga
		blendfunc add
		rgbgen wave sawtooth .6 .1 0 4
	}
}

textures/base_wall/bluemetalsupport2d_1
{
	

	{
		map textures/base_wall/chrome_env.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	
	{
		map textures/base_wall/bluemetalsupport2d_1.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/bluemetalsupport2e
{
	qer_editorimage textures/base_wall/bluemetalsupport2e.tga
	{
		map textures/base_wall/chrome_env.tga
	    rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2e.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/bluemetalsupport2e_rusty_ns
{
	qer_editorimage textures/base_wall/bluemetalsupport2e_rusty_ns.jpg
	surfaceparm nonsolid

	{
		map textures/base_wall/chrome_env.tga
	    rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2e_rusty.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}


textures/base_wall/bluemetalsupport2e_rusty
{
	qer_editorimage textures/base_wall/bluemetalsupport2e_rusty.tga
	{
		map textures/base_wall/chrome_env.tga
	    rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2e_rusty.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/bluemetalsupport2e_ra
{
	qer_editorimage textures/base_wall/bluemetalsupport2e_ra.tga	
	{
		map textures/base_wall/chrome_env.tga
	    rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2e_ra.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}
textures/base_wall/bluemetalsupport2e_la
{
	qer_editorimage textures/base_wall/bluemetalsupport2e_la.tga
	{
		map textures/base_wall/chrome_env.tga
	    rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2e_la.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/bluemetalsupport2e_ns
{
	qer_editorimage textures/base_wall/bluemetalsupport2e.tga
	surfaceparm nonsolid
	{
		map textures/base_wall/chrome_env.tga
	    rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2e.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}
textures/base_wall/bluemetalsupport2e2
{
	qer_editorimage textures/base_wall/bluemetalsupport2e2.tga
	{
		map textures/base_wall/chrome_env.tga
	    rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2e2.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/bluemetalsupport2eye
{
	qer_editorimage textures/base_wall/bluemetalsupport2eye.tga
    surfaceparm nomarks
	q3map_surfacelight 300
	q3map_lightimage textures/base_wall/bluemetalsupport2eyel.tga
	{
		map textures/base_wall/chrome_env.tga
	    rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2eye.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_wall/bluemetalsupport2eyel.tga
		blendfunc add
		rgbgen wave triangle .5 .5 0 .5
	}
}

textures/base_wall/bluemetalsupport2f
{
	qer_editorimage textures/base_wall/bluemetalsupport2f.tga
	{
		map textures/base_wall/chrome_env.tga
	    rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_wall/bluemetalsupport2f.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/yellowmetalsupport2fline
{
	q3map_surfacelight 100
	qer_editorimage textures/base_wall/bluemetalsupport2fline.tga
	q3map_lightimage textures/base_wall/yellowmetalsupport2fline_glow.jpg

	{
		map textures/base_wall/chrome_env.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	
	{
		map textures/base_wall/bluemetalsupport2fline.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}

	{
		map textures/base_wall/yellowmetalsupport2fline_glow.jpg
		blendfunc add	
		rgbGen wave sin .5 .5 0 1	
	}


}

textures/base_wall/bluemetalsupport2fline
{
	q3map_surfacelight 100
	q3map_lightimage textures/base_wall/bluemetalsupport2fline_glow.tga

	{
		map textures/base_wall/chrome_env.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	
	{
		map textures/base_wall/bluemetalsupport2fline.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}

	{
		map textures/base_wall/bluemetalsupport2fline_glow.tga
		blendfunc add	
		rgbGen wave sin .5 .5 0 1	
	}


}

textures/base_wall/bluemetalsupport2ftv
{
	q3map_surfacelight 100
	q3map_lightimage textures/base_wall/bluemetalsupport2ftv_glow.tga

	{
		map textures/base_wall/chrome_env.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	
	{
		map textures/base_wall/bluemetalsupport2ftv.tga
		blendfunc blend	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}

	{
		map textures/base_wall/bluemetalsupport2ftv_glow.tga
		blendfunc add	
		rgbGen wave sawtooth .4 .05 0 10
	}


}

textures/base_wall/blumtlspt2b
{
	
	q3map_surfacelight 100
	q3map_lightimage textures/base_wall/blumtlspt2bglow.tga


	{
		map textures/base_wall/chrome_env.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	
	{
		map textures/base_wall/blumtlspt2b.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}


	{
		map textures/base_wall/bluemetalsupport2bglow.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 .2
	}
}

textures/base_wall/c_met5_2_trans
{
	qer_editorimage textures/base_wall/c_met5_2.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/base_wall/c_met5_2.tga
		rgbGen identity
		blendfunc filter

	
	}
}

textures/base_wall/chrome_metal
{
	{
		map textures/base_wall/chrome_env.tga
		tcGen environment
		tcmod scale .25 .25 
		
	}

	{
		map textures/base_wall/chrome_metal.tga
		blendfunc add
		detail
        	tcMod scale 0.0693 0.0712
		rgbGen identity
	}


	{
		map $lightmap
                rgbgen identity
		blendfunc filter
	   
	}

	
			
}

textures/base_wall/comp3
{
	q3map_lightimage textures/base_wall/comp3env.tga
	qer_editorimage textures/base_wall/comp3_qer.tga
        q3map_surfacelight 1000
        {
		map textures/base_wall/comp3text.tga
	        rgbGen identity
		tcmod scroll 3 1
	}
	      
        {
		map textures/base_wall/comp3env.tga
                tcGen environment
                blendfunc add
                rgbGen wave sin .98 .02 0 5
	}
	
	{
		map $lightmap
                tcGen environment
                blendfunc GL_DST_COLOR GL_ONE
	}


	{
		map textures/base_wall/comp3.tga
		blendfunc blend
		rgbGen identity
	}
       
	{
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
	
}       

textures/base_wall/comp3b
{
	q3map_lightimage textures/base_wall/comp3textb.tga
	qer_editorimage textures/base_wall/comp3b_qer.tga
        q3map_surfacelight 1000
        {
		map textures/base_wall/comp3textb.tga
	        rgbGen identity
		tcmod scroll 3 3
	}
	      
        {
		map textures/base_wall/comp3env.tga
                tcGen environment
                blendfunc add
                rgbGen wave sin .98 .02 0 5
	}
	
	{
		map $lightmap
                tcGen environment
                blendfunc GL_DST_COLOR GL_ONE
	}


	{
		map textures/base_wall/comp3b.tga
		blendfunc blend
		rgbGen identity
	}
       
	{
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}

}

textures/base_wall/comp3b_dark
{
	q3map_lightimage textures/base_wall/comp3textb.tga
	qer_editorimage textures/base_wall/comp3b_qer.tga
        q3map_surfacelight 1
        {
		map textures/base_wall/comp3textb.tga
	        rgbGen identity
		tcmod scroll 3 3
	}
	      
        {
		map textures/base_wall/comp3env.tga
                tcGen environment
                blendfunc add
                rgbGen wave sin .98 .02 0 5
	}
	
	{
		map $lightmap
                tcGen environment
                blendfunc GL_DST_COLOR GL_ONE
	}


	{
		map textures/base_wall/comp3b.tga
		blendfunc blend
		rgbGen identity
	}
       
	{
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}

}

textures/base_wall/comp3c
{
	qer_editorimage textures/base_wall/comp3c_qer.tga

        {
		map textures/base_wall/comp3env.tga
	        rgbGen identity
		tcGen environment
	}
	      
        {
		map $lightmap
                tcGen environment
                blendfunc add
	}

	{
		map textures/base_wall/comp3c.tga
		blendfunc blend
		rgbGen identity
	}

	{
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}

}
textures/base_wall/yconcrete_ow
{       
        qer_editorimage textures/base_wall/concrete_ow.tga
        {
		map textures/sfx/proto_zzztyellow.jpg
                tcMod turb 0 .5 0 9.6
                tcmod scale 2 2
                tcmod scroll 9 5
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/base_wall/concrete_ow.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}
textures/base_wall/concrete_ow
{       
        
        {
		map textures/sfx/proto_zzztblu2.tga
                tcMod turb 0 .5 0 9.6
                tcmod scale 2 2
                tcmod scroll 9 5
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/base_wall/concrete_ow.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_wall/dooreye
{
	surfaceparm nomarks
	q3map_surfacelight 300
	q3map_lightimage textures/base_wall/dooreyelight.tga

	
	{
		map $lightmap
		rgbGen identity
	}

	{
		map textures/base_wall/dooreye.tga
		blendfunc filter
		rgbGen identity
	}

	{
		map textures/base_wall/dooreyelight.tga
		blendfunc add
		rgbgen wave triangle .5 .5 0 .5
	}


}

textures/base_wall/dooreye2
{
	surfaceparm nomarks
	q3map_surfacelight 300
	q3map_lightimage textures/base_wall/dooreyelight.tga

	
	{
		map $lightmap
		rgbGen identity
	}

	{
		map textures/base_wall/dooreye2.tga
		blendfunc filter
		rgbGen identity
	}

	{
		map textures/base_wall/dooreyelight.tga
		blendfunc add
		rgbgen wave triangle .5 .5 0 .5
	}


}

textures/base_wall/dooreye3
{
	surfaceparm nomarks
	q3map_surfacelight 300
	q3map_lightimage textures/base_wall/dooreyelight.tga

	
	{
		map $lightmap
		rgbGen identity
	}

	{
		map textures/base_wall/dooreye3.tga
		blendfunc filter
		rgbGen identity
	}

	{
		map textures/base_wall/dooreyelight.tga
		blendfunc add
		rgbgen wave triangle .5 .5 0 .5
	}


}

textures/base_wall/girders1i_yellofin
{
	qer_editorimage textures/base_wall/girders1i_yellodark_fin.tga
	surfaceparm	metalsteps	
    	surfaceparm trans	
	surfaceparm alphashadow
	surfaceparm playerclip
   	surfaceparm nonsolid
	surfaceparm nomarks	
	cull none
        nopicmip
	{
		map textures/base_wall/girders1i_yellodark_fin.tga
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

textures/base_wall/glass01
{
	qer_editorimage textures/base_wall/shiny3.tga
	surfaceparm trans	
	cull none
	qer_trans 	0.5
	sort 7
	{
		map textures/effects/tinfx.tga
		tcgen environment
		blendfunc add
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
}

textures/base_wall/glass02
{
	qer_editorimage textures/base_wall/shiny3.tga
	surfaceparm trans
	cull none
	sort 7
	{
		map textures/effects/tinfx3.tga
		tcgen environment
		tcmod scale 0.85 0.85
		blendfunc add
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
}

textures/base_wall/glass_frame
{
     cull none
     surfaceparm alphashadow
        {
		map textures/effects/tinfx2.tga
                blendfunc add
                tcgen environment
                rgbGen identity
	}
	{
		map textures/base_wall/glass_frame.tga
                alphaFunc GE128
                depthWrite
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}

}

textures/base_wall/grill
{
	{
		map textures/base_wall/chrome_env.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}	
	{
		map textures/base_wall/grill.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/little_spooky
{
	qer_editorimage textures/base_wall/cobalt_scratch.tga
	surfaceparm nonsolid
	cull none

	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/cobalt_scratch.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}		
}


textures/base_wall/little_spooky_chrome
{
	qer_editorimage textures/base_wall/cobalt_scratch2.tga

	{
		map textures/base_wall/chrome_env2.tga
	        rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	
	{
		map textures/base_wall/cobalt_scratch2.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA	
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_wall/main_q3abanner
{
	q3map_lightimage textures/base_wall/main_q3abanner.tga
        q3map_surfacelight 100


	{
		map textures/base_wall/main_q3abanner.tga
	        rgbGen wave square 0 1 0 .5
	}

	{
		map textures/base_wall/comp3text.tga
		blendfunc add
	        rgbGen identity
		tcmod scroll 3 3
	}

	{
		map textures/base_wall/comp3textb.tga
		blendfunc add
	        rgbGen identity
		tcmod scroll 3 3
	}


	{
		map $lightmap
	        rgbGen identity
		blendfunc filter
	}

	{
		map $lightmap
		tcgen environment
		tcmod scale .5 .5
	        rgbGen wave sin .25 0 0 0
		blendfunc add
	}	          		
}     

textures/base_wall/medal_impressive
{
	qer_editorimage textures/base_wall/medal_impressive.tga
        q3map_surfacelight 100
	
	
	{
		animMap .25 textures/base_wall/medal_impressive.tga textures/base_wall/medal_gauntlet.tga textures/base_wall/medal_excellent.tga textures/base_wall/medal_accuracy.tga textures/base_wall/medal_victory.tga textures/base_wall/medal_frags.tga
		rgbGen wave sawtooth 0 1 0 .25
	
	}

	{
		map textures/base_wall/comp3textd.tga
		blendfunc add
		tcmod scroll 5 .25
		rgbGen wave inversesawtooth 0 1 0 .25
	}

	{
		map textures/base_wall/chrome_env.tga
		tcgen environment
		tcmod scale .5 .5
		blendfunc add
		rgbgen wave triangle .5 .05 0 10
	}

	{
		map textures/base_wall/comp3frame.tga
		blendfunc blend
		rgbgen identity
	}

	{
		map $lightmap
	        rgbGen identity
		blendfunc filter
	}

	          		
} 

textures/base_wall/metal_bordered
{
	qer_editorimage textures/base_wall/metal_bordered_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_bordered.tga
		blendfunc filter
	}
}

textures/base_wall/metal_borderedends
{
	qer_editorimage textures/base_wall/metal_borderedends_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_borderedends.tga
		blendfunc filter
	}
}

textures/base_wall/metal_darktone
{
	qer_editorimage textures/base_wall/metal_darktone_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_darktone.tga
		blendfunc filter
	}
}

textures/base_wall/metal_darktone_bordered
{
	qer_editorimage textures/base_wall/metal_darktone_bordered_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_darktone_bordered.tga
		blendfunc filter
	}
}

textures/base_wall/metal_lighttone
{
	qer_editorimage textures/base_wall/metal_lighttone_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_lighttone.tga
		blendfunc filter
	}
}

textures/base_wall/metal_pipegrooved
{
	qer_editorimage textures/base_wall/metal_pipegrooved_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_pipegrooved.tga
		blendfunc filter
	}
}

textures/base_wall/metal_twotone
{
	qer_editorimage textures/base_wall/metal_twotone_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_twotone.tga
		blendfunc filter
	}
}

textures/base_wall/metal_vertstripe_btm
{
	qer_editorimage textures/base_wall/metal_vertstripe_btm_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_vertstripe_btm.tga
		blendfunc filter
	}
}

textures/base_wall/metal_vertstripe_mid
{
	qer_editorimage textures/base_wall/metal_vertstripe_mid_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_vertstripe_mid.tga
		blendfunc filter
	}
}

textures/base_wall/metal_vertstripe_top
{
	qer_editorimage textures/base_wall/metal_vertstripe_top_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_wall/metal_vertstripe_top.tga
		blendfunc filter
	}
}

textures/base_wall/metalfloor_wall_cobalt_specular
{
	qer_editorimage textures/base_wall/metalfloor_wall_cobalt_specular.tga
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/metalfloor_wall_cobalt_specular.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/base_wall/metalfloor_wall_cobalt_specular_red
{
	qer_editorimage textures/base_wall/metalfloor_wall_cobalt_specular_red.tga
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/metalfloor_wall_cobalt_specular_red.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/base_wall/metalfloor_wall_12_trans
{
	qer_editorimage textures/base_wall/metalfloor_wall_12.tga
	surfaceparm nonsolid
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_wall/metalfloor_wall_12.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/base_wall/metalfloor_wall_14_specular
{
	qer_editorimage textures/base_wall/metalfloor_wall_14_specular.tga
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/metalfloor_wall_14_specular.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/base_wall/metalfloor_wall_15ow
{
        {
		map textures/base_wall/metalfloor_wall_15ow.tga
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
        }
	
        {
		map textures/sfx/hologirl.tga
                tcmod scale 2 .4
                tcmod scroll 6 .6
                //tcMod turb 0 .1 0 .01
                blendfunc add
                rgbGen identity
                
	}
	{
		map textures/base_wall/metalfloor_wall_15ow.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
		blendfunc filter
                //blendfunc dst_color gl_zero                                             
	}

}

textures/base_wall/metaltech09_blackfin_trans
{
	surfaceparm nonsolid
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_wall/metaltech09_blackfin.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/base_wall/metaltech12darkfinal_trans
{
	surfaceparm nonsolid
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_wall/metaltech12darkfinal.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/base_wall/ymetaltechgeomtrn
{

	qer_editorimage textures/base_wall/metaltechgeomtrn.tga
        {
		map textures/sfx/firegorre2.jpg
                tcmod scroll 0 1
                tcMod turb 0 .25 0 1.6
                tcmod scale 2 2
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
	        map textures/base_wall/metaltechgeomtrn.tga
                blendfunc blend
                tcmod rotate 30
                tcMod stretch sin .8 0.2 0 .2
	        rgbGen identity
	}
        {
	        map textures/base_wall/metaltechgeomtrn2.tga
		blendfunc blend
                tcmod rotate 20
                tcMod stretch sin .8 0.2 0 .1
	        rgbGen identity
	}
	{
	        map textures/base_wall/metaltechgeomtrn.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_wall/metaltechgeomtrn
{


        {
		map textures/sfx/fire_ctfblue.tga
                tcmod scroll 0 1
                tcMod turb 0 .25 0 1.6
                tcmod scale 2 2
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
	        map textures/base_wall/metaltechgeomtrn.tga
                blendfunc blend
                tcmod rotate 30
                tcMod stretch sin .8 0.2 0 .2
	        rgbGen identity
	}
        {
	        map textures/base_wall/metaltechgeomtrn2.tga
		blendfunc blend
                tcmod rotate 20
                tcMod stretch sin .8 0.2 0 .1
	        rgbGen identity
	}
	{
	        map textures/base_wall/metaltechgeomtrn.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_wall/metaltechgeomtrn_red
{
	qer_editorimage textures/base_wall/metaltechgeomtrn.tga
    {
		map textures/sfx/fire_ctfred.tga
        tcmod scroll 0 1
        tcMod turb 0 .25 0 1.6
        tcmod scale 2 2
        blendfunc GL_ONE GL_ZERO
        rgbGen identity
	}
    {
        map textures/base_wall/metaltechgeomtrn.tga
        blendfunc blend
        tcmod rotate 30
        tcMod stretch sin .8 0.2 0 .2
		rgbGen identity
	}
    {
        map textures/base_wall/metaltechgeomtrn2.tga
		blendfunc blend
        tcmod rotate 20
        tcMod stretch sin .8 0.2 0 .1
        rgbGen identity
	}
	{
        map textures/base_wall/metaltechgeomtrn.tga
		blendfunc blend
        rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_wall/patch10shiny
{
	qer_editorimage textures/base_wall/patch10_beatup4_alpha.tga
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/patch10_beatup4_alpha.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}

			
}

textures/base_wall/patch10shiny_trans
{
	qer_editorimage textures/base_wall/patch10_beatup4_alpha.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/patch10_beatup4_alpha.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/base_wall/protobanner
{
	cull disable
	surfaceparm alphashadow
	surfaceparm trans	
	surfaceparm nomarks
	tessSize 64
	deformVertexes wave 30 sin 0 3 0 .2
	deformVertexes wave 100 sin 0 3 0 .7
     
	{
		map textures/base_wall/protobanner.tga
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

textures/base_wall/protobanner_nonsolid
{
	qer_editorimage textures/base_wall/protobanner.tga
	cull disable
	surfaceparm nonsolid
	surfaceparm alphashadow
	surfaceparm trans	
	surfaceparm nomarks
	tessSize 64
	deformVertexes wave 30 sin 0 3 0 .2
	deformVertexes wave 100 sin 0 3 0 .7
     
	{
		map textures/base_wall/protobanner.tga
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

textures/base_wall/protobanner_ow
{
     cull disable
     surfaceparm alphashadow
     surfaceparm trans	
     surfaceparm nomarks
     deformVertexes wave 100 sin 0 1 0 .1
     deformVertexes wave 100 sin 0 1 0 .2
     
        {
                map textures/base_wall/protobanner_ow.tga
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

textures/base_wall/protobanner_still
{
     qer_editorimage textures/base_wall/protobanner.tga
     cull disable
     surfaceparm alphashadow
     surfaceparm trans	
     surfaceparm nomarks
     tessSize 64
     //deformVertexes wave 30 sin 0 3 0 .2
     //deformVertexes wave 100 sin 0 3 0 .7
     
        {
                map textures/base_wall/protobanner.tga
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

textures/base_wall/q3tourneyscreen
{
	qer_editorimage textures/base_wall/q3tourney1.tga
        q3map_surfacelight 100
	
	

	{
		animMap .25 textures/base_wall/q3tourney1.tga textures/base_wall/q3tourney2.tga textures/base_wall/q3tourney3.tga textures/base_wall/q3tourney4.tga textures/base_wall/q3tourney5.tga
		rgbGen wave sawtooth 0 1 0 .25
	
	}

	{
		map textures/base_wall/comp3textd.tga
		blendfunc add
		rgbGen wave inversesawtooth 0 1 0 .25
		tcmod scroll 5 .25 
	}

	{
		map textures/base_wall/chrome_env.tga
		tcgen environment
		tcmod scale .5 .5
		blendfunc add
		rgbgen wave triangle .5 .05 0 10
	}

	{
		map textures/base_wall/comp3frame.tga
		blendfunc blend
		rgbgen identity
	}

	{
		map $lightmap
	        blendfunc filter
		rgbgen identity
	}
	          		
}     

textures/base_wall/shinybluemetal1
{

	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/shinybluemetal1.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}

			
}

textures/base_wall/shinygrate1_4
{

	{
		map $lightmap
		tcgen environment
		tcmod scale .25 .25
		rgbgen identity      
	}
		
	
	{
		map textures/base_wall/shinygrate1_4.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		rgbGen identity
	}


	{
		map $lightmap
    		rgbgen identity
		blendfunc filter
	}

			
}

textures/base_wall/steed1gf
{
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/base_wall/steed1gf.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}

			
}

textures/base_wall/symbol_bluelt1   
{
	q3map_lightimage textures/base_wall/symbol_bluelt1_mask.tga
	q3map_surfacelight 100
//	light 1

	{
		map $lightmap
		rgbGen identity
	}

	
	{
		map textures/base_wall/symbol_bluelt1.tga
		blendfunc filter
		rgbgen identity
	}
	
	{
		map textures/base_wall/symbol_bluelt1_mask.tga
		blendfunc add
		rgbgen wave sawtooth .2 .05 0 7
	}
}

textures/base_wall/train1
{
	{
		map textures/base_wall/chrome_env.tga
        tcGen environment
		tcmod scale .25 .1 
		rgbGen identity   
	}
	{
		map textures/base_wall/train1.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}	
}
textures/base_wall/shinygrate1_4_glow
{
	q3map_lightimage textures/base_wall/shinygrate1_4_glow_light2.tga
	q3map_surfacelight 100
	q3map_lightsubdivide 32 
	{
		map textures/sfx/electricslime.tga
		rgbGen wave sin .5 .5 0 1
		tcmod scale .25 .25
		tcMod scroll -10 -1
	}
	{
		map textures/base_wall/shinygrate1_4_glow.tga
		blendfunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
  		rgbgen identity
		blendfunc filter
	}
	{
		map textures/base_wall/shinygrate1_4_glow_light2.tga
		blendfunc add
		rgbGen wave triangle .2 .01 0 10
	}
}
