textures/proto2/asylum_floor_w_nonsolid
{
	surfaceparm nonsolid
	qer_editorimage textures/proto2/asylum_floor_w.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/asylum_floor_w.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/asylum_floor_w_plain
{
	qer_editorimage textures/proto2/asylum_floor_w.tga
	{
		map $lightmap
		rgbGen identity 
	}
	{
		map textures/proto2/asylum_floor_w.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/barbedwire
{
	surfaceparm pointlight
	surfaceparm trans	
	surfaceparm alphashadow
	deformVertexes autoSprite2
	cull twosided
	{
		map textures/proto2/barbedwire.tga
		blendfunc blend
		rgbGen vertex
	}
}

textures/proto2/beam_blue
{
	qer_editorimage textures/proto2/beam_blue.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .6
	cull none
	{
		map textures/proto2/beam_blue.tga
		blendfunc add
	}
}

textures/proto2/beam_blue_wide
{
	qer_editorimage textures/proto2/beam_blue_wide.tga
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
    qer_trans .6
	cull none
	{
		map textures/proto2/beam_blue_wide.tga
		tcMod Scroll .3 0
        blendfunc add
	}
}

textures/proto2/blueflare
{
	cull disable
	deformVertexes autoSprite
	surfaceparm trans
	surfaceparm nolightmap
	nopicmip
	sort 6
	{
		clampmap textures/proto2/blueflare.tga
                tcmod rotate 10
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/blueflare2
{
	cull disable
	deformVertexes autoSprite2
	surfaceparm trans
	surfaceparm nolightmap
	nopicmip
	sort 6
	{
		map textures/proto2/blueflare2.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/blueflare_nonsolid
{
	qer_editorimage textures/proto2/blueflare.tga
	cull disable
	deformVertexes autoSprite
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nolightmap
	nopicmip
	sort 6
	{
		clampmap textures/proto2/blueflare.tga
		tcmod rotate 10
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/brick_trim_ns
{
	qer_editorimage textures/proto2/brick_trim.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/brick_trim.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/bright_blue
{
	qer_editorimage textures/proto2/siberia_ablue.tga

	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	nopicmip
	{
		map textures/proto2/siberia_ablue.tga
		blendfunc blend	
	}
}

textures/proto2/bright_red
{
	qer_editorimage textures/proto2/siberia_ared.tga

	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	nopicmip
	{
		map textures/proto2/siberia_ared.tga
		blendfunc blend	
	}
}

textures/proto2/cables
{
	qer_editorimage textures/proto2/cables.tga
	surfaceparm trans	
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
	nopicmip
	{
		map textures/proto2/cables.tga
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

textures/proto2/cables02
{
	qer_editorimage textures/proto2/cables02.tga
	surfaceparm trans	
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
	nopicmip
	{
		map textures/proto2/cables02.tga
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

textures/proto2/chain
{
	cull disable
	surfaceparm nomarks
	surfaceparm nonsolid
	deformVertexes autoSprite2
	deformVertexes wave 100 sin 0 3 0 .05
	deformVertexes wave 100 sin 0 3 0 .3
	{
		map textures/proto2/chain.tga
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

textures/proto2/chain_rept
{
	cull none
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm pointlight
	deformvertexes autosprite2
	sort underwater
	{
		map textures/proto2/chain_rept.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/proto2/chain_still
{
	qer_editorimage textures/proto2/chain.tga
	cull disable
	surfaceparm alphashadow
	surfaceparm nomarks
	surfaceparm nonsolid
	{
		map textures/proto2/chain.tga
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

textures/proto2/concrete_bluenfx
{   
	surfaceparm	metalsteps	   
	qer_editorimage textures/proto2/concrete_blue.tga   
	{
		map textures/proto2/concrete_blue.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/proto2/concrete_rednfx
{   
	surfaceparm	metalsteps
	qer_editorimage textures/proto2/concrete_red.tga 
	{
		map textures/proto2/concrete_red.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/proto2/concrete01wetfloor
{
	{
		map textures/proto2/ooze.tga
		tcmod scale 2 2
		tcMod turb 0 .2 0 .1
		rgbGen identity
	}
	{
		map textures/proto2/concrete01wetfloor.tga
		Blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/proto2/concrete01wetfloorkc
{
	{
		map $lightmap
	}
	{
		map textures/proto2/basewall01test.tga
		blendfunc GL_DST_COLOR GL_src_color
		rgbGen identity
	}	        	
}

textures/proto2/concrete01wetwall
{
	{
		map textures/proto2/ooze.tga
		tcmod scale 2 2
		tcmod scroll 0 -.1
		rgbGen identity
	}
	{
		map textures/proto2/concrete01wetwall.tga
		Blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/proto2/dirt01
{
	{
		map textures/proto2/dirt01.tga
		rgbGen identity
	}
	{
		map textures/proto2/dirt01b.tga
		tcmod Scale 1.1  1.2
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/proto2/gear02
{
	surfaceparm trans	
	surfaceparm alphashadow
	cull none
	{
		clampmap textures/proto2/gear02.tga
		alphaFunc GE128
		tcmod rotate 123
		depthWrite
		rgbGen identity
	}
	{
		clampmap textures/proto2/gear02b.tga
		blendfunc add
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/proto2/girder03
{
	surfaceparm trans	
	surfaceparm alphashadow
	cull none
	nopicmip
	{
		map textures/proto2/girder03.tga
		alphaFunc GE128
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/proto2/girder04
{
	surfaceparm trans	
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/girder04.tga
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

textures/proto2/girder05
{
	surfaceparm trans	
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/girder05.tga
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

textures/proto2/grill01
{
	surfaceparm trans	
	surfaceparm alphashadow
	surfaceparm metalsteps
	cull none
	nopicmip
	{
		map textures/proto2/grill01.tga
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

textures/proto2/grill01_dc
{
	qer_editorimage textures/proto2/grill01.tga 
	surfaceparm metalsteps
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm pointlight
	cull none
	nopicmip
	{
		map textures/proto2/grill01.tga
		blendfunc blend
		depthwrite
		rgbgen vertex
	}
}

textures/proto2/grill01_noalpha
{
	qer_editorimage textures/proto2/grill01.tga 
	nopicmip
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/proto2/grill01.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/proto2/grill01_scrolllight
{
	{
		map textures/base_light/scrolllight2_rept.tga
		tcmod scroll 0 1
	}
	{
		map textures/base_light/scrolllight2_rept.tga
		blendfunc add
		tcmod scroll 0 2
	}
	{
		map textures/proto2/grill01.tga
		blendfunc blend
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbgen identity
	}
}

textures/proto2/grill02
{
	surfaceparm alphashadow
	surfaceparm nomarks
	cull none
	nopicmip
    {
		map textures/proto2/grill02.tga
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

textures/proto2/grill03
{
	surfaceparm alphashadow
	surfaceparm nomarks
	cull none
	nopicmip
    {
		map textures/proto2/grill03.tga
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

textures/proto2/grill03_clipped
{
	qer_editorimage textures/proto2/grill03.tga
	surfaceparm alphashadow
	surfaceparm nomarks
	surfaceparm playerclip
	cull none
	nopicmip
    {
		map textures/proto2/grill03.tga
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

textures/proto2/grill03b
{      	
	surfaceparm alphashadow
	surfaceparm nomarks
	cull none   
	nopicmip
	{
		map textures/proto2/grill03b.tga
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

textures/proto2/grit01_nonsolid
{
	qer_editorimage textures/proto2/grit01.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/grit01.tga
		blendfunc filter
	}
}

textures/proto2/light_flare
{
	qer_editorimage textures/proto2/light_flare.tga
	cull disable
	surfaceparm trans
	surfaceparm nonsolid
	deformVertexes wave 50 sin 0 3 0 .3
	deformVertexes move .3 .1 0  sin 0 .5 0 0.2
	nopicmip
	sort 6
	{
		map textures/proto2/light_flare.tga
		tcmod scroll 0 -0.008
		blendfunc blend
		rgbGen wave sin 1 .05 0 .75
	}
}

textures/proto2/lightbulb
{
	cull disable
	deformVertexes autoSprite2
	surfaceparm trans
	surfaceparm nolightmap
	{
		map textures/proto2/lightbulb.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/lightbulb2
{
	cull disable
	deformVertexes autoSprite
	surfaceparm trans
	surfaceparm nolightmap
	nopicmip
	{
		map textures/proto2/lightbulb2.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/mpintro
{
	qer_editorimage textures/proto2/ed_movie.tga
	surfaceparm trans
	surfaceparm nolightmap
	cull disable
	{
		map textures/proto2/shiny_black.tga
		tcGen environment
		rgbGen identity
	}     
}

textures/proto2/mpteam1
{
	qer_editorimage textures/proto2/ed_movie.tga
	surfaceparm trans
	surfaceparm nolightmap
	cull disable
	{
		map textures/proto2/shiny_black.tga
		tcGen environment
		rgbGen identity
	}     
}

textures/proto2/mpteam3_movie
{
	qer_editorimage textures/proto2/ed_movie.tga\
	surfaceparm trans
	surfaceparm nolightmap
	cull disable
	{
		map textures/proto2/shiny_black.tga
		tcGen environment
		rgbGen identity
	}     
}

textures/proto2/mpteam5_mv
{
	qer_editorimage textures/proto2/ed_movie.tga
	surfaceparm trans
	surfaceparm nolightmap
	cull disable
	{
		map textures/proto2/shiny_black.tga
		tcGen environment
		rgbGen identity
	}
}

textures/proto2/mpterra2_mv
{
	qer_editorimage textures/proto2/ed_movie.tga
	surfaceparm trans
	surfaceparm nolightmap
	cull disable
	{
		map textures/proto2/shiny_black.tga
		tcGen environment
		rgbGen identity
	}      
}

textures/proto2/proto_lightamber_3
{
	qer_editorimage textures/proto2/proto_lightamber.tga
	q3map_lightimage textures/proto2/proto_lightamber.tga
	surfaceparm nomarks
	q3map_surfacelight 300
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/proto_lightamber.tga
		blendfunc filter
		rgbGen identity
	}
        {
		map textures/proto2/proto_lightamber.tga
		blendfunc add
	}
}

textures/proto2/proto_lightamber_500
{
	qer_editorimage textures/proto2/proto_lightamber.tga
	q3map_lightimage textures/proto2/proto_lightamber.tga
	surfaceparm nomarks
	q3map_surfacelight 500
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/proto_lightamber.tga
		blendfunc filter
		rgbGen identity
	}
        {
		map textures/proto2/proto_lightamber.tga
		blendfunc add
	}
}

textures/proto2/proto_lightamber_1500
{
	qer_editorimage textures/proto2/proto_lightamber.tga
	q3map_lightimage textures/proto2/proto_lightamber.tga
	surfaceparm nomarks
	q3map_surfacelight 1500
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/proto_lightamber.tga
		blendfunc filter
		rgbGen identity
	}
        {
		map textures/proto2/proto_lightamber.tga
		blendfunc add
	}
}

textures/proto2/tutorial_arrow
{
	qer_editorimage textures/proto2/reda_dcl.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	nopicmip

	{
		map textures/proto2/reda_dcl.tga
		blendfunc add
	}
}

textures/proto2/redflag
{

    surfaceparm trans
    surfaceparm nolightmap
    nopicmip

	{
		map textures/proto2/redflag.tga
		alphaFunc GE128
	}


}

textures/proto2/blueflag
{

    surfaceparm trans
    surfaceparm nolightmap
    nopicmip

	{
		map textures/proto2/blueflag.tga
		alphaFunc GE128
	}


}


textures/proto2/oneflag
{
 
    surfaceparm trans
    surfaceparm nolightmap
    nopicmip

	{
		map textures/proto2/oneflag.tga
		alphaFunc GE128
	}


}

textures/proto2/harvest
{
 
    surfaceparm trans
    surfaceparm nolightmap
    nopicmip

	{
		map textures/proto2/harvest.tga
		alphaFunc GE128
	}


}

textures/proto2/redob
{
   
    surfaceparm trans
    surfaceparm nolightmap
    nopicmip

	{
		map textures/proto2/redob.tga
		alphaFunc GE128
	}


}
textures/proto2/blueob
{
  
    surfaceparm trans
    surfaceparm nolightmap
    nopicmip

	{
		map textures/proto2/blueob.tga
		alphaFunc GE128
	}


}


textures/proto2/urhere
{

    surfaceparm trans
    surfaceparm nolightmap
    nopicmip

	{
		map textures/proto2/urhere.tga
		alphaFunc GE128
	}


}


textures/proto2/terramap01
{

    surfaceparm trans
    surfaceparm nolightmap
    nopicmip

	{
		map textures/proto2/terramap01.tga
		blendfunc add
                rgbGen wave sin 1 .2 0 .75
	}
        {
		map textures/proto2/terramap02.tga
                BlendFunc add
                tcmod scale 1.75 1
		tcmod scroll -3.75 0
                rgbGen wave inversesawtooth 1 .2 0 .75
	}

}

textures/proto2/pagans_name
	{

	{
		map textures/proto2/pagans_name.tga
		alphaFunc GE128
		rgbgen wave sin .5 0 0 0 
		depthwrite
                  
	}
	 {
		map textures/sfx2/jumpadr2.tga
		blendfunc gl_one gl_zero
           tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		depthfunc equal

	}
 
}


textures/proto2/xflag01
{       	
	surfaceparm alphashadow
	surfaceparm nonsolid
	cull none
       
	{
		map textures/proto2/xflag01.tga
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

textures/proto2/screw01
{    
     surfaceparm	metalsteps	
     surfaceparm	nomarks
     surfaceparm 	alphashadow  
        
        {
		map textures/proto2/screw01.tga
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

textures/proto2/vertex_greenstone
{   
	qer_editorimage textures/gothic_block/blocks17i.tga
 	surfaceparm pointlight
	
        {
		map textures/gothic_block/blocks17i.tga 
		rgbGen vertex
	}

}

textures/proto2/vertex_cavestone
{   
	qer_editorimage textures/stone/pjrock5.tga
	surfaceparm pointlight
	
    {
		map textures/stone/pjrock5.tga 
		rgbGen vertex
	}

}
textures/proto2/vertex_cavestone_mru
//The image of Mr. Ugly is copyright 2000 by Kevin Hendryx
//It is used here with his permission (but keep it quiet ... it's a secret)
{   
	qer_editorimage textures/stone/pjrock5_mru.tga
	surfaceparm pointlight
	
    {
		map textures/stone/pjrock5_mru.tga 
		rgbGen vertex
	}

}


textures/proto2/x_smallpipe
{
	deformVertexes autoSprite2
        surfaceparm trans	
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/x_smallpipe.tga
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

textures/proto2/marbledoor_blue
{    
     surfaceparm	metalsteps	   
        
        {
		map textures/effects/tinfx2.tga
                tcGen environment
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/proto2/marbledoor_blue.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}
textures/proto2/marbledoor_red
{    
     surfaceparm	metalsteps	   
        
        {
		map textures/effects/tinfx2.tga
                tcGen environment
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/proto2/marbledoor_red.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}


textures/proto2/black
{    
       
     qer_editorimage textures/effects2/black.tga 
     surfaceParm nolightmap  

        {
		map textures/effects2/black.tga  
		rgbGen vertex
	}

}

textures/proto2/vertex_con
{    
       
     qer_editorimage textures/proto2/concrete03c.tga  
     surfaceparm pointlight 

        {
		map textures/proto2/concrete03c.tga 
		rgbGen vertex
	}

}

textures/proto2/concrete03c_aqua
{   
	surfaceparm pointlight

        {
		map textures/proto2/concrete03c_aqua.tga 
		rgbGen vertex
	}

}

textures/proto2/pulsebeam
{    
     surfaceparm	metalsteps	   
   

        {
		map textures/proto2/pulsebeam.tga
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
        {
		map textures/proto2/pulsebeam2.tga
                BlendFunc add
		rgbGen wave inversesawtooth -.3 1.3 0 1
	}
}

textures/proto2/cheapfloor
{
	qer_editorimage textures/proto2/marble02b_floor.tga
	{
		map textures/effects2/xtourney_fx3.tga
		tcgen environment
		rgbgen identity
	}
	{
		map textures/proto2/marble02b_floor.tga
		blendfunc blend
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbgen identity
	}
}

textures/proto2/redlight_on
{
  surfaceparm nolightmap
	{
		map textures/proto2/redlight_on.tga
		rgbGen identity
	}
}

textures/proto2/bluelight_on
{
  surfaceparm nolightmap
	{
		map textures/proto2/bluelight_on.tga
		rgbGen identity
	}
}

textures/proto2/bsredlight_on
//for team sides in mpterra2 (1 of 8)
{
  surfaceparm nolightmap
  qer_editorimage textures/proto2/redlight_on.tga

	{
		map textures/proto2/redlight_on.tga
		rgbGen identity
	}      
}

textures/proto2/bsbluelight_on
//for team sides in mpterra2 (2 of 8)
{
  surfaceparm nolightmap
  qer_editorimage textures/proto2/bluelight_on.tga
	{
		map textures/proto2/bluelight_on.tga
		rgbGen identity
	}
}

textures/proto2/rsredlight_off
//for team sides in mpterra2 (3 of 8)
{
  qer_editorimage textures/proto2/redlight_off.tga
       {
		map textures/proto2/redlight_off.tga
		rgbGen identity
	}    
}

textures/proto2/rsbluelight_off
//for team sides in mpterra2 (4 of 8)
{
  qer_editorimage textures/proto2/bluelight_off.tga
	{
		map textures/proto2/bluelight_off.tga
		rgbGen identity
	}
}

textures/proto2/bsredlight_off
//for team sides in mpterra2 (5 of 8)
{
  qer_editorimage textures/proto2/redlight_off.tga

       {
		map textures/proto2/redlight_off.tga
		rgbGen identity
	}
}

textures/proto2/bsbluelight_off
//for team sides in mpterra2 (6 of 8)
{
  qer_editorimage textures/proto2/bluelight_off.tga
	{
		map textures/proto2/bluelight_off.tga
		rgbGen identity
	}   
}

textures/proto2/rsbluelight_on
//for team sides in mpterra2 (7 of 8)
{
  surfaceparm nolightmap
  qer_editorimage textures/proto2/bluelight_on.tga
	{
		map textures/proto2/bluelight_on.tga
		rgbGen identity
	}
}

textures/proto2/rsredlight_on
//for team sides in mpterra2 (8 of 8)
{
  surfaceparm nolightmap
  qer_editorimage textures/proto2/redlight_on.tga
	{
		map textures/proto2/redlight_on.tga
		rgbGen identity
	}
}

textures/proto2/mirrorfloor
{
        qer_editorimage textures/proto2/marble02b_s.tga
	portal
	{
		map textures/common/mirror1.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
		depthWrite
	}
        {
               map textures/proto2/marble02b_floor.tga
	       blendfunc blend
               rgbGen identity
        }
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}

}

textures/proto2/bluetrim01
{       
	{
		map textures/effects2/envmap_blu.tga
                blendfunc GL_ONE GL_ZERO
                tcmod scale .025 .05
                tcmod Scroll  .005 .04
                
                rgbGen identity
	}
        {
		map textures/proto2/bluetrim01.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/redtrim01
{
    qer_editorimage  textures/proto2/bluetrim01
	{
		map textures/effects2/envmap_red.tga
                blendfunc GL_ONE GL_ZERO
                tcmod scale .025 .05
                tcmod Scroll  .005 .04
                
                rgbGen identity
	}
        {
		map textures/proto2/bluetrim01.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/torchstone_trans
{
	qer_editorimage textures/proto2/marble02btrim.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/proto2/marble02btrim.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/torchstone02_trans
{
	qer_editorimage textures/proto2/marbledge01.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/proto2/marbledge01.tga
		rgbGen identity
		blendfunc filter
	}
}
textures/proto2/torchstone03_trans
{
	qer_editorimage textures/proto2/marble02b.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/proto2/marble02b.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/shiny_black
{    
     surfaceparm	nolightmap   
        
        {
		map textures/proto2/shiny_black.tga
                tcGen environment
                rgbGen identity
	}

        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/light_nv
{    
     surfaceparm	nolightmap  
        {
		map textures/proto2/light_nv.tga
		rgbGen identity
	} 
        
        {
		map textures/effects/tinfx2b.tga
                tcGen environment
                blendfunc add
                rgbGen identity
	}
}

textures/proto2/marble02btrim03
{
	{
		map textures/proto2/marble02btrim03.tga
                rgbGen identity
        }
        {
	        map $lightmap
                blendfunc filter
	        rgbGen identity
	}
        {
		map textures/proto2/marble02btrim03_lt.tga
                blendfunc add
                rgbGen wave sin .9 .5 0 .2
        }
}

textures/proto2/marble02rtrim03
{
	{
		map textures/proto2/marble02rtrim03.tga
                rgbGen identity
        }
        {
	        map $lightmap
                blendfunc filter
	        rgbGen identity
	}
        {
		map textures/proto2/marble02rtrim03_lt.tga
                blendfunc add
                rgbGen wave sin .9 .5 0 .2
        }
}

textures/proto2/red_zot
{
    cull disable
    deformVertexes move 0.2 0 .3  sin 0 5 0 10
    deformVertexes move 0 0.2 0  sin 0 5 0 13
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm nomarks
    surfaceparm nolightmap

	{
		map textures/proto2/red_zot.tga
		blendfunc add
		rgbGen identity
	}

}

textures/proto2/blue_zot
{
    cull disable
    deformVertexes move 0.2 0 .3  sin 0 5 0 10
    deformVertexes move 0 0.2 0  sin 0 5 0 13
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm nomarks
    surfaceparm nolightmap
	{
		map textures/proto2/blue_zot.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/red_zot2
{
    cull disable
	qer_lightimage textures/proto2/red_zot2.tga
	q3map_surfacelight 120
    deformVertexes move 0.2 0 .3  sin 0 5 0 10
    deformVertexes move 0 0.2 0  sin 0 5 0 13
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm nomarks
    surfaceparm nolightmap
	{
		map textures/proto2/red_zot2.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/blue_zot2
{
	qer_editorimage textures/proto2/blue_zot.tga
    cull disable
	qer_lightimage textures/proto2/blue_zot.tga
	q3map_surfacelight 120
    deformVertexes move 0.2 0 .3  sin 0 5 0 10
    deformVertexes move 0 0.2 0  sin 0 5 0 13
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm nomarks
    surfaceparm nolightmap
	{
		map textures/proto2/blue_zot.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/door_right
{    
     surfaceparm	metalsteps	   
        {
		map textures/effects2/envmap_sky.tga
                tcGen environment
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/proto2/door_right.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/reda_dcl
{
	surfaceparm	nomarks 
	surfaceparm	trans
	surfaceparm	nonsolid
     surfaceparm pointlight
	polygonOffset
	qer_trans 0.5
	sort 6
	nopicmip
        {
		map textures/proto2/reda_dcl.tga
        blendfunc add
		rgbGen vertex
	}
}

textures/proto2/bluea_dcl
{    
     surfaceparm	nomarks   
     surfaceparm	trans
	 surfaceparm	nonsolid
     surfaceparm pointlight
	polygonOffset
	qer_trans 0.5
	sort 6
	nopicmip
        {
		map textures/proto2/bluea_dcl.tga
                blendfunc add
		rgbGen vertex
	}
}

textures/proto2/yela_dcl
{
	qer_editorimage  textures/proto2/yela_dcl.tga
	surfaceparm	nomarks 
	surfaceparm	trans
	surfaceparm	nonsolid
     surfaceparm pointlight
	polygonOffset
	qer_trans 0.5
	sort 6
	nopicmip
        {
		map textures/proto2/yela_dcl.tga
        blendfunc add
		rgbGen vertex
	}
}

textures/proto2/blueat_dcl
{    
     surfaceparm	nomarks   
     surfaceparm	trans
      surfaceparm pointlight
	polygonOffset
	qer_trans 0.5
	sort 6
	nopicmip
	{
		map textures/proto2/blueat_dcl.tga
        blendfunc add
		rgbGen vertex
	}
}


textures/proto2/skull_red_dcl
{   
	qer_editorimage  textures/proto2/pjdecal_red.tga
    surfaceparm	nomarks 
    surfaceparm	trans  
    nomipmaps
    surfaceparm pointlight
	polygonOffset
	qer_trans 0.5
	sort 6
	nopicmip
    {
		map textures/proto2/pjdecal_red.tga
        blendfunc add
		rgbGen vertex
	}
}

textures/proto2/skull_blue_dcl
{    
	qer_editorimage  textures/proto2/pjdecal_blue.tga
     surfaceparm	nomarks 
     surfaceparm	trans  
     nomipmaps
     surfaceparm pointlight
	polygonOffset
	qer_trans 0.5
	sort 6
	nopicmip
        
        {
		map textures/proto2/pjdecal_blue.tga
                blendfunc add
		rgbGen vertex
	}
}

textures/proto2/concrete_red
{    
     surfaceparm	metalsteps	   
        {
		map textures/effects2/redfx.tga
                tcGen environment
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/proto2/concrete_red.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/concrete_blue
{    
     surfaceparm	metalsteps	   
        {
		map textures/effects2/bluefx.tga
                tcGen environment
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/proto2/concrete_blue.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/teamwerkz_red1
{
    cull disable
    surfaceparm trans
    surfaceparm nolightmap
	{
		map textures/proto2/teamwerkz_red2.tga
		blendfunc add
                tcMod scroll 1 0
		rgbgen wave sin 0 1 0 9
	}
        {
		map textures/proto2/teamwerkz_red1.tga
		blendfunc add
                tcMod scroll -.2 0
		rgbgen wave sin 0 1 0 .19
	}
}

textures/proto2/teamwerkz_blue1
{
    cull disable
    surfaceparm trans
    surfaceparm nolightmap
	{
		map textures/proto2/teamwerkz_blue2.tga
		blendfunc add
                tcMod scroll 1 0
		rgbgen wave sin 0 1 0 9
	}
        {
		map textures/proto2/teamwerkz_blue1.tga
		blendfunc add
                tcMod scroll -.2 0
		rgbgen wave sin 0 1 0 .19
	}
}

textures/proto2/gothic_light
{
	surfaceparm alphashadow
        surfaceparm nomarks	
	cull none
	{
		map textures/proto2/gothic_light.tga
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

textures/proto2/gothic_lightfx
{
       	q3map_surfacelight 2000
	surfaceparm alphashadow
        surfaceparm nomarks	
	{
		map textures/proto2/gothic_lightfx.tga
		blendfunc add
		rgbGen identity          
	}
}
textures/proto2/5_dcl
{
       	surfaceparm pointlight
	surfaceparm alphashadow
        surfaceparm nomarks
	cull none
	{
		map textures/proto2/5_dcl.tga
		blendfunc add
		depthWrite
		rgbGen vertex        
	}
}

textures/proto2/wirepipe
{
	surfaceparm alphashadow
        surfaceparm nomarks
	cull none
	{
		map textures/proto2/wirepipe.tga
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

textures/proto2/wheel01
{
	surfaceparm alphashadow
        surfaceparm nomarks
	cull none
	{
		map textures/proto2/wheel01.tga
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

textures/proto2/c_zinc_shiny
{   
    qer_editorimage textures/gothic_trim/zinc_shiny.tga
    cull none
        {
                map textures/effects/tinfx.tga       
                tcGen environment
                rgbGen identity
	}   
        {
		map textures/gothic_trim/zinc_shiny.tga
                blendfunc blend
		rgbGen identity
	} 
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/proto2/stadlight01
{
	surfaceparm alphashadow
        surfaceparm nomarks	
	cull none
	{
		map textures/proto2/stadlight01.tga
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
		map textures/proto2/stadlight01fx.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 2
	}
}

textures/proto2/v_support02
{
	surfaceparm alphashadow
	cull none
        nomipmaps
	{
		map textures/proto2/v_support02.tga
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

textures/proto2/pipes01
{
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/pipes01.tga
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

textures/proto2/floorvent01
{
       	surfaceparm pointlight
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/floorvent01.tga
		blendfunc blend
		depthWrite
		rgbGen vertex
	}
}

textures/proto2/sign01
{
        {
                map textures/proto2/sign01.tga
                BlendFunc Add
                rgbGen identity
        }
}

textures/proto2/supportctfblu
{
	{
		map textures/effects2/envmap_blu.tga
                blendfunc GL_ONE GL_ZERO
                tcmod scale .025 .05
                tcmod Scroll  .005 .02
                rgbGen identity
	}
        {
		map textures/proto2/supportctfblu.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/supportctfblumerge
{
	{
		map textures/effects2/envmap_blu.tga
		blendfunc gl_one gl_zero
		tcmod scale .025 .05
		tcmod scroll .005 .02
		rgbgen identity
	}
	{
		map textures/proto2/supportctfblumerge.tga
		blendfunc blend
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbgen identity
	}
}

textures/proto2/supportctfred
{
	{
		map textures/effects2/envmap_red.tga
                blendfunc GL_ONE GL_ZERO
                tcmod scale .025 .05
                tcmod Scroll  .005 .02
                rgbGen identity
	}
        {
		map textures/proto2/supportctfred.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/marbletrim02
{
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/marbletrim02.tga
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

textures/proto2/marbletrim01
{
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/marbletrim01.tga
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

textures/proto2/marble02b_s
{    
     surfaceparm	metalsteps	   
        {
		map textures/effects/tinfx2.tga
                tcGen environment
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/proto2/marble02b_s.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/ceiling_pipe01
{
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/ceiling_pipe01.tga
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

textures/proto2/duct01
{    
     surfaceparm	metalsteps	   
        {
		map textures/effects/tinfx.tga
                tcGen environment
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/proto2/duct01.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/grate_trim
{    
     surfaceparm	metalsteps	   
        {
		map textures/sfx/specular.tga
                tcGen environment
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/proto2/grate_trim.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/techtrim02
{    
     surfaceparm	metalsteps	   
        {
		map textures/sfx/specular.tga
                tcGen environment
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
		map textures/proto2/techtrim02.tga
                blendfunc blend
		rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/proto2/steam01
{
    qer_editorimage textures/proto2/steam_01_img.tga
    cull disable
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm pointlight
    deformVertexes wave 50 sin 0 3 0 .3
    deformVertexes move .3 .1 0  sin 0 .5 0 0.2
	{
		map textures/proto2/steam01.tga
        	tcmod scroll 0 0.3
		blendfunc blend
		rgbGen wave sin 1 .05 0 .75
	}
	{
		map textures/proto2/steam01.tga
        	tcmod scroll 0 0.4
		blendfunc blend
		rgbGen wave sin 0.4 .1 0 .5
	}
}

textures/proto2/steam02
{
    qer_editorimage textures/proto2/steam02_img.tga
    cull disable
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm pointlight
    deformVertexes wave 50 sin 0 3 0 .3
    deformVertexes move .3 .1 0  sin 0 .5 0 0.2
	{
		map textures/proto2/steam02.tga
        	tcmod scroll 0 0.3
		blendfunc blend
		rgbGen wave sin 1 .05 0 .75
	}
	{
		map textures/proto2/steam02.tga
        	tcmod scroll 0 0.4
		blendfunc blend
		rgbGen wave sin 0.4 .1 0 .5
	}
}

textures/proto2/steam01_dc
{
    qer_editorimage textures/proto2/steam_01_img.tga
	cull none
	deformvertexes autosprite2
	surfaceparm trans
	surfaceparm nolightmap
	deformvertexes wave 50 sin 0 4 0 .3
	deformvertexes move .3 .1 0 sin 0 .5 0 0.2
	{
		map textures/spog_dc/steam_add.tga
		tcmod scroll 0 0.3
		blendfunc add
		rgbgen vertex
	}
}

textures/proto2/dust_flat_blue
{
qer_editorimage textures/proto2/steam_01_img.tga
qer_trans 0.50
    cull disable
    surfaceparm trans
    surfaceparm nonsolid
	surfaceparm nomarks
    deformVertexes wave 50 sin 0 3 0 .2
	{
		map textures/proto2/dust03.tga
        	tcmod scroll 0 -0.015
		blendfunc blend
		rgbGen wave sin 1 .05 0 .4
	}
	{
		map textures/proto2/dust02.tga
        	tcmod scroll 0.015 0.02
		blendfunc blend
		rgbGen wave sin 0.3 .04 0 .5
	}

}

textures/proto2/dust_flat
{
    qer_editorimage textures/proto2/steam_01_img.tga
	qer_trans 0.50
    cull disable
    surfaceparm trans
    surfaceparm nonsolid
	surfaceparm nomarks
    deformVertexes wave 50 sin 0 3 0 .2
	{
		map textures/proto2/dust01.tga
        tcmod scroll 0 -0.015
		blendfunc blend
		rgbGen wave sin 1 .05 0 .4
	}
	{
		map textures/proto2/dust02.tga
        tcmod scroll 0.015 0.02
		blendfunc blend
		rgbGen wave sin 0.3 .04 0 .5
	}
}

textures/proto2/dust01
{
    qer_editorimage textures/proto2/steam_01_img.tga
	qer_trans 0.50
    cull disable
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm pointlight
	surfaceparm nomarks
    deformVertexes wave 50 sin 0 3 0 .3
    deformVertexes move .3 .1 0  sin 0 .5 0 0.2
	{
		map textures/proto2/dust01.tga
        tcmod scroll 0 -0.008
		blendfunc blend
		rgbGen wave sin 1 .05 0 .75
	}
	{
		map textures/proto2/dust02.tga
        tcmod scroll 0.01 0.01
		blendfunc blend
		rgbGen wave sin 0.3 .04 0 .5
	}
}

textures/proto2/snow01
{
	qer_trans 0.50
    	qer_editorimage textures/proto2/snowed.tga
    	cull disable
    	deformVertexes autoSprite2
    	deformVertexes wave 50 sin 0 3 0 .2
    	surfaceparm trans
    	surfaceparm pointlight
    	surfaceparm nonsolid
    	surfaceparm nomarks
	{
		map textures/proto2/snow02.tga
        tcmod scroll 0.025 -0.28
		blendfunc blend
	}
	{
		map textures/proto2/snow02.tga
        tcmod scroll -0.01 -0.4
		blendfunc blend
		rgbGen wave sin 0.5 0 0 0
	}
}

textures/proto2/flare2
{
    cull disable
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm nolightmap
	nopicmip
	sort 6
	{
		map textures/proto2/flare2.tga
		blendfunc add
		rgbGen identity
	}


}

textures/proto2/flare_sun
{
	qer_editorimage textures/proto2/sun.tga
    cull disable
    surfaceparm trans
    surfaceparm nolightmap
	nopicmip
	{
		map textures/proto2/sun.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/flare
{
	cull disable
	deformVertexes autoSprite
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nolightmap
	nopicmip
	sort 7
	{
		clampmap textures/proto2/flare.tga
            tcmod rotate 10
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/redflare2
{
    cull disable
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm nolightmap
	nopicmip
	sort 6
	{
		map textures/proto2/redflare2.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/redflare
{
    cull disable
    deformVertexes autoSprite
    surfaceparm trans
    surfaceparm nolightmap
	nopicmip
	sort 6
	{
		clampmap textures/proto2/redflare.tga
                tcmod rotate 10
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/redflare_nonsolid
{
	qer_editorimage textures/proto2/redflare.tga
    cull disable
    deformVertexes autoSprite
    surfaceparm trans
    surfaceparm nonsolid
    surfaceparm nolightmap
	nopicmip
	sort 6
	{
		clampmap textures/proto2/redflare.tga
                tcmod rotate 10
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/pipewall01
{
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/pipewall01.tga
		alphaFunc GE128
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/proto2/pipewall01_noalpha
{
	qer_editorimage textures/proto2/pipewall01.tga
	surfaceparm	metalsteps	
	{
		map textures/proto2/pipewall01.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/rail01
{
	surfaceparm trans	
	surfaceparm alphashadow
	cull none
	nopicmip
	{
		map textures/proto2/rail01.tga
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

textures/proto2/rail01_noshadow
{
	qer_editorimage textures/proto2/rail01.tga
	surfaceparm trans
	cull none
	nopicmip
	{
		map textures/proto2/rail01.tga
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

textures/proto2/tin_floor04_sound
{
	qer_editorimage textures/proto2/tin_floor04.tga
	surfaceparm	metalsteps	
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/tin_floor04.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/tin_panel
{
	surfaceparm	metalsteps	   
	{
		map textures/effects/tinfx.tga
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

textures/proto2/vent01
{
	surfaceparm trans	
	surfaceparm alphashadow
	cull none
	{
		map textures/proto2/vent01.tga
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

textures/proto2/vent01_noalpha
{
	qer_editorimage textures/proto2/vent01.tga
	surfaceparm	metalsteps	 
	{
		map textures/proto2/vent01.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/winframe
{
	{
		map models/weapons/nailgun/nailgun_env.tga
		tcGen environment
		rgbGen identity
	}
	{
		map textures/proto2/winframe.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/proto2/wire
{
	cull disable
	deformVertexes autoSprite2
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/wire.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/proto2/wood_planks
{
	qer_editorimage textures/proto2/wood_planks.tga
	surfaceparm	woodsteps
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/wood_planks.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/wood_planks_02
{
	qer_editorimage textures/proto2/wood_planks_02.tga
	surfaceparm	woodsteps
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/wood_planks_02.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/wood_planks_03
{
	qer_editorimage textures/proto2/wood_planks_03.tga
	surfaceparm	woodsteps
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/proto2/wood_planks_03.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/proto2/xblueflare2
{
	cull disable
	surfaceparm trans
	surfaceparm nolightmap
	nopicmip
	sort 6
	{
		map textures/proto2/blueflare2.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/xredflare2
{
	cull disable
	surfaceparm trans
	surfaceparm nolightmap
	nopicmip
	sort 6
	{
		map textures/proto2/xredflare2.tga
		blendfunc add
		rgbGen identity
	}
}

textures/proto2/xrocky01
{
	surfaceparm nolightmap
	{
		map textures/proto2/xrocky01.tga
		tcmod scale .8 .8
		rgbGen vertex
	}
}

textures/proto2/xsandy01
{
	surfaceparm nolightmap
	{
		map textures/proto2/xsandy01.tga
		tcmod scale .8 .8
		rgbGen vertex
	}
}

textures/proto2/yellow
{
	surfaceparm	metalsteps	   
	{
		map textures/effects/tinfx.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
		rgbGen identity
	}
	{
		map textures/proto2/yellow.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}