// q3map_sun <red> <green> <blue> <intensity> <degrees> <elevation>
// color will be normalized, so it doesn't matter what range you use
// intensity falls off with angle but not distance 100 is a fairly bright sun
// degree of 0 = from the east, 90 = north, etc.  altitude of 0 = sunrise/set, 90 = noon

textures/skies/almostlost
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sunExt	1 1 0.5 90 60 80 3 16
	q3map_surfacelight 80
	q3map_lightimage textures/skies/toxicsky.tga
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/blacksky
{
	qer_editorimage textures/skies/blacksky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 25
	q3map_lightsubdivide 512
	q3map_sun	1 1 1 32	90 90
	{
		map	gfx/colors/black.tga
	}
}

textures/skies/bluesky-japan
{
	qer_trans 0.60
	qer_editorimage textures/common/white.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky

	q3map_sun	1 1 1 85 220 40
	q3map_surfacelight 120
	q3map_lightimage textures/skies/toxicsky.tga
	q3map_lightsubdivide 512

	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.015 0.015
		depthWrite
	}
	{
		map textures/skies/bluesky1.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.01 0.01
	}
}

textures/skies/campgrounds
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 400
	q3map_sunExt	.6 .6 .6 150 30 60 3 16
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/cannery_blue
{
	qer_trans 0.60
	qer_editorimage textures/skies/cannery_blueclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky

	q3map_sun	1 1 1 95 315 50
	q3map_surfacelight 120
	q3map_lightimage textures/skies/toxicsky.tga
	q3map_lightsubdivide 512

	skyparms - 512 -
	{
		map textures/skies/cannery_dimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.015 0.015
		depthWrite
	}
	{
		map textures/skies/cannery_blueclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.01 0.01
	}
}

textures/skies/dc_ctf2sky
{
	qer_editorimage textures/skies/env/sp07_up.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms textures/skies/env/sp07 - -
}

textures/skies/futurecrossings
{
	qer_editorimage textures/skies/env/qznebula3_up.tga

	surfaceparm noimpact
	surfaceparm nolightmap

	q3map_sunExt 0.85 1 0.85 40 95 85 3 16
	q3map_lightmapFilterRadius 0 16
	q3map_skyLight 127 3

	skyparms textures/skies/env/qznebula3 - -
}

textures/skies/dc_map07sky
{
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 384 -
	{
		map textures/skies/killsky_1.tga
		tcmod scroll 0.05 .1
		tcmod scale 2 2
		depthwrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcmod scroll 0.05 0.06
		tcmod scale 3 2
	}
}

textures/skies/dc_mptourney4sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/nightsky.tga
		tcmod scale 5 8
		tcmod scroll 0.7 0.1
		depthwrite
	}
	{
		map textures/skies/nightsky_nocloud.tga
		blendfunc filter
		tcmod scale 3 5
		tcmod scroll 0.3 0.1
	}
}

textures/skies/dc_q3ctf1sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcmod scale 3 2
		tcmod scroll 0.15 0.15
		depthwrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcmod scale 3 3
		tcmod scroll 0.05 0.05
	}
}

textures/skies/dc_q3ctf4sky
{
	qer_editorimage textures/skies/env/sp07_ft.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/common/white.tga
	q3map_surfacelight 40
	q3map_lightsubdivide 512
	q3map_sunExt	1 1 1 65 90 90 3 16
	skyparms textures/skies/env/sp07 - -
}

textures/skies/dc_q3dm1sky
{
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 384 -
	{
		map textures/skies/killsky_1.tga
		tcmod scroll 0.05 .1
		tcmod scale 2 2
		depthwrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcmod scroll 0.05 0.06
		tcmod scale 3 2
	}
}

textures/skies/dc_q3dm2sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcmod scale 3 2
		tcmod scroll 0.15 0.15
		depthwrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcmod scale 3 3
		tcmod scroll 0.05 0.05
	}
}

textures/skies/dc_q3dm3sky
{
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/killsky_1.tga
		tcmod scroll 0.05 .1
		tcmod scale 2 2
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcmod scroll 0.05 0.06
		tcmod scale 3 2
	}
}

textures/skies/dc_q3dm4sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcmod scroll 0.1 0.1
		tcmod scale 3 2
		depthwrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcmod scroll 0.05 0.05
		tcmod scale 3 3
	}
}

textures/skies/dc_q3dm5sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcmod scale 3 2
		tcmod scroll 0.15 0.15
		depthwrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcmod scale 3 3
		tcmod scroll 0.05 0.05
	}
}

textures/skies/dc_q3dm6sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcmod scale 3 2
		tcmod scroll 0.15 0.15
		depthwrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcmod scale 3 3
		tcmod scroll 0.05 0.05
	}
}

textures/skies/dc_q3dm7sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcmod scale 3 2
		tcmod scroll 0.15 0.15
		depthwrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcmod scale 3 3
		tcmod scroll 0.05 0.05
	}
}

textures/skies/dc_q3dm13sky
{
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/killsky_1.tga
		tcmod scroll 0.05 .1
		tcmod scale 2 2
		depthwrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcmod scroll 0.05 0.06
		tcmod scale 3 2
	}
}

textures/skies/dc_q3dm16sky
{
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	skyparms textures/skies/env/sp02 - -
}


textures/skies/dc_q3dm17sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms textures/skies/env/sp01 - -
}

textures/skies/dc_q3tourney1sky
{
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	skyparms textures/skies/env/xnight2 - -
}

