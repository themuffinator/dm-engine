textures/sfx/acid_drip
{
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .5
	cull none
	{
		map textures/sfx/acid_drip.tga
		tcMod Scroll 0 -1
		blendfunc add
    	}
}

textures/sfx/beam_narrow
{
	sort 16
	qer_editorimage textures/sfx/beam_narrow.jpg
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nolightmap
	cull disable
	deformVertexes autosprite2
	{
		clampmap textures/sfx/beam_narrow.jpg
		blendfunc add
	}
}

textures/sfx/black-phrantic
{
	qer_editorimage textures/common/invisible.tga
	surfaceparm nolightmap
	{
		map textures/common/invisible.tga
	}
}

textures/sfx/blue_telep
{
	cull disable
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm pointlight
	{
		clampmap textures/ctf/blue_telep.tga
		blendfunc add
		tcmod rotate 327
		rgbgen vertex
	}
	{
		clampmap textures/ctf/blue_telep2.tga
		blendfunc add
		tcmod rotate -211
		rgbgen vertex
	}
	{
		clampmap textures/ctf/telep.tga
		blendfunc blend
		tcmod rotate -20
		rgbgen vertex
	}
}

textures/sfx/bounce_neutral
{
	qer_editorimage textures/sfx/qer_bounce.tga
	q3map_lightimage textures/sfx/bounce_fx.tga
	q3map_surfacelight 400
	surfaceparm nodamage
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset
	qer_trans 0.5
	sort 6
	nopicmip
	{
		map textures/sfx/bounce_base.tga
		rgbGen identity
		alphaFunc GE128
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
		depthFunc equal
	}
	{
		map textures/sfx/bounce_glow.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 1.5
	}
	{
		clampmap textures/sfx/bounce_fx.tga
		blendfunc add
		tcMod stretch sin 1.2 0.8 0 1.5
		rgbGen wave square 0.5 0.5 0.25 1.5
	}
	{
		map textures/sfx/bounce_shadow.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/sfx/bounce_blue
{
	qer_editorimage textures/sfx/qer_bounce_blue.tga
	q3map_lightimage textures/sfx/bounce_fx_blue.tga
	q3map_surfacelight 400
	surfaceparm nodamage
	surfaceparm nomarks
	surfaceparm trans
	nopicmip
	{
		map textures/sfx/bounce_base.tga
		rgbGen identity
		alphaFunc GE128
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
		depthFunc equal
	}
	{
		map textures/sfx/bounce_glow_blue.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 1.5
	}
	{
		clampmap textures/sfx/bounce_fx_blue.tga
		blendfunc add
		tcMod stretch sin 1.2 0.8 0 1.5
		rgbGen wave square 0.5 0.5 0.25 1.5
	}
	{
		map textures/sfx/bounce_shadow.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/sfx/bounce_red
{
	qer_editorimage textures/sfx/qer_bounce_red.tga
	q3map_lightimage textures/sfx/bounce_fx_red.tga
	q3map_surfacelight 400
	surfaceparm nodamage
	surfaceparm nomarks
	surfaceparm trans
	nopicmip
	{
		map textures/sfx/bounce_base.tga
		rgbGen identity
		alphaFunc GE128
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
		depthFunc equal
	}
	{
		map textures/sfx/bounce_glow_red.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 1.5
	}
	{
		clampmap textures/sfx/bounce_fx_red.tga
		blendfunc add
		tcMod stretch sin 1.2 0.8 0 1.5
		rgbGen wave square 0.5 0.5 0.25 1.5
	}
	{
		map textures/sfx/bounce_shadow.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/sfx/bouncepad01_metalbridge06b
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	{
		map textures/sfx/bouncepad01_metalbridge06b.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}
	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}
}

textures/sfx/dc_q3dm7fog
{
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm fog
	surfaceparm nodrop
	surfaceparm nolightmap
	fogparms ( .55 .11 .1 ) 128
}

textures/sfx/energyjump/
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/sq_smalljump1.tga
	q3map_surfacelight 150
	qer_editorimage textures/sfx/energy_pad_04.tga
	nopicmip
	
	{
		map textures/sfx/energy_pad_01.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		clampmap textures/sfx/energy_pad_01.tga
		blendfunc add
		tcMod stretch sin 1.0 .1 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}
	{
		map textures/sfx/energy_pad_02.tga
		blendfunc add
		rgbGen wave sin .5 .5 0.25 1	
	}
	{
		map textures/sfx/energy_pad_03.tga
		blendfunc add
		rgbGen wave sin .5 .5 0.5 1
	}
	{
		map textures/sfx/energy_pad_04.tga
		blendfunc add
		rgbGen wave sin .5 .5 0.75 1	
	}
	{
		map textures/sfx/energy_pad_04.blend.tga
		rgbGen wave sin 0 .5 0.75 1	
		blendfunc add
	}
}

textures/sfx/fog_orange
{
		qer_editorimage textures/sfx/fog_orange.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap
		q3map_surfacelight 100
		fogparms ( .75 .38 0 ) 350
}

textures/sfx/glow_test
{
	qer_editorimage textures/proto2/sun.tga

    	cull disable
    	surfaceparm trans
	surfaceparm nonsolid
	{
		map textures/proto2/sun.tga
		blendfunc  add
		depthwrite
		alphagen portal 1024
	}
}

textures/sfx/wall_jump_blue
{
	qer_editorimage textures/sfx/wall_jump.tga
	{
		map textures/sfx2/rlaunch3_blue.tga
		rgbGen identity
		tcmod scale 1 .5
		tcmod scroll 0 1.42
	}
	{
		map textures/sfx/wall_jump.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}	
}

textures/sfx/wall_jump_blue_trim
{
	qer_editorimage textures/sfx/wall_jump_trim.tga
	{
		map textures/sfx2/rlaunch3_blue_trim.tga
		rgbGen identity
		tcmod scale 1 .5
		tcmod scroll 0 1.42
	}
	{
		map textures/sfx/wall_jump_trim.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}	
}

textures/sfx/wall_jump_nolight
{
	qer_editorimage textures/sfx/wall_jump.tga
	{
		map textures/sfx/wall_jump.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}	
}

textures/sfx/wall_jump
{
	qer_editorimage textures/sfx/wall_jump.tga
	{
		map textures/sfx2/rlaunch3.tga
		rgbGen identity
		tcmod scale 1 .5
		tcmod scroll 0 1.42
	}
	{
		map textures/sfx/wall_jump.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}	
}

textures/sfx/orange_fog
{
	qer_editorimage textures/common/white.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0.3 .2625 0.15 ) 55000
}

textures/sfx/white_fog
{
	qer_editorimage textures/common/white.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( .4 .4 .4 ) 10000
}

textures/sfx/white_fog2
{
	qer_editorimage textures/common/white.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( .4 .4 .5 ) 15000
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/white_fog3
{
	qer_editorimage textures/sfx/fog_grey.tga
	qer_nocarve
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	fogparms ( 0 0 0 ) 50000
}

textures/sfx/white_fog4
{
	qer_editorimage textures/common/white.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( .75 .38 0 ) 40000
}

textures/sfx/white
{
	qer_editorimage textures/common/white.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 500
	{
		map textures/common/white.tga
		blendfunc add
	}
}

textures/sfx/water_reflection
{
	qer_editorimage textures/sfx/water_reflection.tga
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nomarks
	polygonOffset
	deformVertexes wave 64 sin .25 .25 0 .5
	{ 
		map textures/sfx/water_reflection.tga
		blendfunc add
		rgbgen identity
		tcmod scale 1.1 .7
		tcMod turb 0.5 0.03 0 0.12
		tcmod scroll .027 .0
	}
	{ 
		map textures/sfx/water_reflection.tga
		blendfunc add
		tcmod scale 1.2 0.9
		tcMod turb 0 0.05 0 0.1
		tcmod scroll -.016 .0
	}
}

textures/sfx/dirt
{
	qer_editorimage textures/sfx/dirt.tga
	surfaceparm trans
	surfaceparm nonsolid
	cull disable
	nopicmip
	deformVertexes wave 64 sin .25 .25 0 .5	
	{ 
		map textures/sfx/dirt.tga
		blendfunc blend
		rgbGen wave sin 1 .05 0 .75
		tcmod scale .5 .5
		tcmod scroll .025 .01
	}
}

textures/sfx/beam_hi
{
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	nopicmip	
	sort 7
	{
		map textures/sfx/beam_hi.jpg
		tcMod Scroll .3 0
		blendfunc add
	}
     
}

textures/sfx/beam
{
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	nopicmip
	sort 7
	{
		map textures/sfx/beam.tga
		tcMod Scroll .3 0
		blendfunc add
	}
}

textures/sfx/beam_blue
{
	qer_editorimage textures/sfx/beam_blue4.tga
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .6
	cull none
	nopicmip
	sort 7
	{
		map textures/sfx/beam_blue4.tga
		tcMod Scroll .3 0
		blendfunc add
	} 
}

textures/sfx/beam_dusty2
{
	qer_editorimage textures/sfx/beam_1.tga
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	nopicmip
	sort 7
	{
		map textures/sfx/beam_1.tga
		blendfunc add
	}
}

textures/sfx/beam_red
{
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .5
	cull none
	nopicmip
	sort 7
	{
		map textures/sfx/beam_red.tga
		tcMod Scroll .3 0
		blendfunc add
	}
}

textures/sfx/beam_red2
{
	surfaceparm trans	
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .5
	cull none
	nopicmip
	sort 7
	{
		map textures/sfx/beam_red2.tga
		tcMod Scroll .3 0
		blendfunc add
	}
}

textures/sfx/beam_waterlight2
{
	qer_editorimage textures/sfx/beam_waterlight.tga
	q3map_globaltexture
	surfaceparm trans	
    surfaceparm nomarks	
    surfaceparm nonsolid
	surfaceparm nolightmap
	q3map_surfacelight 50
    qer_trans 0.6
	cull none
	nopicmip
	sort 7
	{
		map textures/sfx/beam_waterlight.tga
		tcMod turb 0 0.015 0.5 0.07
		tcMod Scroll .15 0
                blendfunc add
        }
}

textures/sfx/blackness
{	
	surfaceparm nolightmap
	surfaceparm noimpact
	surfaceparm nomarks
	{
		map textures/sfx/blackness.tga
	}
}

textures/sfx/blocks17final_pent
{
	qer_editorimage textures/sfx/blocks17final_pent.tga
	{
		map textures/sfx/blocks17final_pent.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/blocks17final_pent_red_glow.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 .5	
		depthfunc equal
	}
}

textures/sfx/blocks17g_jumpad
{
	surfaceparm nodamage
	q3map_surfacelight 400
	nopicmip

	
	{
		map textures/sfx/blocks17g_jumpad.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/blocks18ccomputer
{
	
	surfaceparm nodamage
	q3map_surfacelight 200

	
	{
		map textures/sfx/blocks18ccomputer.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
	
	{
		animMap 2 textures/sfx/compscreen/letters1.tga  textures/sfx/compscreen/letters5.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 2
	}
	
}

// This should be in base_trim
textures/sfx/border11c
{
	q3map_surfacelight 300
	q3map_lightimage textures/base_trim/border11c_pulse1.tga
	qer_editorimage textures/base_trim/border11c.tga	
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

// This should be in base_trim
textures/sfx/border11c_red
{
	q3map_surfacelight 300
	q3map_lightimage textures/base_trim/border11c_pulse1r.tga
	qer_editorimage textures/base_trim/border11c.tga	
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

textures/sfx/bounce_concrete
{

	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip

	
	{
		map textures/sfx/bounce_concrete.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/jp_01_alpha_teal
{
	surfaceparm nodamage
	qer_editorimage textures/sfx/bounce_base.tga
	q3map_surfacelight 400
	q3map_lightimage textures/sfx/bouncepad01b_layer1_teal.tga
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map textures/sfx/bounce_base.tga
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
	{
		map textures/sfx/bouncepad01b_layer1_teal.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall_teal.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}
}

textures/sfx/bounce_dkfloor_teal
	{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall_teal.tga	
	q3map_surfacelight 400
	qer_editorimage textures/sfx/bounce_dkfloor.tga
	nopicmip
		{
		map textures/sfx/bounce_dkfloor.tga
		rgbGen identity
		}
	
		{
		map $lightmap
		rgbGen identity
		blendfunc filter
		}
	
		{
		map textures/sfx/bouncepad01b_layer1_teal.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
		}

		{
		clampmap textures/sfx/jumppadsmall_teal.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
		}
	}

textures/sfx/bounce_skulls
{

	surfaceparm nodamage
	q3map_lightimage textures/sfx/bounce_skulls.jpg
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bounce_skulls.jpg
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}


textures/sfx/bounce_dirt2
{

	surfaceparm nodamage
	q3map_lightimage textures/sfx/bounce_dirt2.jpg
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bounce_dirt2.jpg
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bouncepad_concrete_dark
{

	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bouncepad_concrete_dark.jpg
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bounce_dirt
{

	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bounce_dirt.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bounce_largeblock3
{

	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bounce_largeblock3.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bounce_largeblock3b
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bounce_largeblock3b.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bounce_largeblock3b3dim
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bounce_largeblock3b3dim.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bounce_metalbridge04
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bounce_metalbridge04.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}
textures/sfx/bounce_metalbridge05
{
	qer_editorimage textures/sfx/bounce_metalbridge05.tga
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bounce_metalbridge05.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/metalbridge06_bounce
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/metalbridge06_bounce.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/metalbridge06_bounce_r
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/bounce_fx_red.tga
	q3map_surfacelight 150
	qer_editorimage textures/sfx/metalbridge06_bounce.tga
	{
		map textures/sfx/metalbridge06_bounce.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/bounce_glow_red.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 1.5
	}
	{
		clampmap textures/sfx/bounce_fx_red.tga
		blendfunc add
		tcMod stretch sin 1.2 0.8 0 1.5
		rgbGen wave square 0.5 0.5 0.25 1.5
	}
}

textures/sfx/metalbridge06_bounce_b
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/bounce_fx_blue.tga
	q3map_surfacelight 150
	qer_editorimage textures/sfx/metalbridge06_bounce.tga
	{
		map textures/sfx/metalbridge06_bounce.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/bounce_glow_blue.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 1.5
	}
	{
		clampmap textures/sfx/bounce_fx_blue.tga
		blendfunc add
		tcMod stretch sin 1.2 0.8 0 1.5
		rgbGen wave square 0.5 0.5 0.25 1.5
	}
}


textures/sfx/bounce_xq1metalbig
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bounce_xq1metalbig.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bouncepad01_block17
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 1000
	nopicmip
	
	{
		map textures/sfx/bouncepad01_block17.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bouncepad01_xarch
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/bouncepad01_xarch.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bouncepad01block18b
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 2000
	nopicmip
	
	{
		map textures/sfx/bouncepad01block18b.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bouncepad1q1metal7_99
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 2000
	nopicmip
	
	{
		map textures/sfx/bouncepad1q1metal7_99.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/bugmirror
{
	qer_editorimage textures/sfx/mirrorkc.tga
	surfaceparm nolightmap
	portal
	{
		map textures/common/mirror1.tga
		blendfunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
		depthWrite
	}
	{
		map textures/sfx/mirrorkc.tga
		blendfunc add	
		depthfunc equal
	}
}

textures/sfx/bullseye
{ 
	cull disable
	surfaceparm nomarks
	surfaceparm nolightmap
	deformVertexes autosprite
	nopicmip
	{
		clampmap textures/sfx/bullseye.tga
		tcMod stretch sin .8 0.2 0 .2
		tcmod rotate 200
		blendfunc add
		rgbGen identity
	}
	{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		tcMod stretch sin .8 0.2 0 .3
		tcmod rotate 70
		alphaFunc GE128 
		rgbGen identity
	}
	{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		tcMod stretch sin .8 0.2 0 .2
		tcmod rotate 50
		alphaFunc GE128
		rgbGen identity
	}
	{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		tcMod stretch sin .8 0.2 0 .1
		tcmod rotate 30
		alphaFunc GE128
		rgbGen identity
	}
}

textures/sfx/bullseye2
{ 
	cull disable
	surfaceparm nomarks
	surfaceparm nolightmap
	deformVertexes autosprite
	nopicmip
	{
		clampmap textures/sfx/bullseye2.tga
		tcMod stretch sin .8 0.2 0 .2
		tcmod rotate 200
		blendfunc add
		rgbGen identity
	}
	{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		tcMod stretch sin .8 0.2 0 .3
		tcmod rotate 70
		alphaFunc GE128 
		rgbGen identity
	}
	{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		tcMod stretch sin .8 0.2 0 .2
		tcmod rotate 50
		alphaFunc GE128
		rgbGen identity
	}
	{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		tcMod stretch sin .8 0.2 0 .1
		tcmod rotate 30
		alphaFunc GE128
		rgbGen identity
	}
}

textures/sfx/clangdark_bounce
{
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/clangdark_bounce.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/clangdark_bounce_b
{
	surfaceparm nodamage
	qer_editorimage textures/sfx/clangdark_bounce.tga
	q3map_lightimage textures/sfx/bounce_fx_blue.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/clangdark_bounce.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/bounce_glow_blue.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 1.5
	}
	{
		clampmap textures/sfx/bounce_fx_blue.tga
		blendfunc add
		tcMod stretch sin 1.2 0.8 0 1.5
		rgbGen wave square 0.5 0.5 0.25 1.5
	}
}

textures/sfx/clangdark_bounce_r
{
	surfaceparm nodamage
	qer_editorimage textures/sfx/clangdark_bounce.tga
	q3map_lightimage textures/sfx/bounce_fx_red.tga	
	q3map_surfacelight 400
	nopicmip
	
	{
		map textures/sfx/clangdark_bounce.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/bounce_glow_red.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 1.5
	}
	{
		clampmap textures/sfx/bounce_fx_red.tga
		blendfunc add
		tcMod stretch sin 1.2 0.8 0 1.5
		rgbGen wave square 0.5 0.5 0.25 1.5
	}
}

textures/sfx/computer_blocks17
{
	surfaceparm nodamage
	q3map_surfacelight 200

	
	{
		map textures/sfx/computer_blocks17.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
	
	{
		animMap 2 textures/sfx/compscreen/letters1.tga  textures/sfx/compscreen/letters5.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 2
	}
	
}

textures/sfx/computerblocks15
{	
	surfaceparm nodamage
	q3map_surfacelight 200

	
	{
		map textures/sfx/computerblocks15.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
	
	{
		animMap 2 textures/sfx/compscreen/letters1.tga  textures/sfx/compscreen/letters5.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 2
	}
}

textures/sfx/computerpurptileb
{
	surfaceparm nodamage
	q3map_surfacelight 200

	
	{
		map textures/sfx/computerpurptileb.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
	

	{
		animMap 2 textures/sfx/compscreen/letters1.tga  textures/sfx/compscreen/letters5.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 2
	}
		
}

textures/sfx/console01
{
        surfaceparm trans	
        surfaceparm nomarks	
	surfaceparm nolightmap
        qer_trans .5
        q3map_surfacelight 150
        q3map_lightimage textures/sfx/console01.tga
	cull none
	{
		clampmap textures/sfx/console01.tga
               
		tcMod rotate 20
		blendfunc add
	}
        {
		clampmap textures/sfx/console02.tga
                
		tcMod rotate -200
		blendfunc add
	}
       
}

textures/sfx/console03
{
        surfaceparm trans	
        surfaceparm nomarks	
	surfaceparm nolightmap
        q3map_surfacelight 150
        q3map_lightimage textures/sfx/console03.tga
	cull none
	{
		clampmap textures/sfx/console01.tga
               
		tcMod rotate 20
		blendfunc add
	}
        {
		clampmap textures/sfx/console02.tga
                
		tcMod rotate -400
		blendfunc add
	}
          {
		clampmap textures/sfx/console03.tga
                
		tcMod rotate 40
		blendfunc add
	}
}

textures/sfx/constfog
{
	qer_editorimage textures/sfx/fog_grey.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	surfaceparm nodrop
	q3map_surfacelight 100
	fogparms ( .8 .8 .8 ) 100
}

textures/sfx/demonltblackfinal
{
	q3map_lightimage textures/sfx/demonltblackfinal_glow2.tga
	q3map_surfacelight 100
	surfaceparm nomarks
	
	{
		map $lightmap
		rgbgen identity
	}

	{
		map textures/sfx/demonltblackfinal.tga
		blendfunc filter
		rgbgen identity
	}

	{
		map textures/sfx/demonltblackfinal_glow2.tga
		blendfunc add
		rgbgen wave sin .9 .1 0 5
	}

}

textures/sfx/diamond2cjumppad
{
	qer_editorimage textures/sfx/bouncepad01_diamond2ctga.tga
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 500
	nopicmip
	
	{
		map textures/sfx/bouncepad01_diamond2ctga.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/diamond2cjumppad_red
{
	qer_editorimage textures/sfx/bouncepad01_diamond2ctga.tga
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumpadred2.tga	
	q3map_surfacelight 500
	nopicmip
	
	{
		map textures/sfx/bouncepad01_diamond2ctga.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1red.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumpadred2.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/diamond2cjumppad_blue
{
	qer_editorimage textures/sfx/bouncepad01_diamond2ctga.tga
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumpadred2.tga	
	q3map_surfacelight 500
	nopicmip
	
	{
		map textures/sfx/bouncepad01_diamond2ctga.tga
		rgbGen identity
	}
	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	
	{
		map textures/sfx/bouncepad01b_layer1blue.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx/jumpadblue2.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}

}

textures/sfx/dust_puppy2
{ 
    
        surfaceparm trans	
	surfaceparm alphashadow
        surfaceparm nomarks	
	cull none

       {
                map textures/sfx/dust_puppy2.tga
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

textures/sfx/fan
{
        surfaceparm trans	
        surfaceparm nomarks	
	cull none
        nopicmip
	{
		clampmap textures/sfx/fan.tga
		tcMod rotate 256 
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

textures/sfx/fan3
{
       cull disable
       surfaceparm alphashadow	
       sort 6
        {
	        map textures/sfx/fan3.tga
		blendfunc blend
	        rgbGen identity
	}
        
        {
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
}

textures/sfx/fan3bladeb
{
    cull disable
    surfaceparm trans	
    surfaceparm nolightmap
	nopicmip
    sort 5
    {
	    clampmap textures/sfx/fan3bladeb.tga
        blendfunc blend
        tcmod rotate 999
	    rgbGen identity
	}    
}

textures/sfx/fanblade_cw
{
	qer_editorimage textures/sfx/fan3bladeb.tga
    cull disable
    surfaceparm trans	
    surfaceparm nolightmap
	nopicmip
    sort 5
    {
	    clampmap textures/sfx/fan3bladeb.tga
        blendfunc blend
        tcmod rotate 999
	    rgbGen identity
	}    
}

textures/sfx/fan_grate
{
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm	metalsteps	
	cull none
        nopicmip
	{
		map textures/sfx/fan_grate.tga
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

textures/sfx/fanfx
{
	qer_editorimage textures/sfx/fanfx.tga
    surfaceparm nolightmap
    surfaceparm trans	
    surfaceparm nomarks	
	cull none
    nopicmip
	{
		clampmap textures/sfx/fanfx.tga
		tcMod rotate 256 
		blendfunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
		rgbGen exactVertex
        depthWrite
	}
}

textures/sfx/fanfx_cw
{
	qer_editorimage textures/sfx/fanfx.tga
    surfaceparm nolightmap
    surfaceparm trans	
    surfaceparm nomarks	
	cull none
    nopicmip
	polygonOffset
	nomipmaps
	sort 6
	{
		clampmap textures/sfx/fanfx.tga
		tcMod rotate 256 
		blendfunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
		rgbGen exactVertex
        depthWrite
	}
}

textures/sfx/fanfx_ccw
{
	qer_editorimage textures/sfx/fanfx.tga
    surfaceparm nolightmap
    surfaceparm trans	
    surfaceparm nomarks	
	cull none
    nopicmip
	polygonOffset
	nomipmaps
	sort 6
	{
		clampmap textures/sfx/fanfx.tga
		tcMod rotate -256
		blendfunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
		rgbGen exactVertex
        depthWrite
	}
}

textures/sfx/fishy
{
    tesssize 32
    deformVertexes wave 10 sin 0 3 0 .5  
    cull disable
    surfaceparm nolightmap
    surfaceparm nomarks	    
        {
                clampmap textures/sfx/fishy.tga
                alphaFunc GE128
                tcMod stretch sin .8 0.10 0 .07
		depthWrite
		
        }
}

textures/sfx/flame1
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	q3map_surfacelight 7500
	nopicmip
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flame1_hell
{
	qer_editorimage textures/sfx/flame1.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	cull none
	q3map_surfacelight 600	
	nopicmip
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flame1dark
{
	qer_editorimage textures/sfx/flame1.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	cull none
	q3map_surfacelight 2000
	nopicmip
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flame1km
{
	qer_editorimage textures/sfx/flame1.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	cull none
	q3map_surfacelight 4000
	nopicmip
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flame1side
{
		qer_editorimage textures/sfx/flame1side.tga
		surfaceparm trans
		surfaceparm nomarks
		surfaceparm nonsolid
		surfaceparm nolightmap
		cull none
	nopicmip
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flame2
{
		surfaceparm nomarks
		surfaceparm nolightmap
		cull none
		q3map_surfacelight 5500
		qer_editorimage textures/sfx/flame2.tga
	nopicmip
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/sfx/flameanim_blue
{
	qer_editorimage textures/sfx/b_flame1.tga
	q3map_lightimage textures/sfx/b_flame7.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	q3map_surfacelight 1800
	nopicmip
	{
		animMap 10 textures/sfx/b_flame1.tga textures/sfx/b_flame2.tga textures/sfx/b_flame3.tga textures/sfx/b_flame4.tga textures/sfx/b_flame5.tga textures/sfx/b_flame6.tga textures/sfx/b_flame7.tga textures/sfx/b_flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/b_flame2.tga textures/sfx/b_flame3.tga textures/sfx/b_flame4.tga textures/sfx/b_flame5.tga textures/sfx/b_flame6.tga textures/sfx/b_flame7.tga textures/sfx/b_flame8.tga textures/sfx/b_flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/b_flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flameanim_blue_nolight
{
	qer_editorimage textures/sfx/b_flame1.tga
	q3map_lightimage textures/sfx/b_flame7.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	nopicmip
	{
		animMap 10 textures/sfx/b_flame1.tga textures/sfx/b_flame2.tga textures/sfx/b_flame3.tga textures/sfx/b_flame4.tga textures/sfx/b_flame5.tga textures/sfx/b_flame6.tga textures/sfx/b_flame7.tga textures/sfx/b_flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10		
	}	
	{
		animMap 10 textures/sfx/b_flame2.tga textures/sfx/b_flame3.tga textures/sfx/b_flame4.tga textures/sfx/b_flame5.tga textures/sfx/b_flame6.tga textures/sfx/b_flame7.tga textures/sfx/b_flame8.tga textures/sfx/b_flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/b_flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flameanim_blue_pj
{
	qer_editorimage textures/sfx/b_flame1.tga
	q3map_lightimage textures/sfx/b_flame7.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	q3map_surfacelight 2500
	nopicmip	
	{
		animMap 10 textures/sfx/b_flame1.tga textures/sfx/b_flame2.tga textures/sfx/b_flame3.tga textures/sfx/b_flame4.tga textures/sfx/b_flame5.tga textures/sfx/b_flame6.tga textures/sfx/b_flame7.tga textures/sfx/b_flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/b_flame2.tga textures/sfx/b_flame3.tga textures/sfx/b_flame4.tga textures/sfx/b_flame5.tga textures/sfx/b_flame6.tga textures/sfx/b_flame7.tga textures/sfx/b_flame8.tga textures/sfx/b_flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/b_flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flameanim_dimmer
{
	qer_editorimage textures/sfx/flame1.tga
	q3map_lightimage textures/sfx/flame6.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	q3map_surfacelight 1500
	nopicmip
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flameanim_green_pj
{
	qer_editorimage textures/sfx/g_flame1.tga
	q3map_lightimage textures/sfx/g_flame6.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	q3map_surfacelight 2500
	nopicmip
	{
		animMap 10 textures/sfx/g_flame1.tga textures/sfx/g_flame2.tga textures/sfx/g_flame3.tga textures/sfx/g_flame4.tga textures/sfx/g_flame5.tga textures/sfx/g_flame6.tga textures/sfx/g_flame7.tga textures/sfx/g_flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10	
	}	
	{
		animMap 10 textures/sfx/g_flame2.tga textures/sfx/g_flame3.tga textures/sfx/g_flame4.tga textures/sfx/g_flame5.tga textures/sfx/g_flame6.tga textures/sfx/g_flame7.tga textures/sfx/g_flame8.tga textures/sfx/g_flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/g_flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flameanim_red
{
	qer_editorimage textures/sfx/r_flame1.tga
	q3map_lightimage textures/sfx/r_flame3.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	q3map_surfacelight 1800
	nopicmip
	{
		animMap 10 textures/sfx/r_flame1.tga textures/sfx/r_flame2.tga textures/sfx/r_flame3.tga textures/sfx/r_flame4.tga textures/sfx/r_flame5.tga textures/sfx/r_flame6.tga textures/sfx/r_flame7.tga textures/sfx/r_flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/r_flame2.tga textures/sfx/r_flame3.tga textures/sfx/r_flame4.tga textures/sfx/r_flame5.tga textures/sfx/r_flame6.tga textures/sfx/r_flame7.tga textures/sfx/r_flame8.tga textures/sfx/r_flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/r_flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flameanim_red_nolight
{
	qer_editorimage textures/sfx/r_flame1.tga
	q3map_lightimage textures/sfx/r_flame3.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none	
	nopicmip
	{
		animMap 10 textures/sfx/r_flame1.tga textures/sfx/r_flame2.tga textures/sfx/r_flame3.tga textures/sfx/r_flame4.tga textures/sfx/r_flame5.tga textures/sfx/r_flame6.tga textures/sfx/r_flame7.tga textures/sfx/r_flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/r_flame2.tga textures/sfx/r_flame3.tga textures/sfx/r_flame4.tga textures/sfx/r_flame5.tga textures/sfx/r_flame6.tga textures/sfx/r_flame7.tga textures/sfx/r_flame8.tga textures/sfx/r_flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/r_flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flameanim_red_pj
{
	qer_editorimage textures/sfx/r_flame1.tga
	q3map_lightimage textures/sfx/r_flame3.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	q3map_surfacelight 2500
	nopicmip
	{
		animMap 10 textures/sfx/r_flame1.tga textures/sfx/r_flame2.tga textures/sfx/r_flame3.tga textures/sfx/r_flame4.tga textures/sfx/r_flame5.tga textures/sfx/r_flame6.tga textures/sfx/r_flame7.tga textures/sfx/r_flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/r_flame2.tga textures/sfx/r_flame3.tga textures/sfx/r_flame4.tga textures/sfx/r_flame5.tga textures/sfx/r_flame6.tga textures/sfx/r_flame7.tga textures/sfx/r_flame8.tga textures/sfx/r_flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/r_flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/flare
{
	qer_editorimage textures/sfx/flare.tga	
	deformVertexes autoSprite

	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none	
	{
		Map textures/sfx/flare.tga
		blendFunc GL_ONE GL_ONE
	}	
	
}

textures/sfx/fog_acid_reflux
{
	qer_editorimage textures/sfx/fog_black.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0.137 0.173 0.110 ) 5000
}

textures/sfx/fog_intel
{
		qer_editorimage textures/sfx/fog_yel.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

		fogparms ( .75 .38 0 ) 800
}

textures/sfx/fog_mkcdm4
{
		qer_editorimage textures/sfx/fog_red.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

	fogparms ( .5 0 0 ) 96
}

textures/sfx/fog_palegreen
{
	qer_editorimage textures/sfx/fog_green.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0.7 1.0 0.7 ) 3000
}

textures/sfx/fog_green
{
	qer_editorimage textures/sfx/fog_green.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0 .15 0 ) 4000
}

textures/sfx/fog_pink
{
	qer_editorimage textures/sfx/fog_purp.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 1.0 0.5 0.7 ) 6000
}

textures/sfx/fog_pink_10k
{
	qer_editorimage textures/sfx/fog_purp.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 1.0 0.5 0.7 ) 10000
}

textures/sfx/fog_pjdm1
{
		qer_editorimage textures/sfx/fog_grey.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

		fogparms ( .733 .737 .620 ) 300

}

textures/sfx/fog_q3dm10
{
		qer_editorimage textures/sfx/fog_yel.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

		fogparms ( 0.75 0.38 0 ) 128
}

textures/sfx/fog_timctf1
{
		qer_editorimage textures/sfx/fog_grey.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

		fogparms ( .729 .729 .780 ) 464

}

textures/sfx/fog_timdm1
{
		qer_editorimage textures/sfx/fog_yel.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

		fogparms ( .615 .309 0 ) 768
}

textures/sfx/fog_qzdm4
{
		qer_editorimage textures/sfx/fog_yel.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

		fogparms ( .615 .309 0 ) 1700
}

textures/sfx/fog_timdm2
{
		qer_editorimage textures/sfx/fog_yel.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

		fogparms ( .615 .309 0 ) 356
}

textures/sfx/fog_timdm8
{
		qer_editorimage textures/sfx/fog_green.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

		fogparms ( .211 .231 .094 ) 250
}

textures/sfx/fog_leviathan_50
{
	qer_editorimage textures/sfx/fog_grey.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	fogparms ( .8 .8 .8 ) 50
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/fog_leviathan_100
{
	qer_editorimage textures/sfx/fog_grey.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	fogparms ( .8 .8 .8 ) 100
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}
textures/sfx/fog_leviathan_150
{
	qer_editorimage textures/sfx/fog_grey.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	fogparms ( .8 .8 .8 ) 150
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/fog_leviathan_300
{
	qer_editorimage textures/sfx/fog_grey.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	fogparms ( .8 .8 .8 ) 300
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/fog_leviathan_500
{
	qer_editorimage textures/sfx/fog_grey.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	fogparms ( .8 .8 .8 ) 500
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/glow_orange_01
{
	q3map_surfacelight 20
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	nopicmip
	{
		map textures/sfx/glow_orange_01.tga	
		rgbGen wave sin .85 .15 0 .5	
		blendfunc add
	}
}

textures/sfx/glow_orange_02
{
	q3map_surfacelight 10
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	nopicmip
	{
		map textures/sfx/glow_orange_02.tga	
		rgbGen wave sin .85 .15 0 .5	
		blendfunc add
	}
}

textures/sfx/glow_orange_03
{
	q3map_surfacelight 5
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	nopicmip
	{
		map textures/sfx/glow_orange_03.tga	
		rgbGen wave sin .85 .15 0 .5	
		blendfunc add
	}
}

textures/sfx/glow_orange_03_autosprite
{
	qer_editorimage textures/sfx/glow_orange_03.tga	
	q3map_surfacelight 5
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	deformVertexes autosprite
	qer_trans 0.70
	nopicmip
	{
		map textures/sfx/glow_orange_03.tga	
		rgbGen wave sin .85 .15 0 .5	
		blendfunc add
	}
}

textures/sfx/glow_orange_03_autosprite2
{
	qer_editorimage textures/sfx/glow_orange_03.tga	
	q3map_surfacelight 5
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	deformVertexes autosprite2
	qer_trans 0.70
	nopicmip
	{
		map textures/sfx/glow_orange_03.tga	
		rgbGen wave sin .85 .15 0 .5	
		blendfunc add
	}
}

textures/sfx/healthfloor
{
	nopicmip
        {
		map textures/sfx/proto_zzztblu2.tga
                tcmod scroll 0 1
                tcMod turb 0 .25 0 1.6
                tcmod scale 2 2
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
	        clampmap textures/gothic_block/blocks18cgeomtrn2.tga
                blendfunc blend
                tcmod rotate 130
                tcMod stretch sin .8 0.2 0 .2
	        rgbGen identity
	}
        {
	        clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		blendfunc blend
                tcmod rotate 80
                tcMod stretch sin .8 0.2 0 .1
	        rgbGen identity
	}
	{
	        clampmap textures/sfx/healthfloor.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx/healthfloor_shiny
{

	qer_editorimage textures/sfx/healthfloor_shiny.tga
	nopicmip

        {
		map textures/sfx/proto_zzztblu2.tga
                tcmod scroll 0 1
                tcMod turb 0 .25 0 1.6
                tcmod scale 2 2
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
	        clampmap textures/gothic_block/blocks18cgeomtrn2.tga
                blendfunc blend
                tcmod rotate 130
                tcMod stretch sin .8 0.2 0 .2
	        rgbGen identity
	}
        {
	        clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		blendfunc blend
                tcmod rotate 80
                tcMod stretch sin .8 0.2 0 .1
	        rgbGen identity
	}
	{
	        clampmap textures/sfx/healthfloor_shiny.tga
		blendfunc blend
	        rgbGen identity
	}
	{
                map textures/effects/tinfx_alphatest.tga //**60 percent fill on alpha channel**
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

textures/sfx/hellfog
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 100
	fogparms ( .55 .11 .1 ) 300

	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/hellfog_1k
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 200
	fogparms ( .5 .12 .1 ) 300

	
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
	}
}

textures/sfx/hellfog_foolish
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 100
	fogparms ( .55 .11 .1 ) 1024

	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}

}


textures/sfx/hellfog_satanic
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 100
	fogparms ( .55 .11 .1 ) 300

	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/hellfog_mini_dm10
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 50
	fogparms ( .5 .12 .1 ) 16

	
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}

}

textures/sfx/hellfog_pj_dm10
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 50
	fogparms ( .5 .12 .1 ) 392

	
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}

}

textures/sfx/hellfog_tim_dm14
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 50
	fogparms ( .55 .11 .1 ) 128
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}


}

textures/sfx/hellfogdense
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 100
	fogparms ( .55 .11 .1 ) 128
	
	

	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
		
}

textures/sfx/jacobs_x
{
        deformVertexes wave 100 sin 0 1 0 5
        q3map_surfacelight	300

	surfaceparm	trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	
	{
		Map textures/sfx/jacobs_x.tga
		blendfunc add
                rgbgen wave triangle 1 2 0 7
	}	
}

textures/sfx/kc_hellfog_1k
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 300
	q3map_lightsubdivide 32
	fogparms ( .5 .12 .1 ) 225

	
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}

}

textures/sfx/qztourney2_fog
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 200
	q3map_lightsubdivide 92
	fogparms ( .5 .12 .1 ) 225

	
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}

}

textures/sfx/kenelectric
{    
         {
                map textures/sfx/kenelectric.tga
                blendfunc GL_ONE GL_ZERO
                tcmod scale 7 7
                tcMod scroll 5 -5
                tcmod rotate 360
                rgbGen identity
	}
        {
		map textures/effects/tinfx2.tga
                tcGen environment
                blendfunc add              
	}   
}

textures/sfx/largerblock3b3_pent
{
	qer_editorimage textures/sfx/largerblock3b3_pent.tga
	{
		map textures/sfx/largerblock3b3_pent.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/pentagramfloor_red_glow.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 .5	
		depthfunc equal
	}
}

textures/sfx/largerblock3b3_pent_1
{
	{
		clampmap textures/sfx/largerblock3b3_pent_1.tga
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
	{
		clampmap textures/sfx/pentagramfloor_red_glow_1.tga
		blendfunc add
		rgbgen wave sin .5 .5 0 .5
		depthfunc equal
	}
}

textures/sfx/largerblock3b3_pent_2
{
	{
		clampmap textures/sfx/largerblock3b3_pent_2.tga
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
	{
		clampmap textures/sfx/pentagramfloor_red_glow_2.tga
		blendfunc add
		rgbgen wave sin .5 .5 0 .5
		depthfunc equal
	}
}

textures/sfx/largerblock3b3_pent_3
{
	{
		clampmap textures/sfx/largerblock3b3_pent_3.tga
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
	{
		clampmap textures/sfx/pentagramfloor_red_glow_3.tga
		blendfunc add
		rgbgen wave sin .5 .5 0 .5
		depthfunc equal
	}
}

textures/sfx/largerblock3b3_pent_4
{
	{
		clampmap textures/sfx/largerblock3b3_pent_4.tga
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
	{
		clampmap textures/sfx/pentagramfloor_red_glow_4.tga
		blendfunc add
		rgbgen wave sin .5 .5 0 .5
		depthfunc equal
	}
}


textures/sfx/largerblock3b3x128_pent
{
	q3map_lightimage textures/sfx/pentagramfloor_blue3glowtest.tga
	q3map_surfacelight 100
	surfaceparm nomarks
	
	{
		map $lightmap
		rgbgen identity
	}

	{
		map textures/sfx/largerblock3b3x128_pent.tga
		blendfunc filter
		rgbgen identity
	}

	{
		map textures/sfx/pentagramfloor_blue3glowtest.tga
		blendfunc add
		rgbgen wave sin .9 .1 0 5
	}

}

textures/sfx/largerblock3b3x128_pentred
{
	qer_editorimage textures/sfx/largerblock3b3x128_pent.tga
	q3map_lightimage textures/gothic_floor/pent_glow.tga
	q3map_surfacelight 500

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sfx/largerblock3b3x128_pent.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_floor/pent_glow.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 0.5
	}
}

textures/sfx/launchpad_blocks17
{
	nopicmip	
	{
		map $lightmap
		rgbGen identity
	}

	{ 
		map textures/sfx/launchpad_blocks17.tga
		rgbGen identity
		blendfunc filter
	}

	{	
		map textures/sfx/launchpad_dot.tga
		blendfunc add	
		rgbgen wave inversesawtooth 0 1 0 1	
	}

	{ 
		animmap 4 textures/sfx/launchpad_arrow.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga
		blendfunc add
		tcmod scroll 0 2
	}

}

textures/sfx/launchpad_arrow
{
	nopicmip
	{ 
		animmap 4 textures/sfx/launchpad_arrow.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga
		blendfunc add
		tcmod scroll 0 2
	}
}

textures/sfx/launchpad_blocks18d
{
	nopicmip
		{
		map $lightmap
		rgbGen identity
	}

	{ 
		map textures/sfx/launchpad_blocks18d.tga
		rgbGen identity
		blendfunc filter
	}

	{	
		map textures/sfx/launchpad_dot.tga
		blendfunc add	
		rgbgen wave inversesawtooth 0 1 0 1	
	}

	{ 
		animmap 4 textures/sfx/launchpad_arrow.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga
		blendfunc add
		tcmod scroll 0 2
	}

}

textures/sfx/launchpad_diamond
{
	nopicmip	
	{
		map $lightmap
		rgbGen identity
	}

	{ 
		map textures/sfx/launchpad_diamond.tga
		rgbGen identity
		blendfunc filter
	}

	{	
		map textures/sfx/launchpad_dot.tga
		blendfunc add	
		rgbgen wave inversesawtooth 0 1 0 1	
	}

	{ 
		animmap 4 textures/sfx/launchpad_arrow.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga
		blendfunc add
		tcmod scroll 0 2
	}

}

textures/sfx/launchpad_metalbridge04d
{
	nopicmip	
	{
		map $lightmap
		rgbGen identity
	}

	{ 
		map textures/sfx/launchpad_metalbridge04d.tga
		rgbGen identity
		blendfunc filter
	}

	{	
		map textures/sfx/launchpad_dot.tga
		blendfunc add	
		rgbgen wave inversesawtooth 0 1 0 1	
	}

	{ 
		animmap 4 textures/sfx/launchpad_arrow.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga
		blendfunc add
		tcmod scroll 0 2
	}

}

textures/sfx/launchpad_concrete
{
	nopicmip
		{
		map $lightmap
		rgbGen identity
	}

	{ 
		map textures/sfx/launchpad_concrete.jpg
		rgbGen identity
		blendfunc filter
	}

	{	
		map textures/sfx/launchpad_dot.tga
		blendfunc add	
		rgbgen wave inversesawtooth 0 1 0 1	
	}

	{ 
		animmap 4 textures/sfx/launchpad_arrow.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga textures/sfx/launchpad_arrow2.tga
		blendfunc add
		tcmod scroll 0 2
	}

}

textures/sfx/lavabeam
{
        surfaceparm trans	
        surfaceparm nomarks	
        surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
        nomipmaps
	{
		map textures/sfx/lavabeam.tga
                tcMod Scroll 999 0
                blendfunc add
        }
     
}

textures/sfx/lightbeam_02_blue
{
	surfaceparm nomarks
	q3map_surfacelight 300
	q3map_lightsubdivide 32
	q3map_lightimage textures/sfx/lb_beam_02_blend.tga
	qer_editorimage textures/sfx/lb_beam_01.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sfx/lb_beam_01.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/sfx/lb_beam_02_blend.tga
		blendfunc add
	}
}

textures/sfx/lightmap
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm 	nodrop
	surfaceparm	fog
	fogparms ( .7 .1 .1 ) 64	
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE
		tcmod scale 1 .01
		tcMod scroll 1 -2		
	}	
}

textures/sfx/metaltech12final_bounce
{
	surfaceparm nodamage	
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 400
	nopicmip
	{
		map textures/sfx/metaltech12final_bounce.tga
		rgbGen identity
	}	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}	
	{
		map textures/sfx/bouncepad01b_layer1.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}
	{
		clampmap textures/sfx/jumppadsmall.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}
}

textures/sfx/mkc_bigflame
{
		surfaceparm trans
		surfaceparm nomarks
		surfaceparm nonsolid
		qer_editorimage textures/sfx/flame1.tga
		q3map_surfacelight 500
		surfaceparm nolightmap
		cull none
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/mkc_fog_ctfblue
{
	qer_editorimage textures/sfx/fog_blue.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm nodrop
	surfaceparm nolightmap
	q3map_globaltexture
	fogparms ( 0.23 0.2 0.26 ) 320
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/mkc_fog_ctfblue2
{
	qer_editorimage textures/sfx/fog_blue.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	fogparms ( 0.1 0.1 0.3 ) 320
	q3map_surfacelight 40
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/mkc_fog_ctfred
{
	qer_editorimage textures/sfx/fog_purp.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	fogparms ( 0.3 0.2 0.2 ) 320

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/mkc_fog_tdm3
{
	qer_editorimage textures/sfx/fog_purp.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	fogparms ( 0.3 0.2 0.2 ) 320
	
	
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/omm
{ 
    
        surfaceparm trans	
	surfaceparm alphashadow
        surfaceparm nomarks	
	cull none

       {
                map textures/sfx/omm.tga
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

textures/sfx/pentagramfloor_red3test
{
	{
		map textures/sfx/pentagramfloor_red3test.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/pentagramfloor_red3glowtest.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 .5	
		depthfunc equal
	}
}

textures/sfx/pentfloor_diamond2c
{
	qer_editorimage textures/sfx/pentfloor_diamond2c.tga
	{
		map textures/sfx/pentfloor_diamond2c.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/pentagramfloor_red_glow.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 .5	
		depthfunc equal
	}
}

textures/sfx/pj_a1_fog1
{
	qer_editorimage textures/sfx/fog_grey.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	surfaceparm nodrop
	q3map_surfacelight 30
	fogparms ( .5 .5 .5 ) 512
}

textures/sfx/portal2_sfx
{
	qer_editorimage textures/sfx/portalfog.tga
	portal
	surfaceparm nolightmap
	surfaceparm nomarks
	deformVertexes wave 100 sin 0 2 0 .5
	nopicmip
	novlcollapse
	{
		map textures/sfx/portal_sfx3.tga
		blendfunc blend
		depthWrite
	}
	{
		map textures/sfx/portal_sfx1.tga
		blendfunc filter
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx.tga
		blendfunc add
		rgbgen wave inversesawtooth 0 .5 .2 .5
	}
	{
		map textures/sfx/portalfog.tga
		blendfunc blend
		rgbGen identityLighting	
		tcmod rotate .1 
		tcmod scroll .01 .03
	}
}

textures/sfx/portal_training_rj
{
	nopicmip
	portal
	surfaceparm nolightmap
	surfaceparm nomarks
	novlcollapse
	{
		map textures/sfx/portal_training_rj.tga
		blendfunc blend
		tcMod stretch sin 1 0.02 0 0.25
		tcMod turb 1 0.01 0 0.1
		depthWrite
	}
	{
		map textures/sfx/portal_training_rj.tga
		rgbGen wave triangle 0.1 0.1 1 2.2
		tcMod turb 1 0.01 0 0.1
		tcMod stretch sin 1 0.05 0 0.25
		blendfunc add
	}
	{
		map textures/sfx/portalnoise.tga
		blendfunc blend
		alphagen portal 512
		rgbGen identityLighting	
		tcmod scale 3 3
		rgbgen wave sin 0.95 0.07 0 .85
		tcmod scroll .01 -.11
	}
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 3.4 3.4
		rgbgen wave sin 0.2 0.05 0 0.5
		tcmod scroll -.025 -.15
	}
}


textures/sfx/portal_training
{
	nopicmip
	portal
	surfaceparm nolightmap
	surfaceparm nomarks
	novlcollapse
	{
		map textures/sfx/portal_training.tga
		blendfunc blend
		tcMod stretch sin 1 0.02 0 0.25
		tcMod turb 1 0.01 0 0.1
		depthWrite
	}
	{
		map textures/sfx/portal_training.tga
		rgbGen wave triangle 0.1 0.1 1 2.2
		tcMod turb 1 0.01 0 0.1
		tcMod stretch sin 1 0.05 0 0.25
		blendfunc add
	}
	{
		map textures/sfx/portalnoise.tga
		blendfunc blend
		alphagen portal 512
		rgbGen identityLighting	
		tcmod scale 3 3
		rgbgen wave sin 0.95 0.07 0 .85
		tcmod scroll .01 -.11
	}
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 3.4 3.4
		rgbgen wave sin 0.2 0.05 0 0.5
		tcmod scroll -.025 -.15
	}
}

textures/sfx/portal_opaque_static
{
	qer_editorimage textures/sfx/portalnoise.tga
	surfaceparm nolightmap
	surfaceparm nomarks
	q3map_surfacelight 100
	nopicmip
	novlcollapse
        {
		map textures/liquids/pool3d_3e.tga
                tcGen environment
                rgbGen identity
		rgbgen wave sin .25 0 0 0
		tcmod scale 2 1
		tcMod scroll .05 .05
	}
	
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		tcmod scale 0.6 0.5
		tcmod scroll .01 -.08
		rgbgen wave sin 0.5 0.07 0 .2
	}

	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		tcmod scale 0.48 0.46
		tcmod scroll .008 -.18
		rgbgen wave sin 0.7 0.07 0 .25
	}	
	{
		map textures/sfx/portalnoise.tga 
		blendfunc add
		rgbgen wave sin 0.35 .04 0 .3
		tcmod scale .27 .25
		tcmod scroll -.01 -0.2
	}
}

textures/sfx/portal_new_nonsolid
{
	qer_editorimage textures/sfx/portaledge
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	novlcollapse
	nopicmip
	novlcollapse
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 1.2 1.2
		tcmod scroll .01 -.11
		rgbgen wave sin 0.95 0.07 0 .85
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 0.9
		tcMod stretch sin 2.65 0.2 0 0.2
		tcMod turb 1 0.1 0 0.1
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 1
		tcMod stretch sin 2.5 0.1 0 0.2
		tcMod turb 1 -0.1 0 0.1
		tcMod rotate 355
	}
	{
		map textures/sfx/portaledge.tga
		blendfunc filter
		tcmod scale 0.5 0.5
		tcmod scroll -.01 -0.11
	}
}

textures/sfx/portal_new_static
{
	qer_editorimage textures/sfx/portaledge
	surfaceparm nolightmap
	surfaceparm nomarks
	nopicmip
	novlcollapse
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 1.2 1.2
		tcmod scroll .01 -.11
		rgbgen wave sin 0.95 0.07 0 .85
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 0.9
		tcMod stretch sin 2.65 0.2 0 0.2
		tcMod turb 1 0.1 0 0.1
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 1
		tcMod stretch sin 2.5 0.1 0 0.2
		tcMod turb 1 -0.1 0 0.1
		tcMod rotate 355
	}
	{
		map textures/sfx/portaledge.tga
		blendfunc filter
		tcmod scale 0.5 0.5
		tcmod scroll -.01 -0.11
	}
}

textures/sfx/portal_orange
{
	qer_editorimage textures/sfx/portal_orange
	surfaceparm nolightmap
	surfaceparm nomarks
	nopicmip
	novlcollapse
	{
		map textures/sfx/portal_orange.add.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 1.2 1.2
		tcmod scroll .01 -.11
		rgbgen wave sin 0.95 0.07 0 .85
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 0.9
		tcMod stretch sin 2.65 0.2 0 0.2
		tcMod turb 1 0.1 0 0.1
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 1
		tcMod stretch sin 2.5 0.1 0 0.2
		tcMod turb 1 -0.1 0 0.1
		tcMod rotate 355
	}
	{
		map textures/sfx/portal_orange.filter.tga
		blendfunc add
		tcmod scale 0.5 0.5
		tcmod scroll -.01 -0.11
	}
}

textures/sfx/portal_new_static_navy
{
	qer_editorimage textures/sfx/portaledge_navy.tga
	surfaceparm nolightmap
	surfaceparm nomarks
	nopicmip
	novlcollapse
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 1.2 1.2
		tcmod scroll .01 -.11
		rgbgen wave sin 0.95 0.07 0 .85
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 0.9
		tcMod stretch sin 2.65 0.2 0 0.2
		tcMod turb 1 0.1 0 0.1
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 1
		tcMod stretch sin 2.5 0.1 0 0.2
		tcMod turb 1 -0.1 0 0.1
		tcMod rotate 355
	}
	{
		map textures/sfx/portaledge_navy2.tga
		blendfunc filter
		tcmod scale 0.5 0.5
		tcmod scroll -.01 -0.11
	}
}

textures/sfx/portal_new_static_red
{
	qer_editorimage textures/sfx/portaledge_red.tga
	surfaceparm nolightmap
	surfaceparm nomarks
	nopicmip
	novlcollapse
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 1.2 1.2
		tcmod scroll .01 -.11
		rgbgen wave sin 0.95 0.07 0 .85
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 0.9
		tcMod stretch sin 2.65 0.2 0 0.2
		tcMod turb 1 0.1 0 0.1
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 1
		tcMod stretch sin 2.5 0.1 0 0.2
		tcMod turb 1 -0.1 0 0.1
		tcMod rotate 355
	}
	{
		map textures/sfx/portaledge_red2.tga
		blendfunc filter
		tcmod scale 0.5 0.5
		tcmod scroll -.01 -0.11
	}
}

textures/sfx/portal_new_nonsolid_black
{
	qer_editorimage textures/sfx/portalnoise
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	novlcollapse
	nopicmip
	novlcollapse
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 1.2 1.2
		tcmod scroll .01 -.11
		rgbgen wave sin 0.95 0.07 0 .85
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 0.9
		tcMod stretch sin 2.65 0.2 0 0.2
		tcMod turb 1 0.1 0 0.1
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 1
		tcMod stretch sin 2.5 0.1 0 0.2
		tcMod turb 1 -0.1 0 0.1
		tcMod rotate 355
	}
	{
		map textures/sfx/portalnoise.tga
		blendfunc filter
		tcmod scale 0.5 0.5
		tcmod scroll -.01 -0.11
	}
}

textures/sfx/portal_new_nonsolid_teal
{
	qer_editorimage textures/sfx/portaledge_teal
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	novlcollapse
	nopicmip
	novlcollapse
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 1.2 1.2
		tcmod scroll .01 -.11
		rgbgen wave sin 0.95 0.07 0 .85
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 0.9
		tcMod stretch sin 2.65 0.2 0 0.2
		tcMod turb 1 0.1 0 0.1
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 1
		tcMod stretch sin 2.5 0.1 0 0.2
		tcMod turb 1 -0.1 0 0.1
		tcMod rotate 355
	}
	{
		map textures/sfx/portaledge_teal2.tga
		blendfunc filter
		tcmod scale 0.5 0.5
		tcmod scroll -.01 -0.11
	}
}

textures/sfx/portal_new_static_teal
{
	qer_editorimage textures/sfx/portaledge_teal
	surfaceparm nolightmap
	surfaceparm nomarks
	nopicmip
	novlcollapse
	{
		map textures/sfx/portalnoise.tga
		blendfunc add
		rgbGen identityLighting	
		tcmod scale 1.2 1.2
		tcmod scroll .01 -.11
		rgbgen wave sin 0.95 0.07 0 .85
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 0.9
		tcMod stretch sin 2.65 0.2 0 0.2
		tcMod turb 1 0.1 0 0.1
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx2.tga
		blendfunc filter
		tcmod scale 1 1
		tcMod stretch sin 2.5 0.1 0 0.2
		tcMod turb 1 -0.1 0 0.1
		tcMod rotate 355
	}
	{
		map textures/sfx/portaledge_teal2.tga
		blendfunc filter
		tcmod scale 0.5 0.5
		tcmod scroll -.01 -0.11
	}
}

textures/sfx/portal_new
{
	qer_editorimage textures/sfx/portaledge
	surfaceparm nolightmap
	surfaceparm nomarks
	portal
	nopicmip
	novlcollapse
	{
		map textures/sfx/portalnoise.tga
		blendfunc blend
		alphagen portal 400
		rgbGen identityLighting	
		tcmod scale 1.2 1.2
		tcmod scroll .01 -.11
	}

	{
		map textures/sfx/portaledge.tga
		blendfunc filter
		tcmod scale 0.5 0.5
		tcmod scroll -.01 -0.11
	}
	{
		map textures/sfx/portalnoise.tga 
		blendfunc add
		rgbgen wave sin 0.08 .04 0 .5
		tcmod scale -.05 -.05
		tcmod scroll -.01 -0.2
	}
	{
		map textures/common/white.tga
		blendfunc blend
		depthWrite
	}
}

textures/sfx/portal_sfx
{
	qer_editorimage textures/sfx/portal_sfx1.tga
	portal
	surfaceparm nolightmap
	surfaceparm nomarks
	deformVertexes wave 100 sin 0 2 0 .5
	nopicmip
	novlcollapse
	{
		map textures/sfx/portal_sfx3.tga
		blendfunc blend
		depthWrite
	}
	{
		map textures/sfx/portal_sfx1.tga
		blendfunc filter
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx.tga
		blendfunc add
		rgbgen wave inversesawtooth 0 .5 .2 .5
	}
	{
		map textures/sfx/portalfog.tga
		blendfunc blend
		alphagen portal 256
		rgbGen identityLighting	
		tcmod rotate 10
		tcmod scroll .1 .3
	}
}

textures/sfx/portal_sfx_ring
{
	qer_editorimage textures/sfx/portal_sfx1.tga
	surfaceparm nomarks
	deformVertexes wave 100 sin 0 2 0 .5
	cull none
	nopicmip
	novlcollapse
	{
		map textures/sfx/portal_sfx_ring_blue1.tga 
		blendfunc blend
		depthWrite
	}
	{	
		map textures/sfx/portal_sfx_ring_electric.tga 
		blendfunc add
		rgbgen wave inversesawtooth 0 1 .2 .5
		tcmod scroll 0 .5
	}
	{
		map textures/sfx/portal_sfx1.tga
		blendfunc filter
		tcMod rotate 360
	}
	{
		map textures/sfx/portal_sfx_ring.tga
		blendfunc add
		rgbgen wave inversesawtooth 0 .5 .2 .5
	}
}

textures/sfx/proto_hellfog
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap

	fogparms ( .275 .012 0 ) 500
}

textures/sfx/proto_zzztblu3
{
	surfaceparm nolightmap
	surfaceparm nonsolid
	cull twosided
	{
		map textures/sfx/proto_zzztblu3.tga
		tcGen environment
		tcMod turb 0 0.25 0 0.5
		tcmod scroll 1 1
		blendfunc add
	}
}

textures/sfx/pureblack
{
	qer_editorimage textures/skies/blacksky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	{
		map textures/skies/blacksky.tga
	}
}

textures/sfx/q3dm14fog
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 100
	fogparms ( .55 .11 .1 ) 256
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/q3dm9fog
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 100
	fogparms ( .55 .11 .1 ) 256
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/q3tourney3fog
{
	qer_editorimage textures/sfx/fog_red.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 100
	fogparms ( .55 .11 .1 ) 384
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/rain
{
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .5
	cull none
	{
		map textures/sfx/rain.tga
		tcMod Scroll .5 -7
		tcMod turb .1 .25 0 -.1
		blendfunc add
    	}
}

textures/sfx/rain2
{
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .5
	cull none
	{
		map textures/sfx/rain2.tga
		tcMod Scroll .5 -7
		tcMod turb .1 .25 0 -.1
		blendfunc add
    	}
}

textures/sfx/rain_dc
{
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
	deformvertexes move 0.6 3.3 0 sin 0 5 0 0.4
	deformvertexes wave 30 sin 0 10 0 .2
	cull none
	{
		map textures/sfx/rain.tga
		tcmod scroll .5 -8
		tcmod turb .1 .25 0 -.1
		blendfunc add
	}
}

textures/sfx/rain_drop
{
	qer_editorimage textures/sfx/rain_drop1.tga
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	deformVertexes autosprite
	qer_trans .5
	{
		animMap 25 textures/sfx/rain_drop1.tga textures/sfx/rain_drop2.tga textures/sfx/rain_drop3.tga textures/sfx/rain_drop4.tga  textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga textures/sfx/rain_drop4.tga
		blendfunc add
	}	
}

textures/sfx/rusty_pentagrate_jp
{
	qer_editorimage textures/base_floor/rusty_pentagrate.tga
	surfaceparm	metalsteps	
    surfaceparm trans		
    surfaceparm alphashadow

	cull none
    nopicmip
	{
		clampmap textures/sfx/rusty_pentagrate.blend.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 1
	}
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

textures/sfx/s_beam_blue
{
	qer_editorimage textures/sfx/s_beam_blue.tga
	q3map_lightimage textures/sfx/s_beam_blue_blend.tga
	q3map_surfacelight 512
	surfaceparm nomarks
	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sfx/s_beam_blue.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/sfx/s_beam_blue_blend.tga
		blendfunc add
		tcmod scroll 0.2 0.0
		rgbGen wave sin .6 .3 .1 .2
	}
}

textures/sfx/s_beam_red
{
	qer_editorimage textures/sfx/s_beam_red.tga
	q3map_lightimage textures/sfx/s_beam_red_blend.tga
	q3map_surfacelight 512
	surfaceparm nomarks
	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sfx/s_beam_red.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/sfx/s_beam_red_blend.tga
		blendfunc add
		tcmod scroll 0.2 0.0
		rgbGen wave sin .4 .3 .0 .1
	}
}

textures/sfx/smallerblock3b3dim_pent
{
	qer_editorimage textures/sfx/smallerblock3b3dim_pent.tga
	{
		map textures/sfx/smallerblock3b3dim_pent.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/pentagramfloor_red_glow.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 .5	
		depthfunc equal
	}
}

textures/sfx/spawn_floor
{
	nopicmip
        {
		map textures/sfx/firegorre2.tga
                tcmod scroll 0 1
                tcMod turb 0 .25 0 1.6
                tcmod scale 2 2
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
	        clampmap textures/gothic_block/blocks18cgeomtrn2.tga
                blendfunc blend
                tcmod rotate 130
                tcMod stretch sin .8 0.2 0 .2
	        rgbGen identity
	}
        {
	        clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		blendfunc blend
                tcmod rotate 80
                tcMod stretch sin .8 0.2 0 .1
	        rgbGen identity
	}
	{
	        map textures/sfx/spawn_floor.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx/spawn_floord2c
{
	nopicmip
	{
		map textures/sfx/proto_zzztblu.tga
        tcmod scroll 0 1
        tcMod turb 0 .25 0 5.6
        tcmod scale 2 2
        blendfunc GL_ONE GL_ZERO
        rgbGen identity
	}
    {
	    clampmap textures/gothic_block/blocks18cgeomtrn2.tga
        blendfunc blend
        tcmod rotate 130
        tcMod stretch sin .8 0.2 0 .2
	    rgbGen identity
	}
    {
	    clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		blendfunc blend
        tcmod rotate 80
        tcMod stretch sin .8 0.2 0 .1
	    rgbGen identity
	}
	{
	    map textures/sfx/spawn_floord2c.tga
		blendfunc blend
	    rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx/spogfog
{
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm fog
	surfaceparm nodrop
	surfaceparm nolightmap
	fogparms ( .55 .11 .01 ) 300
	{
		map textures/liquids/kc_fogcloud3.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/tesla1
{
	qer_editorimage textures/sfx/tesla1.tga
	cull none
	deformVertexes wave 100 triangle 0 5 1 1
	surfaceparm nolightmap
	{
		map textures/sfx/tesla1.tga
		blendfunc add
		rgbGen wave sin .5 0 0 0
		tcMod scroll 5 5
		
	}
}

textures/sfx/tesla1_nonsolid
{
	qer_editorimage textures/sfx/tesla1.tga
	cull none
	deformVertexes wave 100 triangle 0 5 1 1
	surfaceparm nolightmap
	surfaceparm nonsolid
	{
		map textures/sfx/tesla1.tga
		blendfunc add
		rgbGen wave sin .5 0 0 0
		tcMod scroll 5 5
		
	}
}

textures/sfx/teslacoil
{
	cull none
	q3map_lightimage textures/sfx/tesla1.tga	
	qer_editorimage textures/sfx/tesla1.tga
	q3map_surfacelight 100
	{
		map $lightmap
		tcgen environment
		blendfunc filter
	}
	{
		map textures/sfx/tesla1.tga
		blendfunc add
		rgbgen wave sawtooth 0 1 0 5
		tcmod scale 1 .5
		tcmod turb 0 .1 0 1
		tcMod scroll -1 -1
	}
	{
		map textures/sfx/electricslime.tga
		blendfunc add
		rgbgen wave sin 0 .5 0 1
		tcmod scale .5 .5
		tcmod turb 0 .1 0 1
		tcmod rotate 180
		tcmod scroll -1 -1
	}
	{
		map textures/sfx/cabletest2.tga
		blendfunc blend
	}
}

textures/sfx/teslacoil-phrantic
{
	cull none
	q3map_lightimage textures/sfx/tesla1.tga	
	qer_editorimage textures/sfx/cabletest2.tga
	q3map_surfacelight 100
	{
		map textures/skies/meth_clouds.tga
		blendfunc add
		rgbgen wave sawtooth 0.7 0.2 0 5
		tcmod scale 1 .5
		tcmod turb 0 .1 0 1
		tcMod scroll -1 -1
	}
	{
		map textures/sfx/tesla1.tga
		blendfunc add
		rgbgen wave sin 0 .5 0 1
		tcmod scale .5 .5
		tcmod turb 0 .1 0 1
		tcmod rotate 180
		tcmod scroll -1 -1
	}

}

textures/sfx/teslacoil3
{
	cull none
	q3map_lightimage textures/sfx/tesla1b.tga	
	q3map_surfacelight 100
	qer_editorimage textures/sfx/cabletest2.tga
	surfaceparm nolightmap
	{
		map textures/sfx/cabletest2.tga
		blendfunc blend
	}
	{
		map textures/sfx/electricslime2.tga
		blendfunc add
		rgbGen wave square .25 .25 0 2.5
		tcmod scale 1 1
		tcMod scroll 1 1
	}
	{
		map textures/sfx/tesla1b.tga
		blendfunc add
		rgbgen wave square 0 1 0 3
		tcmod scale 1 1
		tcMod scroll -2 1
	}
}

textures/sfx/teslacoil3blue
{
	qer_editorimage textures/sfx/teslacoil.tga
	cull none
	q3map_lightimage textures/sfx/tesla1blue.tga	
	q3map_surfacelight 100
	surfaceparm nolightmap
	{
		map textures/sfx/cabletest2.tga
		blendfunc blend
	}
	{
		map textures/sfx/electricslimeblue.tga
		blendfunc add
		rgbGen wave square .25 .25 0 2.5
		tcmod scale 1 1
		tcMod scroll 1 1
	}
	{
		map textures/sfx/tesla1blue.tga
		blendfunc add
		rgbgen wave square 0 1 0 3
		tcmod scale 1 1
		tcMod scroll -2 1
	}
}

textures/sfx/testconstantfog
{
	qer_editorimage textures/sfx/fog_green.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	surfaceparm nodrop
	q3map_surfacelight 100
	fogparms ( 0 1 0 ) 300
}

textures/sfx/x_conduit
{
	q3map_lightimage textures/sfx/x_conduit.tga
	surfaceparm nomarks
	q3map_surfacelight 100
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/sfx/x_conduit.tga
		blendfunc filter
		rgbGen identity
	}

	{	animMap 10 textures/sfx/x_conduit2.tga textures/sfx/x_conduit3.tga 
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
	}
      {	
		map textures/sfx/x_conduit2.tga
		blendfunc add
                 tcmod scale -1 1
                rgbGen wave sin .5 0.5 0 7
	}
        {	
		map textures/sfx/x_conduit3.tga
		blendfunc add
                tcmod scale -1 1
                 rgbgen wave triangle .2 1 0 9
	}
}

textures/sfx/xblackfog
{
qer_editorimage textures/sfx/fog_black.tga
qer_nocarve
surfaceparm	trans
surfaceparm	nonsolid
surfaceparm	fog
surfaceparm	nolightmap
fogparms ( 0 0 0 ) 128

}

textures/sfx/xbluefog
{
	qer_editorimage textures/sfx/fog_blue.tga
	q3map_surfacelight 300
	q3map_lightsubdivide 64
	q3map_lightimage textures/sfx/xbluelightimage.tga	

	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0.3 0.3 0.9 ) 128

}

textures/sfx/xbluefogx128
{
	qer_editorimage textures/sfx/fog_blue.tga
	q3map_surfacelight 300
	q3map_lightsubdivide 128

	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0.3 0.3 0.9 ) 128

}

textures/sfx/xdensegreyfog
{
	qer_editorimage textures/sfx/fog_grey.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0.7 0.7 0.7 ) 1700
}

textures/sfx/xfinalfog
{
	qer_editorimage textures/sfx/fog_grey.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0.7 0.7 0.7 ) 3000
}

textures/sfx/xfinalfoginvert
{
	qer_editorimage textures/sfx/fog_black.tga
	qer_nocarve
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0 0 0 ) 256
}

textures/sfx/xflame1
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm	nonsolid
	cull none
	q3map_surfacelight 7500
	qer_editorimage textures/sfx/flame1.tga
	

	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	


	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/sfx/xflame1side
{
	surfaceparm trans
	surfaceparm nomarks
	qer_editorimage textures/sfx/flame1.tga
	surfaceparm nolightmap
	surfaceparm	nonsolid
	cull none

	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	


	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/sfx/xflame2
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm	nonsolid
	cull none
	q3map_surfacelight 5500
	qer_editorimage textures/sfx/flame1.tga
	

	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	


	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/sfx/xflame2_1800
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm	nonsolid
	cull none
	q3map_surfacelight 1800
	qer_editorimage textures/sfx/flame1.tga
	

	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	


	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/sfx/xflame2_2250
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm	nonsolid
	cull none
	q3map_surfacelight 2250
	qer_editorimage textures/sfx/flame1.tga
	

	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	


	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/sfx/xflamebright
{
	deformVertexes autoSprite2 
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm	nonsolid
	cull none
	q3map_surfacelight 3000
	qer_editorimage textures/sfx/flame1.tga
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
		rgbGen wave inverseSawtooth 0 1 0 10
	}	
	{
		animMap 10 textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga textures/sfx/flame1.tga
		blendfunc add
		rgbGen wave sawtooth 0 1 0 10
	}	
	{
		map textures/sfx/flameball.tga
		blendfunc add
		rgbGen wave sin .6 .2 0 .6	
	}
}

textures/sfx/xian_dm3padwall
{
	q3map_surfacelight 100
	q3map_lightimage textures/sfx/xian_dm3padwallglow.tga
	qer_editorimage textures/sfx/xian_dm3padwall.tga
	{
		map textures/sfx/xian_dm3padwall.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/xian_dm3padwallglow.tga
		blendfunc add
		rgbgen wave sin 0 1 0 .5
		tcmod scale 1 .05
		tcmod scroll 0 1
	}
}

textures/sfx/xian_dm3padwall_light
{
	q3map_surfacelight 100
	q3map_lightsubdivide 64
	q3map_lightimage textures/sfx/xian_dm3padwallglow.tga
	qer_editorimage textures/sfx/xian_dm3padwall.tga
	{
		map textures/sfx/xian_dm3padwall.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/xian_dm3padwallglow.tga
		blendfunc add
		rgbgen wave sin 0 1 0 .5
		tcmod scale 1 .05
		tcmod scroll 0 1
	}
}

textures/sfx/xlightgreyfog
{
qer_editorimage textures/sfx/fog_grey.tga
surfaceparm	trans
surfaceparm	nonsolid
surfaceparm	fog
surfaceparm	nolightmap
qer_nocarve
fogparms ( 0.7 0.7 0.7 ) 1400

}

textures/sfx/xmetalfloor_wall_5b
{
	qer_editorimage textures/sfx/metalfloor_wall_5b.tga

	{
		map textures/sfx/metalfloor_wall_7b.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/metalfloor_wall_5bglowblu.tga
		blendfunc add
		rgbgen wave sin .5 .2 0 .1	
	}
}

textures/sfx/xmetalfloor_wall_9b
{
	qer_editorimage textures/sfx/metalfloor_wall_9b.tga

	{
		map textures/sfx/metalfloor_wall_9b.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/metalfloor_wall_9bglow.tga
		blendfunc add
	}
}

textures/sfx/xmetalfloor_wall_9b_merge
{
	qer_editorimage textures/sfx/metalfloor_wall_9b.tga
	{
		map textures/sfx/xmetalfloor_wall_merge1.tga
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
	{
		map textures/sfx/xmetalfloor_wall_mergeglow.tga
		blendfunc add
	}
}

textures/sfx/xmetalfloor_wall_14_red
{
	qer_editorimage textures/base_wall/metalfloor_wall_15.jpg
	q3map_lightimage textures/sfx/metalfloor_wall_14bglow_red.jpg
	q3map_surfacelight 50
	{
		map textures/base_wall/metalfloor_wall_15.jpg
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/metalfloor_wall_14bglow_red.jpg
		blendfunc add
	}
}

textures/sfx/xmetalfloor_wall_14b
{
	qer_editorimage textures/sfx/metalfloor_wall_14b.tga
	q3map_lightimage textures/sfx/metalfloor_wall_14bglow2.tga
	q3map_surfacelight 50
	{
		map textures/sfx/metalfloor_wall_14b.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/metalfloor_wall_14bglow2.tga
		blendfunc add
	}
}

textures/sfx/xmetalfloor_wall_14b_merge
{
	qer_editorimage textures/sfx/metalfloor_wall_merge1.tga
	{
		map textures/sfx/xmetalfloor_wall_merge1.tga
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
	{
		map textures/sfx/xmetalfloor_wall_mergeglow.tga
		blendfunc add
	}
}

textures/sfx/xmetalfloor_wall_15y
{
	qer_editorimage textures/base_wall/metalfloor_wall_15.jpg
	q3map_lightimage textures/sfx/metalfloor_wall_14bglowy.jpg
	q3map_surfacelight 50
	{
		map textures/base_wall/metalfloor_wall_15.jpg
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx/metalfloor_wall_14bglowy.jpg
		blendfunc add
	}
}

textures/sfx/xq1metalbig_jumppad
{
	qer_editorimage textures/gothic_floor/q1metal7_98d_256x256.tga
	surfaceparm nodamage
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_floor/q1metal7_98d_256x256.tga
		blendfunc filter
		rgbGen identity
	}
	{
		clampmap textures/sfx/surface6jumppad.blend.tga
		blendfunc add
		rgbGen wave sin 0.75 0.25 0 .2
		tcMod stretch sin 0.80 0.20 0 1
	}
}

textures/sfx/xredfog
{
	q3map_lightimage textures/sfx/xredlightimage.tga	
	qer_editorimage textures/sfx/fog_red.tga
	q3map_surfacelight 300
	q3map_lightsubdivide 64

	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0.9 0.3 0.3 ) 128

}

textures/sfx/zap_scroll
{
	q3map_surfacelight	300
	surfaceparm	trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	{
		Map textures/sfx/zap_scroll.tga
		blendfunc add
		rgbgen wave triangle .8 2 0 7
		tcMod scroll 0 1
	}	
	{
		Map textures/sfx/zap_scroll.tga
		blendfunc add
		rgbgen wave triangle 1 1.4 0 5
		tcMod scale  -1 1
		tcMod scroll 0 1
	}	
	{
		Map textures/sfx/zap_scroll2.tga
		blendfunc add
		rgbgen wave triangle 1 1.4 0 6.3
		tcMod scale  -1 1
		tcMod scroll 2 1
	}	
	{
		Map textures/sfx/zap_scroll2.tga
		blendfunc add
		rgbgen wave triangle 1 1.4 0 7.7
		tcMod scroll -1.3 1
	}	
}

textures/sfx/zap_scroll_grate4
{
	cull none
	{
		map $lightmap
		tcgen environment
		blendfunc filter
	}
	{
		map textures/sfx/tesla1.tga
		blendfunc add
		rgbgen wave sawtooth 0 1 0 5
		tcmod scale 1 .5
		tcmod turb 0 .1 0 1
		tcmod scroll -1 -1
	}
	{
		map textures/sfx/electricslime.tga
		blendfunc add
		rgbgen wave sin 0 .5 0 1
		tcmod scale .5 .5
		tcmod turb 0 .1 0 1
		tcmod rotate 180
		tcmod scroll -1 -1
	}
	{
		map textures/base_floor/proto_grate4.tga
		tcmod scale 2 2
		blendfunc gl_one gl_zero
		alphafunc ge128
		depthwrite
		rgbgen identity
	}
}

textures/sfx/zap_scroll1000
{
	q3map_surfacelight	1000
	surfaceparm	trans
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_lightimage textures/sfx/zap_scroll.tga
	qer_editorimage textures/sfx/zap_scroll2.tga
	cull none
	{
		map textures/sfx/zap_scroll.tga
		blendfunc add
		rgbgen wave triangle .8 2 0 7
		tcMod scroll 0 1
	}
	{
		map textures/sfx/zap_scroll.tga
		blendfunc add
		rgbgen wave triangle 1 1.4 0 5
		tcMod scale  -1 1
		tcMod scroll 0 1
	}
	{
		map textures/sfx/zap_scroll2.tga
		blendfunc add
		rgbgen wave triangle 1 1.4 0 6.3
		tcMod scale  -1 1
		tcMod scroll 2 1
	}
	{
		map textures/sfx/zap_scroll2.tga
		blendfunc add
		rgbgen wave triangle 1 1.4 0 7.7
		tcMod scroll -1.3 1
	}	
}

textures/sfx/zap_scrollblue1000
{
        q3map_surfacelight	1000
        surfaceparm	trans
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_lightimage textures/sfx/zap_scrollblue.tga
	qer_editorimage textures/sfx/zap_scroll2blue.tga
	cull none
	
	{
		map textures/sfx/zap_scrollblue.tga
		blendfunc add
                rgbgen wave triangle .8 2 0 7
                tcMod scroll 0 1
	}	
        {
		map textures/sfx/zap_scrollblue.tga
		blendfunc add
                rgbgen wave triangle 1 1.4 0 5
                tcMod scale  -1 1
                tcMod scroll 0 1
	}	
        {
		map textures/sfx/zap_scroll2blue.tga
		blendfunc add
                rgbgen wave triangle 1 1.4 0 6.3
                tcMod scale  -1 1
                tcMod scroll 2 1
	}	
        {
		map textures/sfx/zap_scroll2blue.tga
		blendfunc add
                rgbgen wave triangle 1 1.4 0 7.7
                tcMod scroll -1.3 1
	}	
}

textures/sfx/ntrl_techfloor_kc
{
	surfaceparm	metalsteps
	surfaceparm 	alphashadow
	surfaceparm	nomarks	 
	nopicmip
	polygonOffset 
	sort 6
	novlcollapse
        qer_editorimage textures/sfx/techfloor_kc.tga
        
        {
		clampmap textures/sfx/zzztntrl_kc.tga
		alphaFunc GE128
		tcmod rotate 360
		rgbgen wave sin .8 .2 0 2
		depthWrite
	}
	{
		clampmap textures/sfx/techfloor2_kc.tga
		blendfunc blend
		tcmod rotate 180
		depthFunc equal
		tcMod stretch sin .8 0.1 0 .4
		rgbGen identity
	}        
	{
		map textures/sfx/techfloor_kc.tga
		blendfunc blend
		depthFunc equal
		rgbGen identity
	}	
	{
		map $lightmap
		blendfunc filter
		depthFunc equal
		rgbgen identity
	}
	{
		map textures/sfx/techfloor_kc_shadow.tga
		blendfunc filter
		rgbGen identity
	}
}

textures/sfx/ntrl_techfloor_kc_teal
{    
     	surfaceparm	metalsteps
	surfaceparm 	alphashadow
	surfaceparm	nomarks	 
	nopicmip
	polygonOffset 
	sort 6
	novlcollapse
        qer_editorimage textures/sfx/techfloor_kc.tga
        
        {
		clampmap textures/sfx/fireswirl2blue2.tga
               	alphaFunc GE128
		tcmod rotate 360
		rgbgen wave sin .8 .2 0 2
		depthWrite
	}
        {
                clampmap textures/sfx/techfloor2_kc.tga
		blendfunc blend
                tcmod rotate 180
		depthFunc equal
                tcMod stretch sin .8 0.1 0 .4
	        rgbGen identity
	}
        
	{
		map textures/sfx/techfloor_kc.tga
                blendfunc blend
		depthFunc equal
		rgbGen identity
	}
	
	{
		map $lightmap
		blendfunc filter
		depthFunc equal
		rgbgen identity
	}
	{
	        map textures/sfx/techfloor_kc_shadow.tga
                blendfunc filter
	        rgbGen identity
	}
}

textures/sfx/red_techfloor_kc
{    
     	surfaceparm	metalsteps
	surfaceparm 	alphashadow
	surfaceparm	nomarks	 
	polygonOffset 
	sort 6
        qer_editorimage textures/sfx/techfloor_kc.tga
	nopicmip
	novlcollapse
        {
		clampmap textures/sfx/zzztred_kc.tga
               	alphaFunc GE128
		tcmod rotate 360
		rgbgen wave sin .8 .2 0 2
		depthWrite
	}
        {
                clampmap textures/sfx/techfloor2_kc.tga
		blendfunc blend
                tcmod rotate 180
		depthFunc equal
                tcMod stretch sin .8 0.1 0 .4
	        rgbGen identity
	}
        
	{
		map textures/sfx/techfloor_kc.tga
                blendfunc blend
		depthFunc equal
		rgbGen identity
	}
	
	{
		map $lightmap
		blendfunc filter
		depthFunc equal
		rgbgen identity
	}
	{
	        map textures/sfx/techfloor_kc_shadow.tga
                blendfunc filter
	        rgbGen identity
	}
}

textures/sfx/blue_techfloor_kc
{    
     	surfaceparm	metalsteps
	surfaceparm 	alphashadow
	surfaceparm	nomarks
	polygonOffset 
	sort 6	 
        qer_editorimage textures/sfx/techfloor_kc.tga
	nopicmip
	novlcollapse
        {
		clampmap textures/sfx/zzztblue_kc.tga
               	alphaFunc GE128
		tcmod rotate 360
		rgbgen wave sin .8 .2 0 2
		depthWrite
	}
        {
                clampmap textures/sfx/techfloor2_kc.tga
		blendfunc blend
                tcmod rotate 180
		depthFunc equal
                tcMod stretch sin .8 0.1 0 .4
	        rgbGen identity
	}
        
	{
		map textures/sfx/techfloor_kc.tga
                blendfunc blend
		depthFunc equal
		rgbGen identity
	}
	
	{
		map $lightmap
		blendfunc filter
		depthFunc equal
		rgbgen identity
	}
	{
	        map textures/sfx/techfloor_kc_shadow.tga
                blendfunc filter
	        rgbGen identity
	}
}

textures/sfx/swirl_b1
{
	deformvertexes wave 100 sin 1 2 .1 1
	q3map_surfacelight	300
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	{
		clampmap textures/sfx/swirl_b1.tga
		blendfunc add
		tcmod rotate -188
	}
	{
		clampmap textures/sfx/swirl_b2.tga
		blendfunc add
		tcmod rotate 333
	}
}

textures/sfx/swirl_r1
{
	deformvertexes wave 100 sin 1 2 .1 1
	q3map_surfacelight	300
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	{
		clampmap textures/sfx/swirl_r1.tga
		blendfunc add
		tcmod rotate -188
	}
	{
		clampmap textures/sfx/swirl_r2.tga
		blendfunc add
		tcmod rotate 333
	}
}

textures/sfx/team4water_fog
{
		qer_editorimage textures/sfx/fog_green.tga
		surfaceparm	trans
		surfaceparm	nonsolid
		surfaceparm	fog
		surfaceparm	nolightmap

		fogparms ( .185 .231 .094 ) 1050

	{
		map textures/liquids/pdfogcloud.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}

	{
		map textures/liquids/pdfogcloud.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx/putridgreen_fog
{
	qer_editorimage textures/sfx/fog_green.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0 .15 0	) 10000
}

textures/sfx/putridgreen_fog_dark
{
	qer_editorimage textures/sfx/fog_green.tga
	qer_trans .5
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	qer_nocarve
	fogparms ( 0.15 0.25 0.15 ) 2000
}
