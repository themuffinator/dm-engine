textures/base_trim/border11cx_r
{
	qer_editorimage textures/base_trim/border11c.tga
	q3map_lightimage textures/base_trim/border11c_light.tga
	q3map_surfacelight 200
	
	{
		map textures/base_trim/border11c.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/base_trim/border11c_light.tga
		blendfunc add
		rgbgen wave sin 1 .1 0 5
	}
	{
		map textures/base_trim/border11c_pulse1r.tga
		blendfunc add
		tcmod scale .035 1
		tcmod scroll -0.65 0
	}
}

textures/base_trim/border11cx_b
{
	qer_editorimage textures/base_trim/border11c.tga
	q3map_lightimage textures/base_trim/border11c_light.tga
	q3map_surfacelight 200
	
	{
		map textures/base_trim/border11c.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/base_trim/border11c_light.tga
		blendfunc add
		rgbgen wave sin 1 .1 0 5
	}
	{
		map textures/base_trim/border11c_pulse1b.tga
		blendfunc add
		tcmod scale .035 1
		tcmod scroll -0.65 0

	}
}

textures/base_trim/black_lacquer
{

	{
		map textures/effects/tinfx2.tga
		rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/base_trim/black_lacquer.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/base_trim/border11_250
{
	qer_editorimage textures/base_trim/border11light.tga
	q3map_surfacelight 250
	q3map_lightimage textures/base_trim/border11light.glow.tga	
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_trim/border11light.tga
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/base_trim/border11light.glow.tga
		blendfunc add
		rgbgen wave sin .9 .1 0 10
	}
}

textures/base_trim/border11light
{
	q3map_surfacelight 500
	Q3map_lightimage textures/base_trim/border11light.glow.tga	
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_trim/border11light.tga
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/base_trim/border11light.glow.tga
		blendfunc add
		rgbgen wave sin .9 .1 0 10
	}
}

textures/base_trim/border12b
{
	q3map_surfacelight 1000	
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_trim/border12b.tga
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/base_trim/border12bfx.tga
		blendfunc add
	}
}

textures/base_trim/border12b_pj
{
	qer_editorimage textures/base_trim/border12b.tga
	q3map_surfacelight 150	
	q3map_lightimage textures/base_trim/border12bfx.tga	
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_trim/border12b.tga
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/base_trim/border12bfx.tga
		blendfunc add
	}
}