textures/skies/dc_q3tourney2sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcmod scale 3 2
		tcmod scroll 0.15 0.15
		depthwrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcmod scale 3 3
		tcmod scroll 0.05 0.05
	}
}

textures/skies/dc_q3tourney3sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcmod scale 3 2
		tcmod scroll 0.15 0.15
		depthwrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcmod scale 3 3
		tcmod scroll 0.05 0.05
	}
}

textures/skies/dc_q3tourney5sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcmod scale 3 2
		tcmod scroll 0.15 0.15
		depthwrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcmod scale 3 3
		tcmod scroll 0.05 0.05
	}
}

textures/skies/dc_tim_tourney1sky
{
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 384 -
	{
		map textures/skies/killsky_1.tga
		tcmod scroll 0.05 .1
		tcmod scale 2 2
		depthwrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcmod scroll 0.05 0.06
		tcmod scale 3 2
	}
}

textures/skies/dc_xmpteam4sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/nightsky.tga
		tcmod scale 5 8
		tcmod scroll 0.7 0.1
		depthwrite
	}
	{
		map textures/skies/nightsky_nocloud.tga
		blendfunc filter
		tcmod scale 3 5
		tcmod scroll 0.3 0.1
	}
}

textures/skies/dc_xmptourney1sky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/nightsky.tga
		tcmod scale 5 8
		tcmod scroll 0.7 0.1
		depthwrite
	}
	{
		map textures/skies/nightsky_nocloud.tga
		blendfunc filter
		tcmod scale 3 5
		tcmod scroll 0.3 0.1
	}
}

textures/skies/devilish
{
	qer_editorimage textures/skies/env/devilish_rt.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 200
	q3map_lightImage textures/skies/meth_clouds_blue.tga
	skyparms textures/skies/env/devilish 512 -
	{
		map textures/skies/meth_clouds3.tga
		blendfunc filter
		tcMod scale 3 2
		tcMod scroll 0.02 0.04
	}
	{
		map textures/skies/devilish_dimclouds.tga
		blendfunc add
		tcMod scale 5 5
		tcMod scroll 0.02 0.02
	}
}

textures/skies/foolishlegacy
{
	qer_editorimage textures/skies/env/devilish_rt.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 300
	q3map_lightImage textures/skies/meth_clouds_blue.tga
	skyparms textures/skies/env/devilish 512 -
	{
		map textures/skies/meth_clouds3.tga
		blendfunc filter
		tcMod scale 3 2
		tcMod scroll 0.02 0.04
	}
	{
		map textures/skies/devilish_dimclouds.tga
		blendfunc add
		tcMod scale 5 5
		tcMod scroll 0.02 0.02
	}
}

textures/skies/firesky1
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 275
	q3map_lightimage textures/skies/inteldimclouds.tga
	q3map_sun	1 1 0.8 55 30 90
	qer_editorimage textures/skies/inteldimclouds.tga
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/eyetoeye_skydark
{
	qer_editorimage textures/skies/sky_dark.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256
	q3map_surfacelight 100
	surfaceparm sky
	q3map_sun .8 .8 1 70 320 70
	skyparms - 256 -
	{
		map textures/skies/sky_dark_2.tga
		tcMod scale 10 10
		tcMod scroll .05 .09
		depthWrite
	}
	{
		map textures/skies/sky_dark.tga
		blendfunc add
		tcMod scale 4 4
		tcMod scroll 0.01 0.01
	}
} 

textures/skies/firesky2
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 180
	q3map_sun	1 1 0.8 55 30 90
	qer_editorimage textures/skies/inteldimclouds.tga
	skyparms - 512 -

	{
		map textures/skies/inteldimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}


textures/skies/firesky3
{
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	qer_editorimage textures/skies/dimclouds.tga
	q3map_surfacelight 90
	q3map_lightimage textures/skies/dimclouds.tga
	q3map_sun	1 1 0.8 55 30 90
	skyparms - 512 -
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.05 0
		tcMod scale 2 2
		depthWrite
	}
}

textures/skies/gothicrage
{
	qer_editorimage textures/skies/killsky_1.tga
	q3map_lightimage textures/skies/stars_red.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun .5 .35 .45 90 315 40
	q3map_surfacelight 80
	skyparms - 512 -
	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/hektik
{
	qer_editorimage textures/skies/meth_clouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	surfaceparm nodlight
	q3map_sun 1 .78 .48 90 60 80
	q3map_surfacelight 80
	q3map_lightmapSampleSize 32
	q3map_lightImage textures/skies/meth_clouds.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds2.tga
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.09 0.09
	}
}

textures/skies/hellredclouds
{
	qer_editorimage textures/skies/dimclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_globaltexture
	q3map_lightsubdivide 512 
	q3map_sun 5 2 2 60 135 90
	q3map_surfacelight 80
	skyparms - 512 -

	{
		map textures/skies/redclouds.tga
		tcMod scroll 0.02 0
		tcMod scale 2 2
	}
	{
		map textures/skies/lightningsky8_kc.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .2 .2
	}	
	{
		map textures/skies/redcloudsa.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.02 0.01
	}
}

textures/skies/hellsky
{
	qer_editorimage textures/skies/hellsky.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun 4 3 3 65 290 75
	q3map_surfacelight 50
	skyparms - 512 -
	{
		map textures/skies/hellsky.tga
		tcMod scroll 0.05 0
		tcMod scale 2 2
		depthWrite
	}
}

