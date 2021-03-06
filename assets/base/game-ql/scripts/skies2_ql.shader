textures/skies2/ctf6sky
{
	qer_editorimage textures/skies2/ctf6sky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256 
	q3map_sun	0.266383 0.274632 0.358662 150 60 85
	q3map_surfacelight 100
	skyparms - 512 -
	{
		map textures/skies2/ctf6sky2.tga
        tcMod scale 3 3
		tcMod scroll 0.01 0.01
		depthWrite
	}
	{
		map textures/skies2/ctf6sky.tga
		blendfunc add
        tcMod scale 1.2 0.9
		tcMod scroll .013 .002
		
	}
}

textures/skies2/ctf6sky_ter
//sky for mpterra2
{
	qer_editorimage textures/skies2/ctf6skyb.tga
	qer_lightimage textures/skies2/ctf6sky2b.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 512 
	q3map_sun	1 1 1 185 180 85
	q3map_surfacelight 300	
	skyparms - 512 -
	{
		map textures/skies2/ctf6sky2b.tga
        tcMod scale 3 3
		tcMod scroll 0.05 0.05
		depthWrite
	}
	{
		map textures/skies2/ctf6skyb.tga
		blendfunc add
        tcMod scale 1.2 0.9
		tcMod scroll .013 .002
		
	}
}

textures/skies2/nebulax
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    skyparms textures/skies2/env/nebulax - -
}

textures/skies2/nebula3
{
    qer_editorimage textures/skies2/nebula3.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/proto_sky.tga
	q3map_sun	.90 .90 .95 80 315 40	
	q3map_surfacelight 460
    skyparms textures/skies2/env/nebula3 - -
}

textures/skies2/night2
{
   qer_editorimage textures/skies2/env/night2_up.tga
   q3map_noFog
   q3map_globalTexture
   surfaceparm sky
   surfaceparm noimpact
   surfaceparm nolightmap
   q3map_surfacelight 100
   q3map_sun 1 .88 .78 120 320 65
   skyparms textures/skies2/env/night2 - -
   nopicmip
}

textures/skies2/qzteam3
{
	qer_editorimage textures/skies/bluetopclouds.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	.93 .93 .91 80 315 40	
	q3map_surfacelight 260
	//q3map_sun	.5 .6 .8 100 190 75
	//q3map_surfacelight 120
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

textures/skies2/x_nebula3
{
    qer_editorimage textures/skies2/nebula3.tga
	q3map_lightsubdivide 512
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/proto_sky.tga
	q3map_sun	.90 .90 .95 150 135 50	
	q3map_surfacelight 200
    skyparms textures/skies2/env/nebula3 - -
}

textures/skies2/nebula3halflit
{
    qer_editorimage textures/skies2/nebula3.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/proto_sky.tga
	q3map_sun	.90 .90 .95 80 315 40	
	q3map_surfacelight 190
    skyparms textures/skies2/env/nebula3 - -
}

textures/skies2/nebula3nolit
{
	qer_editorimage textures/skies2/nebula3.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	skyparms textures/skies2/env/nebula3 - -
}

textures/skies2/nebula2
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/stars.tga
	q3map_sun	.90 .90 .95 80 315 40	
	q3map_surfacelight 60
    skyparms textures/skies2/env/nebula2 - -
}

textures/skies2/nebula
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/stars.tga
	q3map_sun	.75 .37 .19 90 315 40	
	q3map_surfacelight 80
    skyparms textures/skies2/env/nebula - -
}

textures/skies2/hell1
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/stars.tga
	q3map_sun	1 1 1 55 -58 58
	q3map_surfacelight 400
    skyparms textures/skies2/env/hell1 - -
}

textures/skies2/xhell1_nolight
{
	qer_editorimage textures/skies2/hell1.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/stars.tga
	q3map_sun	1 1 1 55 -58 58
    skyparms textures/skies2/env/hell1 - -
}

textures/skies2/hell2
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/stars.tga
	q3map_sun	.75 .37 .19 90 315 40	
	q3map_surfacelight 80
    skyparms textures/skies2/env/hell2 - -
}

textures/skies2/hell3
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/stars.tga
	q3map_sun	.75 .37 .19 90 315 40	
	q3map_surfacelight 80
    skyparms textures/skies2/env/hell3 - -
}

textures/skies2/mpterra2
//used terrain ctf map
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_sun	1 1 1 200 180 85
	q3map_surfacelight 90
	qer_editorimage textures/skies/toxicbluesky.tga
	skyparms - 1024 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.0355 0.0355
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendfunc add
		tcMod scale 3 3
		tcMod scroll 0.0125 0.0125
	}
}

textures/skies2/starrynight1
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
    q3map_lightimage textures/skies/stars.tga
	q3map_sun	.75 .37 .19 60 180 40	
	q3map_surfacelight 80
    skyparms textures/skies2/env/starrynight1 - -
}