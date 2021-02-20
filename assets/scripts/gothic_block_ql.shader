textures/gothic_block/blocks15_trans
{
	surfaceparm nonsolid
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_block/blocks15.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_block/blocks15cgeomtrn
{
	{
		map textures/sfx/firegorre.tga
		tcmod scroll 0 1
		tcMod turb 0 .25 0 1.6
		tcmod scale 2 2
		blendfunc GL_ONE GL_ZERO
		rgbGen identity
	}
	{
		map textures/gothic_block/blocks18cgeomtrn2.tga
		blendfunc blend
		tcmod rotate 30
		tcMod stretch sin .8 0.2 0 .2
		rgbGen identity
	}
	{
		map textures/gothic_block/blocks18cgeomtrn2.tga
		blendfunc blend
		tcmod rotate 20
		tcMod stretch sin .8 0.2 0 .1
		rgbGen identity
	}
	{
		map textures/gothic_block/blocks15cgeomtrn.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/gothic_block/blocks17_ow
{
	{
		map textures/sfx/firegorre.tga
		tcmod scroll 0 1
		tcMod turb 0 .25 0 5.6
		tcmod scale 1.5 1.5
		blendfunc GL_ONE GL_ZERO
		rgbGen identity
	}       
	{
		map textures/gothic_block/blocks17_ow.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/gothic_block/blocks17bloody
{
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
		map textures/gothic_block/blocks17bloody.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/gothic_block/blocks17g_ow
{
	{
		map textures/sfx/firegorre.tga
		tcmod scroll 0 1
		tcMod turb 0 .25 0 5.6
		tcmod scale 1.5 1.5
		blendfunc GL_ONE GL_ZERO
		rgbGen identity
	}
	{
		map textures/gothic_block/blocks17g_ow.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/gothic_block/blocks18b_ow
{
	{
		map textures/sfx/firegorre.tga
		tcmod scroll 0 1
		tcMod turb 0 .25 0 5.6
		tcmod scale 1.5 1.5
		blendfunc GL_ONE GL_ZERO
		rgbGen identity
	}
    {
		map textures/gothic_block/blocks18b_ow.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/gothic_block/blocks18cgeomtrn2
{
	cull disable
	surfaceparm alphashadow
	{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		alphaFunc GE128
		tcmod rotate 40
		tcMod stretch sin .8 0.2 0 .3
		rgbGen identity
	}
	{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		alphaFunc GE128
		tcmod rotate 30
		tcMod stretch sin .8 0.2 0 .2
		rgbGen identity
	}
	{
		clampmap textures/gothic_block/blocks18cgeomtrn2.tga
		alphaFunc GE128
		tcmod rotate 20
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

textures/gothic_block/blocks18cgeomtrnx
{
	{
		map textures/sfx/fireswirl2blue.tga
		tcMod stretch sin .8 0.3 0 9.7
		tcmod rotate 333
		rgbGen identity
	}
	{
		map textures/gothic_block/blocks18cgeomtrn2.tga
		blendfunc blend
		tcmod rotate 30
		tcMod stretch sin .8 0.2 0 .2
		rgbGen identity
	}
	{
		map textures/gothic_block/blocks18cgeomtrn2.tga
		blendfunc blend
		tcmod rotate 20
		tcMod stretch sin .8 0.2 0 .1
		rgbGen identity
	}
	{
		map textures/gothic_block/blocks18cgeomtrnx.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/gothic_block/blocks18cgeomtrnx_plain
{
	{
		map textures/gothic_block/blocks18cgeomtrnx.tga
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc filter
	}
}

textures/gothic_block/blocks18d_trans
{
	qer_editorimage textures/gothic_block/blocks18d.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/gothic_block/blocks18d.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/gothic_block/blocks19_trans
{
	surfaceparm nonsolid
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_block/blocks19.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_block/demon_block15fx
{
        {
		map textures/sfx/firegorre.tga
                tcmod scroll 0 1
                tcMod turb 0 .25 0 1.6
                tcmod scale 4 4
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
	{
	        map textures/gothic_block/demon_block15fx.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/gothic_block/evil_e3bwindow
{
	qer_editorimage textures/gothic_block/windowevil2c_killblock.tga
	q3map_lightimage textures/gothic_block/evil2ckillblockglow.tga
	q3map_surfacelight 200
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_block/windowevil2c_killblock.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_block/evil2ckillblockglow.tga
		blendfunc add
	}
}

textures/gothic_block/evil_e3window
{
	qer_editorimage textures/gothic_block/windowevil2c_block18c.tga
	q3map_lightimage textures/gothic_block/evil2cglow.tga
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_block/windowevil2c_block18c.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_block/evil2cglow.tga
		blendfunc add
	}
}

textures/gothic_block/evil_e3window_dark
{
	qer_editorimage textures/gothic_block/windowevil2c_block18c.tga
	q3map_lightimage textures/gothic_block/evil2cglow.tga
	q3map_surfacelight 100
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_block/windowevil2c_block18c.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_block/evil2cglow.tga
		blendfunc add
	}
}

textures/gothic_block/flicker_blocks10
{
	qer_editorimage textures/gothic_block/blocks10.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_block/blocks10.tga
		blendfunc filter
		rgbGen wave noise 0.75 0.25 0 10
	}
}

textures/gothic_block/gkc15b_trans
{
	surfaceparm nonsolid
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_block/gkc15b.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_block/gkc17d
{
	{
		rgbGen identity
		map $lightmap
	}
	{
		map textures/gothic_block/gkc17d.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_block/gkcspinemove
{
	qer_editorimage textures/gothic_block/gkc17d.tga
	tessSize 128
	deformVertexes bulge 3 10 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_block/gkc17d.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_block/gkcspinemove_nomarks
{
	qer_editorimage textures/gothic_block/gkc17d.tga
	tessSize 128
	deformVertexes bulge 3 10 1
	surfaceparm nomarks
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_block/gkc17d.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_block/gkcspinemove_regret
{
	qer_editorimage textures/gothic_block/gkc17d.tga
	tessSize 128
	deformVertexes bulge 1 1 0.5
	surfaceparm nomarks
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_block/gkc17d.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_block/gkcspinemove_lessmove
{
	qer_editorimage textures/gothic_block/gkc17d.tga
	tessSize 128
	deformVertexes bulge 12 2.5 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_block/gkc17d.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
		tcmod scroll -.01 0
	}
}

textures/gothic_block/killblock_i4b
{
	q3map_surfacelight 300
	q3map_lightimage textures/gothic_block/killblock_i4glow.tga
	qer_editorimage textures/gothic_block/killblock_i4.tga
	{
		map textures/gothic_block/killblock_i4.tga
		rgbgen identity		
	}	
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}
	{
		map  textures/gothic_block/killblock_i4glow.tga
		blendfunc add
		rgbgen wave sin .9 .1 0 .1
	}	
}

textures/gothic_block/killblock_trans
{
	surfaceparm nonsolid
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_block/killblock.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_block/killblockgeomtrn
{
        {
		map textures/sfx/firegorre.tga
                tcmod scroll 0 1
                tcMod turb 0 .25 0 1.6
                tcmod scale 2 2
                blendfunc GL_ONE GL_ZERO
                rgbGen identity
	}
        {
	        map textures/gothic_block/blocks18cgeomtrn2.tga
                blendfunc blend
                tcmod rotate 30
                tcMod stretch sin .8 0.2 0 .2
	        rgbGen identity
	}
        {
	        map textures/gothic_block/blocks18cgeomtrn2.tga
		blendfunc blend
                tcmod rotate 20
                tcMod stretch sin .8 0.2 0 .1
	        rgbGen identity
	}
	{
	        map textures/gothic_block/killblockgeomtrn.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/gothic_block/killtrim_trans
{
	qer_editorimage textures/gothic_block/killtrim.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/gothic_block/killtrim.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/gothic_block/largerblock3blood
{
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
	        map textures/gothic_block/largerblock3blood.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/gothic_block/mkc_evil_e3window
{
	qer_editorimage textures/gothic_block/windowevil2c_block18c.tga
	q3map_lightimage textures/gothic_block/evil2cglow.tga
	q3map_surfacelight 400
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_block/windowevil2c_block18c.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_block/evil2cglow.tga
		blendfunc add
	}
}

textures/gothic_block/wetwall
{
        {
	        map textures/gothic_block/wetwall.tga
	        rgbGen identity
	}
        {
		map textures/gothic_block/wetwallfx.tga
                tcmod scroll 0 -.1
                tcmod scale 2 .6
                blendfunc add
                rgbGen identity
	}
	{
	        map textures/gothic_block/wetwall.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/gothic_block/windowevil2c_killblock_top
{
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_block/windowevil2c_killblock_top.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/gothic_block/evil2ckillblockglow_top.tga
		blendfunc add
	}
}

textures/gothic_block/windowevil2c_killblock_bot
{
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_block/windowevil2c_killblock_bot.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/gothic_block/evil2ckillblockglow_bot.tga
		blendfunc add
	}
}