textures/skies/hellsky2
{
	qer_editorimage textures/skies/hellsky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun .9 .9 1 70 65 78
	q3map_surfacelight 60
	skyparms - 512 -
	{
		map textures/skies/hellsky.tga
		tcMod scroll 0.02 0
		tcMod scale 1 1
		depthWrite
	}
	{
		map textures/skies/hellsky.tga
		blendfunc add
		tcMod scroll 0.02 0.01
		tcMod scale 3 3
	}
}

textures/skies/hellsky2bright
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	1 1 1 100 220 50
	q3map_surfacelight 120
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/hellskybright
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun 4 3 3 80 45 75
	q3map_surfacelight 60
	skyparms - 512 -
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.05 0
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/redclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 1 1
	}
}

textures/skies/kc_dm10sky
{
	qer_editorimage textures/skies/bluetopclouds.tga
	q3map_lightimage textures/skies/pjbasesky.tga
	q3map_lightsubdivide 512 
	q3map_globaltexture
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.5 .6 .8 90 225 55
	q3map_surfacelight 150
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/kcbasesky_arena1_sky
{
	qer_editorimage textures/skies/pjbasesky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_globaltexture
	q3map_lightsubdivide 256 
	q3map_sun	0.266383 0.274632 0.358662 150 60 85
	q3map_surfacelight 500
	skyparms - 512 -
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.01 0.01
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/pjbasesky.tga
		blendfunc add
		tcMod scroll -0.01 -0.01
		tcMod scale 5 5
	}
}

textures/skies/killsky
{
	qer_editorimage textures/skies/killsky_1.tga
	q3map_lightimage textures/common/white.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun 3 2 2 70 315 65
	q3map_surfacelight 75
	skyparms - 512 -
	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/mapzsky
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms textures/skies/env/sp01 - -
}

// This is cold (blue) version of the sky
textures/skies/meth_clouds
{
	qer_editorimage textures/skies/meth_clouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun .77 .91 1 90 135 80
	q3map_surfacelight 120
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds.tga
		tcMod scale 3 2
		tcMod scroll 0.04 0.04
		depthWrite
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.09 0.09
	}
}

textures/skies/meth_clouds_blue
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	qer_editorimage textures/skies/meth_clouds_blue.tga
	q3map_lightimage textures/skies/meth_clouds_blue.tga
	q3map_surfacelight 200
	skyparms - 512 -
	{
		map textures/skies/meth_clouds_blue.tga
		tcMod scale 2 2
		tcMod scroll 0.01 0.01
		depthWrite
	}
	{
		map textures/skies/meth_clouds_blue2.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.02 0.02
	}
}

// This is a warm (yellow) version of the sky
textures/skies/meth_clouds2
{
	qer_editorimage textures/skies/meth_clouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	surfaceparm nodlight
	q3map_sun 1 .78 .48 90 270 65
	q3map_surfacelight 80
	q3map_lightmapSampleSize 32
	q3map_lightImage textures/skies/meth_clouds.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds.tga
		tcMod scale 3 2
		tcMod scroll 0.04 0.04
		depthWrite
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.09 0.09
	}
}

textures/skies/meth_clouds3
{
	qer_editorimage textures/skies/meth_clouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms - 512 -
	{
		map textures/skies/meth_clouds.tga
		tcMod scale 3 2
		tcMod scroll 0.04 0.04
		depthWrite
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.09 0.09
	}
}

textures/skies/meth_clouds4
{
	qer_editorimage textures/skies/meth_clouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	surfaceparm nodlight
	q3map_sun .77 .91 1 120 210 65
	q3map_surfacelight 120
	q3map_lightmapSampleSize 32
	q3map_lightImage textures/skies/meth_clouds.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds.tga
		tcMod scale 3 2
		tcMod scroll 0.04 0.04
		depthWrite
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.09 0.09
	}
}

textures/skies/mkc_ctf1
{
	qer_editorimage textures/skies/toxicbluesky.tga
	surfaceParm noimpact
	surfaceParm nolightmap
	surfaceParm sky
	q3map_sun	0.9 0.8 1.0 90 45 60
	q3map_surfacelight 140
	skyParms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/mkc_ctf5sky
{
	qer_editorimage textures/skies/dimclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	0.9 0.8 1.0 70 45 60
	q3map_surfacelight 50
	skyparms - 512 -
	{
		map textures/skies/nightsky.tga
		tcMod scale 5 8
		tcMod scroll 0.7 0.1
		depthWrite
	}
	{
		map textures/skies/nightsky_nocloud.tga
		blendfunc filter
		tcMod scale 3 5
		tcMod scroll 0.3 0.1
	}
}

textures/skies/mkc_dm4sky
{
	qer_editorimage textures/skies/dimclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	0.9 0.8 1 25 135 60
	q3map_surfacelight 80
	skyparms - 512 -
	{
		map textures/skies/nightsky.tga
		tcMod scale 5 8
		tcMod scroll 0.7 0.1
		depthWrite
	}
	{
		map textures/skies/redclouds.tga
		blendfunc filter
		tcMod scale 3 5
		tcMod scroll 0.3 0.1
	}
}

textures/skies/mkc_sky
{
	qer_editorimage textures/skies/pjbasesky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun 0.266383 0.274632 0.358662 150 60 80
	q3map_surfacelight 700
	skyparms half 256 -
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.01 0.01
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/pjbasesky.tga
		blendfunc add
		tcMod scroll -0.01 -0.01
		tcMod scale 5 5
	}
}

