textures/base_floor/clang_floor3blava
{
	surfaceparm nolightmap
        {
		map textures/liquids/protolava2.tga
                tcmod scale .2 .2
                tcmod scroll .04 .03
                tcMod turb 0 .1 0 .01
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
	{
		map textures/base_floor/clang_floor3blava.tga
                blendfunc blend
		
	} 
}

textures/base_floor/clangdark
{
	surfaceparm	metalsteps		
	// metal that makes metalsteps sound
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/clangdark.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/base_floor/clangdark_ow
{
	surfaceparm	metalsteps		
	// metal that makes metalsteps sound
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/clangdark_ow.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/base_floor/clangdark_ow2
{
	surfaceparm	metalsteps		
	// metal that makes metalsteps sound
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/clangdark_ow2.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/base_floor/clangdark_ow3
{    
     surfaceparm	metalsteps	    
     {
		map textures/sfx/proto_zzztblu2.tga
            tcMod turb 0 .5 0 9.6
            tcmod scale 2 2
            tcmod scroll 9 5
            blendfunc GL_ONE GL_ZERO
            rgbGen identity
	}
      {
		map textures/base_floor/clangdark_ow3.tga
            blendfunc blend
		rgbGen identity
	}
      {
		map $lightmap
            blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_floor/clangdarkspot
{    
     surfaceparm	metalsteps	    
     {
		map textures/sfx/proto_zzztblu2.tga
            tcMod turb 0 .5 0 9.6
            tcmod scale 2 2
            tcmod scroll 9 5
            blendfunc GL_ONE GL_ZERO
            rgbGen identity
	}
      {
		map textures/base_floor/clangdarkspot.tga
            blendfunc blend
		rgbGen identity
	}
      {
		map $lightmap
            blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_floor/clangfloor_noisy
{
	qer_editorimage textures/base_floor/clang_floor.tga
	surfaceparm metalsteps
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/clang_floor.tga
		blendfunc filter
		rgbgen identity

	}
}

textures/base_floor/clangspot2
{    
	surfaceparm	metalsteps	
	{
		map textures/liquids/proto_grueldark.tga
            blendfunc GL_ONE GL_ZERO
            tcmod scale 2 2
            tcMod scroll .01 .03      
		tcMod turb 0 0.05 0 .05
	}      
      {
		map textures/effects/tinfx3.tga
            blendfunc add
            tcGen environment
	}
      {
		map textures/base_floor/clangspot2.tga
            blendfunc blend
		rgbGen identity
	}
      {
		map $lightmap
            blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_floor/concretefloor1
{
	{
		map textures/base_wall/chrome_env.tga
		tcgen environment
		rgbgen wave sin .25 0 0 0
	}
	{
		map textures/base_floor/concretefloor1.tga
		blendfunc GL_ZERO GL_SRC_ALPHA
		tcmod scale .1 .1
		rgbgen identity	
	}
	{
		map textures/base_floor/concretefloor1.tga
		blendfunc GL_ONE GL_SRC_ALPHA
		rgbgen identity	
	}
	{
		map $lightmap
        	blendfunc filter
		rgbgen identity 
	}
}

textures/base_floor/cybergrate2
{
	cull disable
	surfaceparm alphashadow
	surfaceparm	metalsteps	
	surfaceparm nomarks
	nopicmip
	{
		map textures/base_floor/cybergrate2.tga
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

textures/base_floor/cybergrate3
{
	cull disable
	surfaceparm alphashadow
	surfaceparm	metalsteps
	surfaceparm nomarks
	nopicmip
	{
		map textures/sfx/hologirl.tga
		blendfunc add
		tcmod scale  1.2 .5
		tcmod scroll 3.1 1.1
	}
	{
		map textures/base_floor/cybergrate3.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/base_floor/cybergrate3_trans
{
	cull disable
	surfaceparm metalsteps
	surfaceparm nomarks
	surfaceparm pointlight
	surfaceparm trans
	{
		map textures/sfx/hologirl.tga
		blendfunc add
		tcmod scale 1.2 0.5
		tcmod scroll 3.1 1.1
	}
	{
		map textures/base_floor/cybergrate3.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/base_floor/diamond2c_ow
{    
     surfaceparm	metalsteps	   
        
        {
		map textures/sfx/proto_zzztblu2.tga
                tcMod turb 0 .5 0 9.6
                tcmod scale 2 2
                tcmod scroll 9 5
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/base_floor/diamond2c_ow.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_floor/diamond2cspot
{    
     surfaceparm	metalsteps	   
        
        {
		map textures/liquids/proto_grueldark2.tga
                blendfunc GL_ONE GL_ZERO
                tcmod scale 2 2
                tcMod scroll .01 .03
                tcMod turb 0 0.05 0 .05
	}
        
        {
		map textures/effects/tinfx3.tga
                blendfunc add
                tcGen environment
        }
       
        {
		map textures/base_floor/diamond2cspot.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_floor/diamond_noisy
{
	qer_editorimage textures/base_floor/diamond2.tga
	surfaceparm	metalsteps		

	// metal that makes metalsteps sound
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/diamond2.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/base_floor/floor3_3dark_ow
{

        {
		map textures/effects/envmapblue.tga
                tcmod scroll 0 1
                tcMod turb 0 .25 0 5.6
                tcmod scale 1.5 1.5
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
       
	{
	        map textures/base_floor/floor3_3dark_ow.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/base_floor/hexplate_01
{
	surfaceparm	metalsteps		
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/hexplate_01.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/base_floor/hfloor3
{
        {
		rgbGen identity
		map $lightmap
	}
	{
		map textures/base_floor/hfloor3.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/effects/tinfx.tga
                tcgen environment
		blendfunc add
		rgbGen identity
	}
       
        {
		map textures/base_floor/hfloor3.tga
                blendfunc filter
		rgbGen identity
	}
       
              
}

textures/base_floor/metalbridge04dbroke
{    
     surfaceparm	metalsteps	   
        
        {
		map textures/sfx/proto_zzztblu2.tga
                tcMod turb 0 .5 0 9.6
                tcmod scale 2 2
                tcmod scroll 9 5
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/base_floor/metalbridge04dbroke.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/base_floor/nomarkstone_1
{
	qer_editorimage textures/base_floor/smallstone.tga
	q3map_lightimage textures/base_floor/smallstone.tga
	q3map_globaltexture
	surfaceparm nomarks
	surfaceparm noimpact

	// A stone that isn't marked by weapons. Used below red fog in pj_dm10
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/smallstone.tga
		tcMod scale 2 2
		blendfunc filter
		rgbGen identity
	}
}

textures/base_floor/pjgrate1
{
	surfaceparm	metalsteps		
	cull none
	nopicmip

	// A GRATE OR GRILL THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/pjgrate1.tga
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

textures/base_floor/pjgrate2
{
	surfaceparm	metalsteps	
	nopicmip	
	cull none

	// A RUSTED GRATE THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/pjgrate2.tga
		tcMod scale 2.0 2.0
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		depthFunc equal
		rgbGen identity
	}
}

textures/base_floor/pjgrate2_noclip
{
	qer_editorimage textures/base_floor/pjgrate2.tga	
	surfaceparm	metalsteps
	surfaceparm nonsolid
	nopicmip	
	cull none

	// A RUSTED GRATE THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/pjgrate2.tga
		tcMod scale 2.0 2.0
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		depthFunc equal
		rgbGen identity
	}
}

textures/base_floor/pool_floor2
{
	
	
        	{
		map textures/liquids/pool3d_5e.tga
		tcmod scale -.25 -.25
		tcmod scroll .025 .025
		rgbgen wave sin .75 0 0 0
	
	}
       
	{
		map textures/liquids/pool3d_6e.tga
		blendfunc add
		tcmod scale .25 .25
		tcmod scroll .025 .025
		rgbgen wave sin .75 0 0 0
	}

	{
		map textures/base_floor/pool_floor2.tga
		blendfunc GL_one GL_src_color
		rgbgen identity
	}


	{
		rgbGen identity
		map $lightmap
		blendfunc filter
	}
       
              
}

textures/base_floor/pool_floor3
{
	qer_editorimage textures/base_wall/patch10rusty5.tga
	
        	{
		map textures/liquids/pool3d_5e.tga
		tcmod scale -.25 -.25
		tcmod scroll .025 .025
		rgbgen wave sin .75 0 0 0
	
	}
       
	{
		map textures/liquids/pool3d_6e.tga
		blendfunc add
		tcmod scale .25 .25
		tcmod scroll .025 .025
		rgbgen wave sin .75 0 0 0
	}

	{
		map textures/base_wall/patch10rusty5.tga
		blendfunc GL_one GL_src_color
		rgbgen identity
	}


	{
		rgbGen identity
		map $lightmap
		blendfunc filter
	}
       
              
}

textures/base_floor/pool_side2
{

	
       	{
		map textures/liquids/pool3d_5e.tga
		tcmod scale -.5 -.25
		tcmod scroll .025 .025
		rgbgen wave sin .75 0 0 0
	}
       
	{
		map textures/liquids/pool3d_6e.tga
		blendfunc add
		tcmod scale .5 .25
		tcmod scroll .025 .025
		rgbgen wave sin .75 0 0 0
	}

	{
		map textures/base_floor/pool_side2.tga
		blendfunc GL_one GL_src_color
		tcmod scale .5 .5
		rgbgen identity
	}


	{
		rgbGen identity
		map $lightmap
		blendfunc filter
	}
       
              
}

textures/base_floor/pool_side3
{
	qer_editorimage textures/base_wall/patch10rusty5.tga
	
       	{
		map textures/liquids/pool3d_5e.tga
		tcmod scale -.5 -.25
		tcmod scroll .025 .025
		rgbgen wave sin .75 0 0 0
	}
       
	{
		map textures/liquids/pool3d_6e.tga
		blendfunc add
		tcmod scale .5 .25
		tcmod scroll .025 .025
		rgbgen wave sin .75 0 0 0
	}

	{
		map textures/base_wall/patch10rusty5.tga
		blendfunc GL_one GL_src_color
		tcmod scale .5 .5
		rgbgen identity
	}


	{
		rgbGen identity
		map $lightmap
		blendfunc filter
	}
       
              
}

textures/base_floor/poundedround_dark
{
	qer_editorimage textures/base_floor/poundedround_dark_ed.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/poundedround_dark.tga
		tcmod scale 2 2
		blendfunc filter
	}
}

textures/base_floor/proto_grate
{
	surfaceparm	metalsteps	
        surfaceparm trans		
	cull none
        nopicmip

	// A GRATE OR GRILL THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/proto_grate.tga
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

textures/base_floor/proto_grate3
{
	surfaceparm	metalsteps	
        surfaceparm trans		
	cull none
        nopicmip
	// A GRATE OR GRILL THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/proto_grate3.tga
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

textures/base_floor/proto_grate4
{
	surfaceparm	metalsteps	
      surfaceparm trans		
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
        nopicmip

	// A GRATE OR GRILL THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/proto_grate4.tga
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

textures/base_floor/proto_grate4_alphashadow
{
	qer_editorimage textures/base_floor/proto_grate4.tga
	surfaceparm	metalsteps	
	surfaceparm trans		
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm alphashadow
	cull none
	nopicmip
	// A GRATE OR GRILL THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/proto_grate4.tga
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

textures/base_floor/proto_rustygrate
{
	surfaceparm	metalsteps	
    surfaceparm trans	
	surfaceparm alphashadow
	cull none
        nopicmip
	// A RUSTY GRATE OR GRILL THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/proto_rustygrate.tga
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

textures/base_floor/proto_rustygrate2
{
	surfaceparm	metalsteps	
    surfaceparm trans	
	surfaceparm alphashadow
	cull none
        nopicmip
	// A RUSTY GRATE OR GRILL THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/proto_rustygrate2.tga
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

textures/base_floor/rusty_pentagrate
{
	surfaceparm	metalsteps	
    surfaceparm trans		
    surfaceparm alphashadow

	cull none
    nopicmip
	// A RUSTY and Eeevil grate THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/base_floor/rusty_pentagrate.tga
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

textures/base_floor/step_192x32_trimmed
{
	surfaceparm	metalsteps		
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/step_192x32_trimmed.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/base_floor/step3_32_notrim
{
	qer_editorimage textures/base_floor/step3_32_notrim.ed.tga
	surfaceparm metalsteps		
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/step3_32_notrim.tga
		tcmod scale 2 2
		blendfunc filter
		rgbGen identity
	}
}

textures/base_floor/skylight1
{
	q3map_lightimage textures/base_floor/skylight1_lm.tga
	q3map_surfacelight 100
	
        {
		map $lightmap
		rgbGen identity
	}
        {
		map textures/base_floor/skylight1.tga
		blendfunc filter
                rgbGen identity
	}	
        {
		map textures/base_floor/skylight1_lm.tga
		blendfunc add
                rgbgen wave triangle .2 2 0 7.7
	}
        {
		map textures/base_floor/skylight1_lm.tga
		blendfunc add
                rgbgen wave triangle .2 5 1 5.1
	}
    	
}
 
textures/base_floor/skylight_spec
{
	{
		rgbGen identity
		map $lightmap
	}
	{
		map textures/base_floor/skylight_spec.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/base_floor/skylight_spec2
{
	{
		rgbGen identity
		map $lightmap
	}
	{
		map textures/base_floor/skylight_spec2.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/base_floor/techfloor
{    
	qer_editorimage textures/base_floor/techfloor.tga	   
	surfaceparm metalsteps
	{
		map textures/sfx/proto_zzztpink.tga
                tcMod turb 0 .5 0 9.6
                tcmod scale 2 2
                tcmod scroll 9 5
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
                clampmap textures/base_floor/techfloor2.tga
		blendfunc blend
                tcmod rotate 170
                tcMod stretch sin .8 0.2 0 .4
	        rgbGen identity
	}
        {
		map textures/base_floor/techfloor.tga
                blendfunc blend
		rgbGen identity
	}
        
        {
		map $lightmap
		rgbGen identity
		blendfunc filter
                depthFunc equal
       }
}

textures/base_floor/techfloor2
{ 
        cull disable
        surfaceparm nomarks	
        {
	        clampmap textures/base_floor/techfloor2.tga
		alphaFunc GE128
                tcmod rotate 70
                tcMod stretch sin .8 0.2 0 .3
	        rgbGen identity
	}
        {
                clampmap textures/base_floor/techfloor2.tga
                alphaFunc GE128
                tcmod rotate -50
                tcMod stretch sin .8 0.2 0 .2
                rgbGen identity
	}
        {
	        clampmap textures/base_floor/techfloor2.tga
		alphaFunc GE128
                tcmod rotate 30
                tcMod stretch sin .8 0.2 0 .1
	        rgbGen identity
	}
        {
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}

}

textures/base_floor/techfloor_teal
	{    
    qer_editorimage textures/base_floor/techfloor_teal.tga
   
        {
		map textures/base_floor/fireswirl2blue.tga
        tcMod stretch sin .8 0.3 0 9.7
        tcmod rotate 333
        rgbGen identity
   		}
        {
		map textures/base_floor/techfloor_teal.tga
        blendfunc blend
		rgbGen identity
		}
        {
		map $lightmap
		rgbGen identity
		blendfunc filter
        depthFunc equal
		}
	}

textures/base_floor/tilefloor7_ow
{
	q3map_lightimage textures/base_floor/tilefloor7_owfx.tga
	q3map_surfacelight 100
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/tilefloor7_ow.tga
		blendfunc filter
		rgbGen identity
	}	
	{
		map textures/base_floor/tilefloor7_owfx.tga
		blendfunc add
		rgbgen wave triangle 1 2 0 7
	}
	{
		map textures/base_floor/tilefloor7_owfx.tga
		blendfunc add
		rgbgen wave triangle 1 5 1 3
	}
}

textures/base_floor/tilefloor7_ow_b
{
    qer_editorimage textures/base_floor/tilefloor7_ow.tga
	q3map_lightimage textures/base_floor/tilefloor7_owfx.tga
	q3map_surfacelight 100
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_floor/tilefloor7_ow.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/base_floor/tilefloor7_owfxb.tga
		blendfunc add
		rgbgen wave triangle 1 2 0 7
	}
	{
		map textures/base_floor/tilefloor7_owfxb.tga
		blendfunc add
		rgbgen wave triangle 1 5 1 3
	}
}

textures/base_floor/tilefloor7_ow_r
{
    qer_editorimage textures/base_floor/tilefloor7_ow.tga
	q3map_lightimage textures/base_floor/tilefloor7_owfx.tga
	q3map_surfacelight 100
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_floor/tilefloor7_ow.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/base_floor/tilefloor7_owfxr.tga
		blendfunc add
		rgbgen wave triangle 1 2 0 7
	}
	{
		map textures/base_floor/tilefloor7_owfxr.tga
		blendfunc add
		rgbgen wave triangle 1 5 1 3
	}
}

textures/base_floor/tilefloor7_phrantic
{
	qer_editorimage textures/base_floor/tilefloor7_ow.tga
	q3map_lightimage textures/base_floor/tilefloor7_owfx.tga
	
        {
		map $lightmap
		rgbGen identity
	}
        {
		map textures/base_floor/tilefloor7_ow.tga
		blendfunc filter
              rgbGen identity
	}	   	
}