textures/base_trim/copper_shiny
{   
 	{
               map textures/effects/copperfx.tga       
               tcGen environment
               rgbGen identity
	}
	{
		map textures/base_trim/copper_shiny.tga
                blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/copper_shiny_nonsolid
{   
	qer_editorimage textures/base_trim/copper_shiny.tga
	surfaceparm nonsolid
 	{
               map textures/effects/copperfx.tga       
               tcGen environment
               rgbGen identity
	}
	{
		map textures/base_trim/copper_shiny.tga
                blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/dark_tin2
{   
   
        {
                map textures/effects/tinfx.tga       
                tcGen environment
                rgbGen vertex
	}  
        {
		map textures/base_trim/dark_tin2.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
         
}

textures/base_trim/dark_tin2_trans
{  
	qer_editorimage textures/base_trim/dark_tin2.tga
	surfaceparm nonsolid
   
        {
                map textures/effects/tinfx.tga       
                tcGen environment
                rgbGen vertex
	}  
        {
		map textures/base_trim/dark_tin2.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
         
}

textures/base_trim/darktrim_nonsolid
{
	qer_editorimage textures/base_trim/darktrim.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_trim/darktrim.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/base_trim/deeprust_trans
{
	qer_editorimage textures/base_trim/deeprust.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/base_trim/deeprust.tga
		rgbGen identity
		blendfunc filter

	
	}
}

textures/base_trim/electricwall	
{
	qer_editorimage textures/organics/wire02a_f.tga
	q3map_surfacelight 400

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/organics/wire02a_f.tga
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/organics/wire02a_f.tga
		blendfunc add
	}
	{
		map textures/sfx/electric2.blend.tga
		rgbGen wave sin 0.6 1 0 2
		tcMod scroll 0.53 0.43
		blendfunc add
	}
}

textures/base_trim/proto_fence_alpha
{
	qer_editorimage textures/base_trim/proto_fence.tga
	surfaceparm metalsteps
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm alphashadow	
	cull disable
    nopicmip
	{
		map textures/base_trim/proto_fence.tga
		tcMod scale 2 2
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

textures/base_trim/proto_fence_alpha_ow
{
	qer_editorimage textures/base_trim/proto_fence_ow_ed.tga
	surfaceparm metalsteps
	surfaceparm nomarks
	surfaceparm trans	
	surfaceparm alphashadow
	cull disable
    nopicmip
	{
		map textures/base_trim/proto_fence_ow.tga
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

textures/base_trim/proto_fence_hektik
{
	qer_editorimage textures/base_trim/proto_fence.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid		
	cull none
        nopicmip

	{
		map textures/base_trim/proto_fence.tga
		tcMod scale 3 3
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
	
textures/base_trim/proto_fence_hektik_ow
{
	qer_editorimage textures/base_trim/proto_fence_ow.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm metalsteps
	surfaceparm nonsolid		
	surfaceparm alphashadow
	cull none
	nopicmip

	{
		map textures/base_trim/proto_fence_ow.tga
		tcMod scale 3 3
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

textures/base_trim/proto_fence_noshadow
{
	qer_editorimage textures/base_trim/proto_fence.tga
	surfaceparm metalsteps
	surfaceparm nomarks
	surfaceparm trans
	cull disable
    nopicmip
	{
		map textures/base_trim/proto_fence.tga
		tcMod scale 2 2
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

textures/base_trim/panel_glo
{   
    
        {
                map textures/sfx/firegorre2.tga       
                
                tcMod turb 0 .6 0 0.06
                tcmod scale .53 .61
                tcmod scroll 0 4
                blendfunc GL_ONE GL_ZERO
                rgbGen wave sin 1 1 0 .1
	}   
        {
		map textures/base_trim/panel_glo.tga
                blendfunc blend
		rgbGen identity
	} 
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/panel_shiny
{   
    
        {
                map textures/effects/tinfx.tga       
                tcGen environment
                rgbGen identity
	}   
        {
		map textures/base_trim/panel_shiny.tga
                blendfunc blend
		rgbGen identity
	} 
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/panelbrn010w
{
	q3map_lightimage textures/base_trim/panelbrn010wfx.tga
	
        {
		map textures/base_trim/panelbrn010w.tga
        }
	
        {
		map textures/sfx/hologirl2.tga
                tcmod scale .4 .4
                tcmod scroll 6 2
                blendfunc add
                rgbGen identity
	}
	{
		map textures/base_trim/panelbrn010w.tga
                blendfunc blend
		
	}
        {
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
       
}

textures/base_trim/pewter_nonsolid
{
	qer_editorimage textures/base_trim/dirty_pewter.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_trim/dirty_pewter.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/base_trim/pewter_shiney
{   
 	{
               map textures/effects/tinfx.tga       
               tcGen environment
               rgbGen identity
	}
	{
		map textures/base_trim/pewter_shiney.tga
                blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/pewter_shiney_nonsolid
{
	qer_editorimage textures/base_trim/pewter_shiney_ns.tga
	surfaceparm nonsolid   
 	{
               map textures/effects/tinfx.tga       
               tcGen environment
               rgbGen identity
	}
	{
		map textures/base_trim/pewter_shiney.tga
                blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/pewter_shiny2
{   
        qer_editorimage textures/base_trim/pewter_shiney.tga
	{
		map textures/base_trim/pewter_shiney.tga
                //blendfunc blend
		rgbGen identity
	}
	{
                map textures/effects/tinfx_alphatest.tga       
                blendfunc blend
		tcGen environment
                rgbGen identity
	}   
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/pewter_spec
{
	{
		rgbGen identity
		map $lightmap
	}
	{
		map textures/base_trim/pewter_spec.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}      
}

textures/base_trim/pewter_spec_nonsolid
{
	qer_editorimage textures/base_trim/pewter_spec.tga
	surfaceparm nonsolid   
	{
		rgbGen identity
		map $lightmap
	}
	{
		map textures/base_trim/pewter_spec.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}      
}

textures/base_trim/proto_comp
{
        {
        	 map textures/base_trim/proto_comp2.tga
        	 tcmod scroll 0 -.2
        	 rgbGen wave sin .5 .5 0 3
                 rgbGen identity
        }
        {
        	 clampmap textures/sfx/console03.tga
        	 tcmod rotate -33
                 tcMod stretch sin .8 0 0 0
                 blendfunc add
                 rgbGen wave sin .6 0 0 0
        }
        {
        	 clampmap textures/sfx/console02.tga
        	 tcmod rotate -333
                 tcMod stretch sin .8 0 0 0
                 blendfunc add
                 rgbGen wave sin .3 0 0 0
        }
        {
        	 map textures/effects/tinfx2c.tga
        	 tcGen environment
                 blendfunc add
                 rgbGen identity
        }
        {
        	 map textures/base_trim/proto_comp.tga
        	 blendfunc blend
        }
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/base_trim/proto_compb
{
	qer_editorimage textures/base_trim/proto_comp.tga
        {
        	 map textures/pi/proto_comp2b.tga
        	 tcmod scroll 0 -.2
        	 rgbGen wave sin .5 .5 0 3
                 rgbGen identity
        }
        {
        	 clampmap textures/pi/console03b.tga
        	 tcmod rotate -33
                 tcMod stretch sin .8 0 0 0
                 blendfunc add
                 rgbGen wave sin .6 0 0 0
        }
        {
        	 clampmap textures/pi/console02b.tga
        	 tcmod rotate -333
                 tcMod stretch sin .8 0 0 0
                 blendfunc add
                 rgbGen wave sin .3 0 0 0
        }
        {
        	 map textures/effects/tinfx2c.tga
        	 tcGen environment
                 blendfunc add
                 rgbGen identity
        }
        {
        	 map textures/base_trim/proto_comp.tga
        	 blendfunc blend
        }
        {
		map $lightmap
                blendFunc filter
		rgbGen identity
	}
}

textures/base_trim/proto_fence
{
	surfaceparm trans	
	surfaceparm alphashadow	
	cull none
        nopicmip

	{
		map textures/base_trim/proto_fence.tga
		tcMod scale 3 3
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

textures/base_trim/proto_fence_nonsolid
{
	qer_editorimage textures/base_trim/proto_fence.png
	surfaceparm nonsolid
	surfaceparm trans	
	surfaceparm alphashadow	
	cull none
        nopicmip

	{
		map textures/base_trim/proto_fence.tga
		tcMod scale 3 3
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

textures/base_trim/spiderbit
{
	q3map_lightimage textures/base_trim/spiderbit_fx.tga
	q3map_surfacelight 100
	
        {
		map $lightmap
		rgbGen identity
	}
        {
		map textures/base_trim/spiderbit.tga
		blendfunc filter
                rgbGen identity
	}	
        {
		map textures/base_trim/spiderbit_fx.tga
		blendfunc add
                rgbgen wave triangle .1 .5 0 7
	}
    	
}

textures/base_trim/spiderbite
{

        {
		map textures/sfx/proto_zzztblu2.tga
                tcMod turb 0 .3 0 .2
                tcmod scroll 6 .7
                tcmod scale .4 1
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
	        map textures/base_trim/spiderbite.tga
		blendfunc blend
                tcMod stretch sin .8 0.4 0 .2
                tcmod scroll .3 0
	        rgbGen identity
	}
        {
	        map textures/base_trim/spiderbite.tga
		blendfunc blend
                tcMod stretch sin .8 0.2 0 .1
                tcmod scroll -.5 0
	        rgbGen identity
	}
	{
	        map textures/base_trim/spiderbite.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/spidertrim3
{   
    
        {
                map textures/effects/tinfx.tga       
                tcGen environment
                rgbGen identity
	}   
        {
		map textures/base_trim/spidertrim3.tga
                blendfunc blend
		rgbGen identity
	} 
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/spidertrim4
{   
    
        {
                map textures/effects/tinfx.tga       
                tcGen environment
                rgbGen identity
	}   
        {
		map textures/base_trim/spidertrim4.tga
                blendfunc blend
		rgbGen identity
	} 
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_trim/techborder
{
	q3map_surfacelight 300	
	q3map_lightimage textures/base_trim/techborder_fx.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_trim/techborder.tga
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/base_trim/techborder_fx.tga
		tcmod scroll .1 0
		blendfunc add
	}
	{
		map textures/base_trim/techborder_fx.tga
		tcmod scale  .1 1
		tcmod scroll .1 0
		blendfunc add
	}
}

textures/base_trim/techborder_merge
{
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_trim/techborder_merge.tga
		rgbgen identity
		blendfunc filter
	}
	{
		map textures/base_trim/techborder_merge_fx.tga
		tcmod scroll .2 0
		blendfunc add
	}
	{
		map textures/base_trim/techborder_merge_fx.tga
		tcmod scale .1 1
		tcmod scroll .2 0
		blendfunc add
	}
}

textures/base_trim/techborder_merge_mkc
{
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_trim/techborder_merge.tga
		rgbgen identity
		blendfunc filter
	}
	{
		map textures/base_trim/techborder_merge_fx.tga
		tcmod scroll .2 0
		blendfunc add
	}
	{
		map textures/base_trim/techborder_merge_fx.tga
		tcmod scale .1 1
		tcmod scroll .2 0
		blendfunc add
	}
}

textures/base_trim/tin
{
        {
		rgbGen identity
		map $lightmap
	}
	{
		map textures/base_trim/tin.tga
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
		map textures/base_trim/tin.tga
                blendfunc filter
		rgbGen identity
	}
}       

textures/base_trim/wires01
{
    cull disable
    surfaceparm alphashadow
    deformVertexes autoSprite2
    surfaceparm trans	
        {
                map textures/base_trim/wires01.tga
                alphaFunc GE128
		depthWrite
		rgbGen vertex
        }
        {
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}


}

textures/base_trim/wires01_ass
{
    cull disable
    surfaceparm alphashadow
    deformVertexes autoSprite2
        {
                map textures/base_trim/wires01_ass.tga
                alphaFunc GE128
		depthWrite
		rgbGen vertex
        }
        {
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}


}

textures/base_trim/wires02
{
	cull disable
	surfaceparm nonsolid
	//surfaceparm trans
	//surfaceparm nomarks
        {
                map textures/base_trim/wires02.tga
                alphaFunc GE128
		depthWrite
		rgbGen vertex
        }
        {
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}


}

textures/base_trim/xborder12b
{
	qer_editorimage textures/base_trim/border12b.tga
	q3map_surfacelight 100	
	q3map_lightimage textures/base_trim/border12bfx.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_trim/border12b.tga
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/base_trim/border12bfx.tga
		blendfunc add
	}
}