textures/skies/nightsky_nocloud
{
	surfaceparm sky
	surfaceparm noimpact
	q3map_surfacelight 350
	surfaceparm nolightmap
	sky	textures/skies/env/xnight2
}

textures/skies/nightsky_nocloud_100
{
	qer_editorimage textures/skies/nightsky_nocloud.tga
	surfaceparm sky
	surfaceparm noimpact
	q3map_sun 1 1 1 100 -41 58
	q3map_surfacelight 300
	surfaceparm nolightmap
	sky	textures/skies/env/xnight2
}

textures/skies/nightsky_nocloud_200
{
	qer_editorimage textures/skies/nightsky_nocloud.tga
	surfaceparm sky
	surfaceparm noimpact
	q3map_surfacelight 200
	surfaceparm nolightmap
	sky	textures/skies/env/xnight2
}

textures/skies/nightsky_nocloud_400
{
	qer_editorimage textures/skies/nightsky_nocloud.tga
	surfaceparm sky
	surfaceparm noimpact
	q3map_surfacelight 400
	surfaceparm nolightmap
	sky	textures/skies/env/xnight2
}

textures/skies/nightsky_nocloud_500
{
	qer_editorimage textures/skies/nightsky_nocloud.tga
	surfaceparm sky
	surfaceparm noimpact
	q3map_surfacelight 500
	surfaceparm nolightmap
	sky	textures/skies/env/xnight2
}

textures/skies/nightsky_nocloud_600
{
	qer_editorimage textures/skies/nightsky_nocloud.tga
	surfaceparm sky
	surfaceparm noimpact
	q3map_surfacelight 600
	surfaceparm nolightmap
	sky	textures/skies/env/xnight2
}


textures/skies/nightsky_nocloud_1000
{
	qer_editorimage textures/skies/nightsky_nocloud.tga
	surfaceparm sky
	surfaceparm noimpact
	q3map_surfacelight 1000
	surfaceparm nolightmap
	sky	textures/skies/env/xnight2
}

textures/skies/nightsky_xian_dm1
{
	qer_editorimage textures/skies/xnight2_up.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 300
	q3map_sun 1 1 1 100 -41 58
	skyparms textures/skies/env/xnight2 - -
}

textures/skies/nightsky_xian_dm2
{
	qer_editorimage textures/skies/nightsky_nocloud.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 200
	q3map_sun 1 1 1 100 -41 58
	sky	textures/skies/env/xnight2
}

textures/skies/nightsky_xian_dm3
{
	qer_editorimage textures/skies/nightsky_nocloud.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 500
	q3map_sun 1 1 1 100 -41 58
	sky	textures/skies/env/xnight2
}

textures/skies/nightsky_xian_dm4
{
	qer_editorimage textures/skies/xnight2_up.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun 1 1 1 80 -41 58
	q3map_surfacelight 50
	skyparms textures/skies/env/xnight2 - -
}

textures/skies/nightsky_xian_dm15
{
	qer_editorimage textures/skies/xnight2_up.tga
	surfaceparm nolightmap
	surfaceparm noimpact
	surfaceparm sky
	q3map_surfacelight 900
	q3map_sun 1 1 1 100 -58 58
	skyparms textures/skies/env/xnight2 - -
}

textures/skies/overkill
{
	qer_editorimage textures/skies/pjbasesky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256 
	q3map_sun	0.266383 0.274632 0.358662 150 60 85
	q3map_surfacelight 200
	skyparms - 512 -
	{
		map textures/skies/dimclouds.jpg
		tcMod scroll 0.01 0.01
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/pjbasesky.tga
		blendfunc add
		tcMod scroll -0.01 -0.01
		tcMod scale 5 5
	}
}

textures/skies/phrantic
{
	qer_editorimage textures/skies/meth_clouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun .77 .91 1 250 10 85
	q3map_surfacelight 220
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds.tga
		tcMod scale 3 2
		tcMod scroll 0.04 0.04
		depthWrite
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.09 0.09
	}
}

textures/skies/pj_arena2sky
{
	qer_editorimage textures/skies/pjbasesky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_globaltexture
	q3map_lightsubdivide 512 
	q3map_sun	0.266383 0.274632 0.358662 100 350 55
	q3map_surfacelight 100
	skyparms full 200 -
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.015 0.016
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/pjbasesky.tga
		blendfunc add
		tcMod scroll -0.01 -0.012
		tcMod scale 5 5
	}
}

textures/skies/pj_arena4_sky
{
	qer_editorimage textures/skies/pjbasesky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_globaltexture
	q3map_lightsubdivide 512 
	q3map_sun	0.266383 0.274632 0.358662 200 165 45
	q3map_surfacelight 100
	skyparms full 128 -
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.015 0.016
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/pjbasesky.tga
		blendfunc add
		tcMod scroll -0.01 -0.012
		tcMod scale 5 5
	}
}

textures/skies/pj_bluesky
{
	qer_editorimage textures/skies/pjbasesky
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 512 
	q3map_sunExt 0.266383 0.274632 0.358662 100 350 75 3 16
	q3map_lightmapFilterRadius 0 16
	q3map_skyLight 127 3
	skyparms - 512 -
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.015 0.016
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/pjbasesky.tga
		blendfunc GL_ONE GL_ONE
		tcMod scroll -0.01 -0.012
		tcMod scale 5 5
	}
}

