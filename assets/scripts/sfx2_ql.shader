textures/sfx2/autorain
{
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .5
	deformVertexes move 3 1 0  sin 0 5 0 0.2
	deformVertexes move .6 3.3 0  sin 0 5 0 0.4
	deformVertexes autoSprite2
	cull none
	{
		map textures/sfx2/autorain.tga
		tcMod Scroll .5 -8
		tcMod turb .1 .25 0 -.1
		blendfunc add
	}
}

textures/sfx2/b_flame1
{
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
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

textures/sfx2/b_smack01
{
	cull disable
	surfaceparm trans
	surfaceparm nolightmap
	{
		map textures/sfx2/b_smack01.tga
		blendfunc add
		tcMod turb 0 .05 .06 .25
		rgbgen wave sin 0 1 0 .19
	}
	{
		map textures/sfx2/b_smack03.tga
		blendfunc add
		tcMod turb 0 .05 .07 .33
		rgbgen wave sin 0 1 0 7
	}
	{
		map textures/sfx2/b_smack02.tga
		blendfunc add
		tcMod turb 0 .07 .05 .4
		rgbgen wave sin 0 1 0 .5
	}
}

textures/sfx2/beam01
{
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	cull none
	nomipmaps
	{
		map textures/sfx2/beam01.tga
		tcMod Scroll .1 0
		blendfunc add
	}
}

textures/sfx2/blue_edge
{
	cull disable
	surfaceparm trans
	surfaceparm nolightmap
	{
		map textures/sfx2/blue_edge.tga
		blendfunc add
		tcMod scale .2 .2
		tcMod scroll .2 .2
		rgbGen identity
	}
}

textures/sfx2/jumppad_useandabuse
{
	qer_editorimage textures/sfx2/jumpad06.tga
	q3map_lightimage textures/sfx/bounce_fx_blue.tga
	q3map_surfacelight 150
	surfaceparm trans
	surfaceparm nomarks
	polygonOffset
	sort 6
	nopicmip
	{
		map textures/sfx2/jumppad_rust.tga
		alphafunc GE128
		depthwrite
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadb3.tga
		depthfunc equal
		blendfunc add
		rgbGen wave sin 0.8 0.2 1 .5
		tcmod rotate 130
	}
 	{
		clampmap textures/sfx2/jumpadb2.tga
		blendfunc add
		depthfunc equal
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 .5
		rgbGen wave square .5 .5 .25 .5
	}
	{
		map textures/sfx2/jumportal01.tga
		blendfunc blend
		depthfunc equal
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
		rgbGen identity
	}
}


textures/sfx2/jumppad_pillbox
{
	qer_editorimage textures/sfx2/jumpad06.tga
	q3map_lightimage textures/sfx/bounce_fx_red.tga
	q3map_surfacelight 150
	surfaceparm trans
	surfaceparm nomarks
	polygonOffset
	sort 6
	nopicmip
	{
		map textures/sfx2/jumppad_rust.tga
		alphafunc GE128
		depthwrite
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadr3.tga
		depthfunc equal
		blendfunc add
		rgbGen wave sin 0.8 0.2 1 .5
		tcmod rotate 130
	}
 	{
		clampmap textures/sfx2/jumpadr.tga
		blendfunc add
		depthfunc equal
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 .5
		rgbGen wave square .5 .5 .25 .5
	}
	{
		map textures/sfx2/jumportal01.tga
		blendfunc blend
		depthfunc equal
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
		rgbGen identity
	}
}

textures/sfx2/blue_jumpad
{
	qer_editorimage textures/sfx2/jumpad02.tga 
	{
		map textures/sfx2/jumpadb.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadb2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad02.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/blue_jumpad2
{
	qer_editorimage textures/sfx2/jumpad01.tga 
	{
		map textures/sfx2/jumpadb.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadb2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad01.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/blue_jumpad3
{
	qer_editorimage textures/sfx2/jumpad03.tga 
	nopicmip        
	{
		map textures/sfx2/jumpadb.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadb2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad03.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/blue_jumpad05
{
	qer_editorimage textures/sfx2/jumpad05.tga 
	nopicmip      
	{
		map textures/sfx2/jumpadb.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadb2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad05.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/blue_jumpad6
{
	qer_editorimage textures/sfx2/jumpad_tile01.tga 
	q3mapsurfacelight 500
	qer_lightimage textures/sfx2/jumpadb2.tga
	nopicmip
	{
		map textures/sfx2/jumpadb.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadb2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad_tile01.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/blue_launchpad
{
	qer_editorimage textures/sfx2/launchpad03.tga 
	nopicmip
	{
		map textures/sfx2/tread.tga
		blendfunc GL_ONE GL_ZERO
		tcmod scroll 0 .7
		tcmod scale  1 2
		rgbGen identity
	}
	{
		map textures/sfx2/blaunch.tga
		blendfunc add
		tcmod scale  1 .5
		tcmod scroll 0 2
		rgbgen wave square 0 1 0 2
		alphagen wave square 0 1 .1 2
	}
	{
		map textures/sfx2/launchpad03.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
	{
		map textures/sfx2/blaunch2.tga
		blendfunc add
		rgbgen wave square 0 1 0 1
		alphagen wave square 0 1 .1 1
	}
}

textures/sfx2/blue_launchpady
{
	qer_editorimage textures/sfx2/launchpad03y.tga 
	nopicmip
	polygonOffset 
	sort 6
	novlcollapse
	{
		map textures/sfx2/tready.tga
		blendfunc GL_ONE GL_ZERO
		tcmod scroll 0 .7
		tcmod scale  1 2
		rgbGen identity
	}
	{
		map textures/sfx2/blaunch.tga
		blendfunc add
		tcmod scale  1 .5
		tcmod scroll 0 2
		rgbgen wave square 0 1 0 2
		alphagen wave square 0 1 .1 2
	}
	{
		map textures/sfx2/launchpad03y.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
	{
		map textures/sfx2/blaunch2.tga
		blendfunc add
		rgbgen wave square 0 1 0 1
		alphagen wave square 0 1 .1 1
	}
}

textures/sfx2/bluegoal2
{
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull twosided
	{
		map textures/sfx2/bluegoal2.tga
		tcGen environment
                tcmod scale 2 2
		blendfunc add
		tcMod turb 0 0.25 0 0.5
	}
}

textures/sfx2/demonltblacknolight
{
	q3map_lightimage textures/sfx/demonltblackfinal_glow2.tga
	surfaceparm nomarks
	qer_editorimage textures/sfx/demonltblackfinal.tga
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

textures/sfx2/dist_fog
{
	qer_editorimage textures/sfx2/dist_fog.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm	nolightmap
	surfaceparm nodrop
	fogparms ( .05 .04 .03 ) 512
}


textures/sfx2/doubler
{
	nopicmip
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull twosided
	deformVertexes autoSprite
	{
		map textures/sfx2/doubler.tga
		blendfunc add
		rgbGen identity
	}
}

textures/sfx2/drizzle
{
	surfaceparm trans	
	surfaceparm nomarks	
	surfaceparm nonsolid
	surfaceparm nolightmap
	qer_trans .5
	deformVertexes move 3 1 0  sin 0 5 0 0.2
	deformVertexes move .6 3.3 0  sin 0 5 0 0.4
	deformVertexes wave 30 sin 0 10 0 .2
	cull none      
	{
		map textures/sfx2/drizzle.tga
		tcMod Scroll .5 -8
		blendfunc add
	}
	{
		map textures/sfx2/drizzle.tga
		tcMod Scroll .01 -6.3
		blendfunc add
	}
}

textures/sfx2/fan01_jumppad
{
	qer_editorimage textures/sfx2/jumppad_rust.tga
	surfaceparm trans
	surfaceparm nomarks
	nopicmip
	{
		map textures/sfx2/jumppad_rust.tga
		alphafunc GE128
		depthwrite
		rgbGen identity
	}
 	{
		clampmap textures/sfx2/jumpadr2.tga
		blendfunc add
		depthfunc equal
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		depthfunc equal
		tcmod rotate 360
		rgbGen identity
	}
	{
		map textures/sfx2/jumportal01.tga
		blendfunc blend
		depthfunc equal
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
		rgbGen identity
	}
}

textures/sfx2/fan01_jumppad_b
{
	qer_editorimage textures/sfx2/jumppad_rust.tga
	surfaceparm trans
	surfaceparm nomarks
	nopicmip
	{
		map textures/sfx2/jumppad_rust.tga
		alphafunc GE128
		depthwrite
		rgbGen identity
	}
 	{
		clampmap textures/sfx2/jumpadb2.tga
		blendfunc add
		depthfunc equal
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		depthfunc equal
		tcmod rotate 360
		rgbGen identity
	}
	{
		map textures/sfx2/jumportal01.tga
		blendfunc blend
		depthfunc equal
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
		rgbGen identity
	}
}

textures/sfx2/fan_jumppad06_b
{
	qer_editorimage textures/sfx2/jumpad06.tga
	q3map_lightimage textures/sfx/bounce_fx_blue.tga
	q3map_surfacelight 150
	surfaceparm trans
	surfaceparm nomarks
	nopicmip
	{
		map textures/sfx2/jumppad_rust.tga
		alphafunc GE128
		depthwrite
		rgbGen identity
	}
 	{
		clampmap textures/sfx2/jumpadb2.tga
		blendfunc add
		depthfunc equal
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		depthfunc equal
		tcmod rotate 360
		rgbGen identity
	}
	{
		map textures/sfx2/jumportal01.tga
		blendfunc blend
		depthfunc equal
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
		rgbGen identity
	}
}

textures/sfx2/fan_jumppad06_r
{
	qer_editorimage textures/sfx2/jumpad06.tga
	q3map_lightimage textures/sfx/bounce_fx_red.tga
	q3map_surfacelight 150
	surfaceparm trans
	surfaceparm nomarks
	nopicmip
	{
		map textures/sfx2/jumppad_rust.tga
		alphafunc GE128
		depthwrite
		rgbGen identity
	}
 	{
		clampmap textures/sfx2/jumpadr2.tga
		blendfunc add
		depthfunc equal
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		depthfunc equal
		tcmod rotate 360
		rgbGen identity
	}
	{
		map textures/sfx2/jumportal01.tga
		blendfunc blend
		depthfunc equal
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		depthfunc equal
		rgbGen identity
	}
}

textures/sfx2/flame_nolit_noshad
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	cull none
	qer_editorimage textures/sfx/flame1.tga
	{
		animMap 10 textures/sfx/flame1.tga textures/sfx/flame2.tga textures/sfx/flame3.tga textures/sfx/flame4.tga textures/sfx/flame5.tga textures/sfx/flame6.tga textures/sfx/flame7.tga textures/sfx/flame8.tga
		blendfunc add
	}
}

textures/sfx2/flameanim_blue_lowlite
{
	qer_editorimage textures/sfx/b_flame7.tga
	q3map_lightimage textures/sfx/b_flame7.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	q3map_surfacelight 1000
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

textures/sfx2/flameanim_red_lowlite
{
	qer_editorimage textures/sfx/r_flame3.tga
	q3map_lightimage textures/sfx/r_flame3.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	q3map_surfacelight 1000
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

textures/sfx2/guard
{
	nopicmip
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull twosided
	deformVertexes autoSprite
	{
		map textures/sfx2/guard.tga
		blendfunc add
		rgbGen identity
	}
}

textures/sfx2/jp_01_alpha_green
{
	surfaceparm nodamage
	qer_editorimage textures/sfx2/jp_01_alpha_green.tga
	q3map_surfacelight 400
	q3map_lightimage textures/sfx2/jp_01_ring_green.tga
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map textures/sfx2/jp_01_alpha_green.tga
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
		map textures/sfx2/bouncepad01b_layer1_green.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 1.5	
	}

	{
		clampmap textures/sfx2/jp_01_ring_green.tga
		blendfunc add
		tcMod stretch sin 1.2 .8 0 1.5
		rgbGen wave square .5 .5 .25 1.5
	}
}

textures/sfx2/jumppad_q1metal7_97
//Red side bounce pad
{
	qer_editorimage textures/sfx2/bouncepad_q1metal7_97.tga
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 1000
	nopicmip
	{
		map textures/sfx2/bouncepad_q1metal7_97.tga
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

textures/sfx2/jumppad_q1metal7_98
//Blue side bounce pad
{
	qer_editorimage textures/sfx2/bouncepad_q1metal7_98.tga
	surfaceparm nodamage
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	q3map_surfacelight 1000
	nopicmip
	{
		map textures/sfx2/bouncepad_q1metal7_98.tga
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

textures/sfx2/jumpadx
{
	nopicmip
	{
		map textures/sfx2/jumpadn.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadn2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpadx.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/jumportal01
{
	surfaceparm trans
	cull none
	nopicmip
	{
		map textures/sfx2/jumportal01.tga
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

textures/sfx2/jumportal02
{
	surfaceparm trans
	cull none
	nopicmip
	{
		map textures/sfx2/jumportal02.tga
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

textures/sfx2/kamikaze
{
	nopicmip
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull twosided
	deformVertexes autoSprite
	{
		map textures/sfx2/kamikaze.tga
		blendfunc add
		rgbGen identity
	}
}

textures/sfx2/mainbanner
{
	{
		map textures/sfx2/mainbanner.tga
		blendfunc add
		tcmod scroll .02 0
	}
}

textures/sfx2/menuflare
{
	{
		clampmap textures/sfx2/menuflare.tga
		blendfunc add
		tcmod rotate 30
	}
}

textures/sfx2/nebula
{
    cull disable
    surfaceparm trans
    surfaceparm pointlight
    surfaceparm nomarks
	{
		map textures/sfx2/nebula.tga
		tcmod scroll .008 .012
		blendfunc add
		rgbGen vertex
	}
	{
		map textures/sfx2/nebula.tga
		tcmod scroll -.01 .012
		tcMod stretch sin .8 0.10 0 .01
		blendfunc add
		rgbGen vertex
	}
}

textures/sfx2/ntrl_jumpad
{
	qer_editorimage textures/sfx2/jumpad02.tga 
	{
		map textures/sfx2/jumpadn.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadn2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad02.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/ntrl_jumpad2
{
	qer_editorimage textures/sfx2/jumpad01.tga 
	nopicmip
	{
		map textures/sfx2/jumpadn.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadn2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad01.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/ntrl_jumpad3
{
	qer_editorimage textures/sfx2/jumpad03.tga 
	nopicmip
	{
		map textures/sfx2/jumpadn.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadn2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad03.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/ntrl_jumpad3b
{
	qer_editorimage textures/sfx2/jumpad03.tga 
	nopicmip
	{
		map textures/sfx2/jumpadb.tga
		blendfunc gl_one gl_zero
		tcmod rotate 130
		rgbgen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadb2.tga
		blendfunc add
		tcmod rotate 130
		tcmod stretch sin 1.2 .8 0 1.4
		rgbgen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad03.tga
		blendfunc blend
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_one_minus_dst_alpha
		rgbgen identity
	}
}

textures/sfx2/ntrl_launchpad
{
	qer_editorimage textures/sfx2/launchpad03.tga 
	nopicmip
	{
		map textures/sfx2/tread.tga
		blendfunc GL_ONE GL_ZERO
		tcmod scroll 0 .7
		tcmod scale  1 2
		rgbGen identity
	}
	{
		map textures/sfx2/nlaunch.tga
		blendfunc add
		tcmod scale  1 .5
		tcmod scroll 0 2
		rgbgen wave square 0 1 0 2
		alphagen wave square 0 1 .1 2
	}
	{
		map textures/sfx2/launchpad03.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
	{
		map textures/sfx2/nlaunch2.tga
		blendfunc add
		rgbgen wave square 0 1 0 1
		alphagen wave square 0 1 .1 1
	}  
}

textures/sfx2/ouchfog
{
	qer_editorimage textures/sfx2/ouchfog.tga
	surfaceparm	trans
	surfaceparm	nonsolid
	surfaceparm	fog
	surfaceparm 	nodrop
	surfaceparm 	nolightmap
	q3map_globaltexture
	q3map_surfacelight 120
	fogparms ( .66 0 0 ) 392
	{
		map textures/sfx2/ouchfog.tga
		blendfunc filter
		tcmod scale -.05 -.05
		tcmod scroll .01 -.01
		rgbgen identity
	}
	{
		map textures/sfx2/ouchfog.tga
		blendfunc filter
		tcmod scale .05 .05
		tcmod scroll .01 -.01
		rgbgen identity
	}
}

textures/sfx2/padwall_ntl
{
	q3map_lightimage textures/sfx2/dm3padwallglow_ntl.tga
	qer_editorimage textures/sfx2/dm3padwall_red.tga
	{
		map textures/sfx2/dm3padwall_red.tga
		rgbGen identity
	}	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx2/dm3padwallglow_ntl.tga
		blendfunc add
		rgbgen wave sin 0 1 0 .5
		tcmod scale 1 .05
		tcmod scroll 0 1
	}
}

textures/sfx2/padwall_red
{
	q3map_lightimage textures/sfx2/dm3padwallglow_red.tga
	qer_editorimage textures/sfx2/dm3padwall_red.tga
	{
		map textures/sfx2/dm3padwall_red.tga
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
	{
		map textures/sfx2/dm3padwallglow_red.tga
		blendfunc add
		rgbgen wave sin 0 1 0 .5
		tcmod scale 1 .05
		tcmod scroll 0 1
	}
}

textures/sfx2/padwall_red_light
{
	q3map_lightimage textures/sfx2/dm3padwallglow_red.tga
	qer_editorimage textures/sfx2/dm3padwall_red.tga
	q3map_surfacelight 100
	q3map_lightsubdivide 64
	{
		map textures/sfx2/dm3padwall_red.tga
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map textures/sfx2/dm3padwallglow_red.tga
		blendfunc add
		rgbgen wave sin 0 1 0 .5
		tcmod scale 1 .05
		tcmod scroll 0 1
	}
}

textures/sfx2/pagans
{
	{
		clampmap ui/assets/pagans.tga
		blendfunc add
		rgbgen wave sin .25 0 0 0
	}
}

textures/sfx2/r_fight01
{
	cull disable
	surfaceparm trans
	surfaceparm nolightmap
	{
		map textures/sfx2/r_fight01.tga
		blendfunc add
		tcMod turb 0 .05 .06 .25
		rgbgen wave sin 0 1 0 .19
	}
	{
		map textures/sfx2/r_fight02.tga
		blendfunc add
		tcMod turb 0 .05 .07 .33
		rgbgen wave sin 0 1 0 7
	}
	{
		map textures/sfx2/r_fight03.tga
		blendfunc add
		tcMod turb 0 .07 .05 .4
		rgbgen wave sin 0 1 0 .5
	}  
}

textures/sfx2/red_edge
{
	cull disable
	surfaceparm trans
	surfaceparm nolightmap
	{
		map textures/sfx2/red_edge.tga
		blendfunc add
		tcMod scale .2 .2
		tcMod scroll .2 .2
		rgbGen identity
	}
}

textures/sfx2/red_jumpad
{
	qer_editorimage textures/sfx2/jumpad02.tga 
	{
		map textures/sfx2/jumpadr.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadr2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad02.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/red_jumpad2
{
	qer_editorimage textures/sfx2/jumpad01.tga 
	{
		map textures/sfx2/jumpadr.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadr2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad01.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/red_jumpad3
{
	qer_editorimage textures/sfx2/jumpad03.tga 
	nopicmip
	{
		map textures/sfx2/jumpadr.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadr2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad03.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/red_jumpad05
{
	qer_editorimage textures/sfx2/jumpad05.tga 
	nopicmip
	{
		map textures/sfx2/jumpadr.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadr2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad05.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/red_jumpad6
{
	qer_editorimage textures/sfx2/jumpad_tile01.tga 
	q3mapsurfacelight 500
	qer_lightimage textures/sfx2/jumpadr2.tga
	nopicmip
	{
		map textures/sfx2/jumpadr.tga
		blendfunc GL_ONE GL_ZERO
		tcmod rotate 130
		rgbGen identity
	}
	{
		map textures/sfx2/fan01.tga
		blendfunc blend
		tcmod rotate -311
		rgbGen identity
	}
	{
		clampmap textures/sfx2/jumpadr2.tga
		blendfunc add
		tcmod rotate 130
		tcMod stretch sin 1.2 .8 0 1.4
		rgbGen wave square .5 .5 .25 1.4
	}
	{
		map textures/sfx2/jumpad_tile01.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/red_launchpad
{
	qer_editorimage textures/sfx2/launchpad03.tga 
	nopicmip
	{
		map textures/sfx2/tread.tga
		blendfunc GL_ONE GL_ZERO
		tcmod scroll 0 .7
		tcmod scale  1 2
		rgbGen identity
	}
	{
		map textures/sfx2/rlaunch.tga
		blendfunc add
		tcmod scale  1 .5
		tcmod scroll 0 2
		rgbgen wave square 0 1 0 2
		alphagen wave square 0 1 .1 2
	}
	{
		map textures/sfx2/launchpad03.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
	{
		map textures/sfx2/rlaunch2.tga
		blendfunc add
		rgbgen wave square 0 1 0 1
		alphagen wave square 0 1 .1 1
    }
}

textures/sfx2/redgoal2
{
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull twosided
	{
		map textures/sfx2/redgoal2.tga
		tcGen environment
		tcmod scale 2 2
		blendfunc add
		tcMod turb 0 0.25 0 0.5
	}
}

textures/sfx2/scout
{
	nopicmip
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull twosided
	deformVertexes autoSprite
	{
		map textures/sfx2/scout.tga
		blendfunc add
		rgbGen identity
	}
}

textures/sfx2/screen01
{
	cull disable
	surfaceparm nomarks
	{
		map textures/sfx2/screen01.tga
		tcMod scroll 9 .1
		rgbGen identity
	}
	{
		map textures/effects2/tinfx_scr.tga
		blendfunc add
		tcGen environment
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	} 
}

textures/sfx2/scrolling_red
{
	qer_editorimage textures/base_light/jaildr1_3.tga
	q3map_lightimage textures/base_light/jaildr1_3.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/base_light/jaildr1_3.tga
		blendfunc filter
		rgbGen identity
		tcMod scroll 0 -0.25
	}
	{
		map textures/base_light/jaildr1_3.blend.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 1 1 
		tcMod scroll 0 -0.25
	}
}

textures/sfx2/senbouncenolit
{
	surfaceparm nodamage
	surfaceparm nomarks
	q3map_lightimage textures/sfx/jumppadsmall.tga	
	qer_editorimage textures/sfx/bouncepad01block18b.tga
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

textures/sfx2/swirl_b1
{
	deformVertexes wave 100 sin 1 2 .1 1
	surfaceparm	trans
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	cull none
	nopicmip
	{
		clampmap textures/sfx2/swirl_b1.tga
		blendfunc add
		tcMod rotate -188
	}
	{
		clampmap textures/sfx2/swirl_b2.tga
		blendfunc add
		tcMod rotate 333
	}
}	

textures/sfx2/swirl_r1
{
	deformVertexes wave 100 sin 1 2 .1 1
	surfaceparm	trans
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	cull none
	nopicmip
	{
		clampmap textures/sfx2/swirl_r1.tga
		blendfunc add
		tcMod rotate -188
	}
	{
		clampmap textures/sfx2/swirl_r2.tga
		blendfunc add
		tcMod rotate 333
	}
}	

textures/sfx2/tread2
{
	{
		map textures/sfx2/tread2.tga
		blendfunc GL_ONE GL_ZERO
		tcmod scroll 0 1
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/sfx2/ven_beam
{
	qer_editorimage textures/sfx2/ven_beam_img.tga
	cull disable
	surfaceparm trans
	{
		map textures/sfx2/ven_beam.tga
		blendfunc add
		rgbGen identity
	}      
}