textures/skies/pj_ctf1sky
{
	qer_editorimage textures/skies/pjbasesky
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_globaltexture
	q3map_lightsubdivide 512 
	q3map_sun	0.266383 0.274632 0.358662 100 350 75
	q3map_surfacelight 150
	skyparms full 200 -
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.015 0.016
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/pjbasesky.tga
		blendfunc add
		tcMod scroll -0.01 -0.012
		tcMod scale 5 5
	}
}

textures/skies/pj_ctf2_sky
{
	qer_editorimage textures/skies/bluetopclouds.tga
	q3map_lightimage textures/skies/topclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_globaltexture
	q3map_lightsubdivide 512 
	q3map_sun	0.266383 0.274632 0.358662 250 90 45
	q3map_surfacelight 100
	skyparms full 128 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scroll 0.015 0.016
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scroll -0.01 -0.012
		tcMod scale 5 5
	}
}

textures/skies/pj_dm9sky
{
	qer_editorimage textures/skies/bluetopclouds.tga
	q3map_lightimage textures/skies/topclouds.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_globaltexture
	q3map_lightsubdivide 512 
	q3map_sun	.5 .6 .8 140 165 60
	q3map_surfacelight 80
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/pj_dm10sky
{
	q3map_lightimage textures/common/white.tga
	q3map_lightsubdivide 512 
	q3map_globaltexture
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.5 .6 .8 90 225 55
	q3map_surfacelight 150
	qer_editorimage textures/skies/bluetopclouds.tga
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/pjbasesky_arena1_sky
{
	qer_editorimage textures/skies/pjbasesky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_globaltexture
	q3map_lightsubdivide 256 
	q3map_sun	0.266383 0.274632 0.358662 150 60 85
	q3map_surfacelight 100
	skyparms - 512 -
	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.01 0.01
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/pjbasesky.tga
		blendfunc add
		tcMod scroll -0.01 -0.01
		tcMod scale 5 5
	}
}

textures/skies/proto_sky
{
	qer_editorimage textures/skies/proto_sky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms 512 full -
	q3map_surfacelight 30
	q3map_sun .473 .243 .314 30 35 78
	skyparms - 512 -
	{
		map textures/skies/proto_sky.tga
		tcMod scroll .02 .04
		tcMod scale 3 4
		depthWrite
	}
	{
		map textures/skies/proto_sky2.tga
		blendfunc add
		tcMod scroll 0.005 0.005
		tcMod scale 3 3
	}
}

textures/skies/purgatory_clouds1
{
	qer_editorimage textures/skies/meth_clouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	surfaceparm nodlight
	q3map_sun 1 .91 .77 150 210 65
	q3map_surfacelight 120
	q3map_lightmapSampleSize 32
	q3map_lightImage textures/skies/meth_clouds.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds.tga
		tcMod scale 3 2
		tcMod scroll 0.04 0.04
		depthWrite
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.09 0.09
	}
}

textures/skies/q3dm0
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.5 .6 .8 60 80 75
	q3map_surfacelight 80
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/qznebula3
{
    qer_editorimage textures/skies/qznebula3.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 25
	q3map_lightsubdivide 512
	q3map_sun	1 1 1 40 90 90
	skyparms textures/skies/env/qznebula3 - -
}

textures/skies/qznebula3_dm17
{
    qer_editorimage textures/skies/qznebula3.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/common/white.tga
	q3map_surfacelight 40
	q3map_lightsubdivide 512
	q3map_sun	1 1 1 85 90 90
	skyparms textures/skies/env/qznebula3 - -
}

textures/skies/qznebula3_team6
{
    qer_editorimage textures/skies/qznebula3.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/stars.tga
	q3map_sun	.90 .90 .95 80 130 75
	q3map_surfacelight 60
	skyparms textures/skies/env/qznebula3 - -
}

textures/skies/qzterra1
{
	qer_editorimage textures/skies/lightn_clouds2.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sunExt 0.9 0.8 1.0 50 80 60 2 16
	q3map_surfacelight 100
	q3map_lightImage textures/skies/fill_light.jpg
	skyparms textures/skies/env/terra1 - -
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 3 2
		tcMod scroll 0.02 0.04
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .04 .04
	}
	{
		animMap 0.5 textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds2.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga
		blendfunc add
		rgbGen	wave sin 0.2 0.4 0 1.1
		tcMod scale 10 10
		tcMod scroll .001 .001
	}
}

textures/skies/qztourney12
{
	qer_editorimage textures/skies/lightn_clouds2.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun .77 .91 1 90 135 80
	q3map_surfacelight 120
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds2.tga
		tcMod scale 10 10
		tcMod scroll .09 .09
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 4 4
		tcMod scroll 0.07 0.07
	}
}

textures/skies/qztourney13
{
	qer_editorimage textures/skies/lightn_clouds2.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	0.9 0.8 1.0 80 80 60
	q3map_surfacelight 185
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds2.tga
		tcMod scale 10 10
		tcMod scroll .09 .09
		depthWrite
	}

	{
		animMap 2.1 textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds2.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga
		blendfunc add
		rgbGen	wave sin 0.2 0.4 0 1.1
		tcMod scale 10 10
		tcMod scroll .09 .09
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 4 4
		tcMod scroll 0.07 0.07
	}
}

textures/skies/qztourney13bright
{
	qer_editorimage textures/skies/meth_clouds2.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	0.9 0.8 1.0 80 80 60
	q3map_surfacelight 185
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds2.tga
		tcMod scale 3 2
		tcMod scroll 0.02 0.04
		depthWrite
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		animMap 2.1 textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds2.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga textures/skies/lightn_clouds1.tga
		blendfunc add
		rgbGen	wave sin 0.2 0.4 0 1.1
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 4 4
		tcMod scroll 0.09 0.09
	}
}

textures/skies/reflux
{
	skyparms - 512 -

	q3map_lightImage textures/skies/reflux_lightimage.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256
	q3map_lightmapFilterRadius 0 8
	q3map_skylight 100 3
	surfaceparm sky
	q3map_sunExt .5 .55 .6 80 0 80 3 16
	skyparms - 512 -
	qer_editorimage textures/skies/shakennotlarge_sky2.tga

	{
		map textures/skies/shakennotlarge_sky3.tga
		tcMod scale 10 10
		tcMod scroll .05 .09
		depthWrite
	}


	{
		map textures/skies/shakennotlarge_sky.tga
		blendfunc add
		tcMod scale 4 4
		tcMod scroll 0.01 0.01
	}
} 

textures/skies/elder
{
	qer_editorimage textures/skies/redcloudsa.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_globaltexture
	q3map_lightsubdivide 512 
	q3map_sunExt 5 2 2 60 96 90 3 16
	q3map_surfacelight 64
	skyparms - 512 -

	{
		map textures/skies/redcloudsa.tga
		tcMod scroll 0.02 0
		tcMod scale 2 2
	}
	{
		map textures/skies/redcloudsa.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.02 0.01
	}
}

textures/skies/repent
{
	qer_editorimage textures/skies/meth_clouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256
	q3map_lightmapFilterRadius 0 8
	q3map_skylight 150 3
	surfaceparm sky
	q3map_sunExt .77 .91 1 90 135 80 3 16
	skyparms - 512 -
	q3map_lightimage textures/common/white.tga
	{
		map textures/skies/meth_clouds.tga
		tcMod scale 3 2
		tcMod scroll 0.04 0.04
		depthWrite
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.09 0.09
	}
}

textures/skies/senn_sky
{
	qer_editorimage textures/skies/sennsky1.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256 
	q3map_sun	0.266383 0.274632 0.358662 96 60 85
	q3map_surfacelight 256
	skyparms - 512 -
	{
		map textures/skies/sennsky2.jpg
		tcMod scroll 0 0.02
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/skies/sennsky1.tga
		blendfunc blend
		tcMod scroll 0 0.03
		tcMod scale 3 3
	}
}

textures/skies/shakennotlarge_sky
{
	skyparms - 512 -

	q3map_lightImage textures/skies/shakennotlarge_skylight.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256
	q3map_lightmapFilterRadius 0 8
	q3map_sunlight 100
	surfaceparm sky
	q3map_sun .8 .8 1 300 320 70
	skyparms - 512 -
	qer_editorimage textures/skies/shakennotlarge_sky2.tga

	{
		map textures/skies/shakennotlarge_sky3.tga
		tcMod scale 10 10
		tcMod scroll .05 .09
		depthWrite
	}


	{
		map textures/skies/shakennotlarge_sky.tga
		blendfunc add
		tcMod scale 4 4
		tcMod scroll 0.01 0.01
	}
} 

textures/skies/silentfright
{
	qer_editorimage textures/skies/env/devilish_rt.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 175
	q3map_lightImage textures/skies/meth_clouds_blue.tga
	skyparms textures/skies/env/devilish 512 -
	{
		map textures/skies/meth_clouds3.tga
		blendfunc filter
		tcMod scale 3 2
		tcMod scroll 0.025 0.045
	}
	{
		map textures/skies/devilish_dimclouds.tga
		blendfunc add
		tcMod scale 5 5
		tcMod scroll 0.025 0.025
	}
}

textures/skies/space_holder
{
	qer_editorimage textures/skies/space_holder.tga
	surfaceparm noimpact
	surfaceparm nolightmap
}

textures/skies/skybox
{
	qer_editorimage textures/skies/space1_bk.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/common/white.tga
	q3map_sun	1 1 1 100 -58 58
	q3map_surfacelight 400
	skyparms textures/skies/env/space1 - -
    {
		map textures/skies/killsky_2.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/skythunder
{
	q3map_lightimage textures/skies/stars_red.tga
	qer_editorimage textures/skies/killsky_1.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_sunExt .5 .37 .19 40 110 85 3 16
	q3map_surfacelight 50
	skyparms - 1024 -
	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/sfx/proto_zzztpink.tga
		blendFunc GL_DST_COLOR GL_ZERO
		tcMod scroll 0.04 0.05
		tcMod scale 3 2
		rgbGen wave noise 0.75 0.25 0 10
	}
}

textures/skies/stars_arena7
{
	qer_editorimage textures/skies/black_up.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 10
	q3map_sun .6 .6 .6 30 35 78
	skyparms textures/skies/env/black - -
}

textures/skies/stonekeep
{
	qer_editorimage textures/skies/meth_clouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sunExt .77 .91 1 80 360 90 2 16
	q3map_surfacelight 100
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/meth_clouds.tga
		tcMod scale 3 2
		tcMod scroll 0.04 0.04
		depthWrite
	}
	{
		map textures/skies/meth_clouds2.tga
		blendfunc add
		tcMod scale 10 10
		tcMod scroll .1 .1
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.09 0.09
	}
}

textures/skies/stormclouds_002
{
	qer_editorimage textures/skies/stormclouds_002.tga
	skyparms - 512 -
	q3map_lightImage textures/skies/stormclouds_002.tga
	q3map_sunExt	0.266383 0.274632 0.358662 300 80 60 3 16
	q3map_lightmapFilterRadius 0 8		//self other
	q3map_skyLight 256 3
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	nopicmip
	nomipmaps
	{
		map textures/skies/stormclouds_002.tga
		tcMod scale 10 10
		tcMod scroll .05 .09
		depthWrite
	}
	{
		map textures/skies/stormclouds_002.tga
		blendfunc add
		tcMod scale 4 4
		tcMod scroll 0.07 0.07
	}
}

textures/skies/stormclouds_003
{
	qer_editorimage textures/skies/stormclouds_003.tga
	skyparms - 512 -
	q3map_lightImage textures/skies/stormclouds_003.tga
	q3map_sunExt	0.266383 0.274632 0.358662 150 60 85 3 16
	q3map_lightmapFilterRadius 0 8		//self other
	q3map_skyLight 100 3
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	nopicmip
	nomipmaps
	{
		map textures/skies/stormclouds_003.tga
		tcMod scale 10 10
		tcMod scroll .05 .09
		depthWrite
	}
	{
		map textures/skies/stormclouds_003.tga
		blendfunc add
		tcMod scale 4 4
		tcMod scroll 0.07 0.07
	}
}

textures/skies/strato
{
	qer_editorimage textures/skies/env/strato_up.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_lightsubdivide 256
	q3map_sunExt .4 .37 .2 70 320 25 2 16
	q3map_surfacelight 55 
	skyparms textures/skies/env/strato - - 
}

textures/skies/tim_dm3_red
{
	qer_editorimage textures/skies/killsky_1.tga
	q3map_lightimage textures/skies/stars_red.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun .5 .37 .19 70 30 70
	q3map_surfacelight 80
	skyparms - 512 -
	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/tim_dm14
{
	qer_editorimage textures/skies/killsky_1.tga
	q3map_lightimage textures/common/white.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun 3 2 2 90 314 60
	q3map_surfacelight  80 
	skyparms - 512 -
	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/tim_dm14red
{
	qer_editorimage textures/skies/killsky_1.tga
	q3map_lightimage textures/skies/stars_red.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun .5 .37 .19 70 314 60
	q3map_surfacelight 80
	skyparms - 512 -
	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/tim_hell
{
	qer_editorimage textures/skies/killsky_1.tga
	q3map_lightimage textures/skies/stars_red.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun 1 .77 .77 80 315 70
	q3map_surfacelight 130
	skyparms - 384 -
	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/tim_km2
{
	qer_editorimage textures/skies/killsky_1.tga
	q3map_lightimage textures/skies/stars_red.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun .5 .37 .19 90 315 40
	q3map_surfacelight 80
	skyparms - 512 -
	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/tim_tourney1
{
	qer_editorimage textures/skies/stars_red.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.6 .37 .19 90 315 50	
	q3map_surfacelight 80
	skyparms - 512 -
	{
		map textures/skies/killsky_1.tga
		tcMod scroll 0.05 .1
		tcMod scale 2 2
		depthWrite
	}
	{
		map textures/skies/killsky_2.tga
		blendfunc add
		tcMod scroll 0.05 0.06
		tcMod scale 3 2
	}
}

textures/skies/tim_tourney2
{
	qer_editorimage textures/skies/toxicbluesky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.5 .6 .8 100 190 75
	q3map_surfacelight 80
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/toxicity
{
	qer_editorimage textures/skies/env/toxicity_ft.tga
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256
	q3map_lightimage textures/toxicity/meth_clouds3.tga
	q3map_surfacelight 140
	q3map_sun 1 1 .8 77 127 62
	skyparms textures/skies/env/toxicity - -
}

textures/skies/toxicsky
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_lightimage textures/common/white.tga
	q3map_surfacelight 80
	q3map_sun	1 1 0.5 100	30 60
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}

textures/skies/toxicskydim
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 100
	q3map_sun	1 1 0.5 80 30 70
	q3map_lightimage textures/skies/toxicsky.tga
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}

textures/skies/toxicskytim_blue
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.5 .6 .8 100 70 60
	q3map_surfacelight 120
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/toxicskytim_ctf1
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	1 1 0.5 90 70 40
	q3map_surfacelight 120
	q3map_lightimage textures/skies/toxicsky.tga
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/toxicskytim_dm2
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.5 .6 .8 100 190 75
	q3map_surfacelight 120
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/toxicskytim_dm3
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	q3map_lightimage textures/skies/toxicsky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 80
	q3map_sun	1 1 0.5 100	30 60
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}

textures/skies/toxicskytim_dm4
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	1 1 0.5 90 120 75
	q3map_surfacelight 80
	q3map_lightimage textures/skies/toxicsky.tga
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/toxicskytim_dm5
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun 1 .78 .48 90 225 55
	q3map_surfacelight 120
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/toxicskytim_dm7
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.5 .6 .8 100 260 50
	q3map_surfacelight 120
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/toxicskytim_dm8
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	1 1 0.5 85 220 40
	q3map_surfacelight 120
	q3map_lightimage textures/skies/toxicsky.tga
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/toxicskytim_dm9
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.980 .835 .3 100 25 65
	q3map_surfacelight 80
	q3map_lightimage textures/skies/toxicsky.tga
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/wicked
{
	qer_editorimage textures/skies/env/devilish_rt.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 80
	q3map_lightImage textures/skies/meth_clouds_blue.tga
	skyparms textures/skies/env/devilish 512 -
	{
		map textures/skies/meth_clouds3.tga
		blendfunc filter
		tcMod scale 3 2
		tcMod scroll 0.02 0.04
	}
	{
		map textures/skies/devilish_dimclouds.tga
		blendfunc add
		tcMod scale 5 5
		tcMod scroll 0.02 0.02
	}
}

textures/skies/xblacksky
{
	qer_editorimage textures/skies/blacksky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 300
	q3map_lightsubdivide 512
	q3map_sun	1 1 1 32	45 90
	{
		map	gfx/colors/black.tga
	}
}

textures/skies/xblacksky_dm7
{
	qer_editorimage textures/skies/blacksky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	{
		map	gfx/colors/black.tga
	}
}

textures/skies/xblacksky_light2
{
	qer_editorimage textures/skies/blacksky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 2
	q3map_sun	0.2 0.2 0.3 80 -55 75
}

textures/skies/xmas
{
	qer_editorimage textures/skies/jcook_stars.jpg
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	surfaceparm nodlight
	q3map_surfacelight 120
	q3map_lightmapSampleSize 32
	q3map_lightImage textures/skies/fill_light.jpg
	skyparms - 512 -
	{
		map textures/skies/jcook_stars.jpg
		tcMod scale 10 10
		depthWrite
	}
	{
		map textures/skies/jcook_nlights.jpg
		blendfunc add
		tcMod scale 2 1
		tcMod scroll .01 .01
	}
	{
		map textures/skies/dimclouds.tga
		blendfunc add
		tcMod scale 2 2
		tcMod scroll .01 .01
	}
}

textures/skies/xmkc_ctf5sky
{
	qer_editorimage textures/skies/dimclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	0.9 0.8 1.0 80 80 60
	q3map_surfacelight 185
	skyparms - 512 -
	{
		map textures/skies/nightsky.tga
		tcMod scale 5 8
		tcMod scroll 0.7 0.1
		depthWrite
	}
	{
		map textures/skies/nightsky_nocloud.tga
		blendfunc filter
		tcMod scale 3 5
		tcMod scroll 0.3 0.1
	}
}

textures/skies/xproto_sky2
{
	qer_editorimage textures/skies/proto_sky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms 512 full -
	q3map_surfacelight 200
	q3map_sun .473 .243 .314 30 35 87
	skyparms - 512 -
	{
		map textures/skies/proto_sky.tga
		tcMod scroll .02 .04
		tcMod scale 3 4
		depthWrite
	}
	{
		map textures/skies/proto_sky2.tga
		blendfunc add
		tcMod scroll 0.005 0.005
		tcMod scale 3 3
	}
}

textures/skies/xproto_sky_tourney2
{
	qer_editorimage textures/skies/proto_sky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms 512 full -
	q3map_surfacelight 200
	q3map_sun .5 .5 .5 100 180 83
	skyparms - 512 -
	{
		map textures/skies/proto_sky.tga
		tcMod scroll .02 .04
		tcMod scale 3 4
		depthWrite
	}
	{
		map textures/skies/proto_sky2.tga
		blendfunc add
		tcMod scroll 0.005 0.005
		tcMod scale 3 3
	}
}

textures/skies/xtoxicsky_90_60
{
	qer_editorimage textures/skies/toxicsky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 80
	q3map_sun	1 1 0.5 200	160 70
	cloudparms 512 full
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}

textures/skies/xtoxicsky_ctf
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_lightimage textures/skies/toxicsky.tga
	q3map_surfacelight 500
	q3map_sun	1 1 0.5 150	30 60
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}

textures/skies/xtoxicsky_dm3
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_lightimage textures/skies/toxicsky.tga
	q3map_surfacelight 400
	q3map_sun	1 1 0.5 150	30 60
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}

textures/skies/xtoxicsky_dm4
{
	qer_editorimage textures/skies/toxicsky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 80
	q3map_sun	1 1 0.95 50 40 90
	cloudparms 512 full
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}

textures/skies/xtoxicsky_dm9
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_lightimage textures/skies/toxicsky.tga
	q3map_surfacelight 400
	q3map_sun	1 1 0.5 150	30 60
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}

textures/skies/xtoxicsky_dm14
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 800
	q3map_sun	1 1 0.85 100	90 90
	q3map_lightimage textures/skies/toxicsky.tga
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}

textures/skies/xtoxicsky_q3ctf3
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_lightimage textures/common/white.tga
	q3map_surfacelight 500
	q3map_sun	1 1 0.5 150	30 60
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/xtoxicskytim_q3dm5
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 400
	q3map_sun	.5 .6 .8 150 30 60
	q3map_lightimage textures/common/white.tga
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/toxicsky_qzdm10
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_lightimage textures/common/white.tga
	q3map_sun	1 1 1 100 -58 58
	q3map_surfacelight 200
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/skies/xtoxicsky_tourney
{
	qer_editorimage textures/skies/inteldimredclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_lightimage textures/skies/toxicsky.tga
	q3map_surfacelight 495
	q3map_sun	1 1 0.5 150	75 60
	skyparms - 512 -
	{
		map textures/skies/inteldimclouds.tga
		tcMod scroll 0.1 0.1
		tcMod scale 3 2
		depthWrite
	}
	{
		map textures/skies/intelredclouds.tga
		blendfunc add
		tcMod scroll 0.05 0.05
		tcMod scale 3 3
	}
}