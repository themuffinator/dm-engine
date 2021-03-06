textures/gothic_floor/center2trn
{

        {
		map textures/sfx/fireswirl2.tga
                tcmod rotate 333
                tcMod stretch sin .8 0.2 0 9.7
	        rgbGen identity
	}
        {
	        map textures/gothic_floor/center2trn.tga
		blendfunc blend
                tcmod rotate 30
                tcMod stretch sin .8 0.2 0 .2
	        rgbGen identity
	}
        {
	        map textures/gothic_floor/center2trn.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/gothic_floor/largerblock3b_ow
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
		map textures/gothic_floor/largerblock3b_ow.tga
		blendfunc blend
	    rgbGen identity
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/gothic_floor/largerblock3b3_ow
{
	{
		map textures/sfx/proto_zzztblu2.tga
		tcmod turb 0 0.5 0 9.6
		tcmod scale 2 2
		tcmod scroll 9 5
		blendfunc gl_one gl_zero
		rgbgen identity
	}
	{
		map textures/gothic_floor/largerblock3b3_ow.tga
		blendfunc blend
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_one_minus_dst_alpha
		rgbgen identity
	}
}

textures/gothic_floor/metalbridge06_pent_half
{
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_floor/metalbridge06_pent_half.tga
		blendfunc filter
		tcmod scale 2 2
		rgbgen identity
	}
	{
		map textures/gothic_floor/pent_glow_half.tga
		blendfunc add
		tcmod scale 2 2
		rgbgen wave sin .5 .5 0 0.5
	}
}

textures/gothic_floor/metalbridge06brokeb
{
        {
                map textures/sfx/kenelectric.tga  
                tcmod scale 2 2
                tcMod turb 0 .2 0 .3
                tcmod scroll 3 5
                rgbGen identity
	}  
        {
		map textures/gothic_floor/metalbridge06brokeb.tga
                blendfunc blend
		rgbGen identity
	} 
        {
		map $lightmap
                blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/gothic_floor/pent_metalbridge02
{
	q3map_lightimage textures/gothic_floor/pent_glow.tga
	q3map_surfacelight 500

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_floor/pent_metalbridge02.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_floor/pent_glow.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 0.5
	}
}

textures/gothic_floor/pent_metalbridge06
{
	q3map_lightimage textures/gothic_floor/pent_glow.tga
	q3map_surfacelight 500

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_floor/pent_metalbridge06.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_floor/pent_glow.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 0.5
	}
}

textures/gothic_floor/pent_metalbridge06b
{
	q3map_lightimage textures/gothic_floor/pent_glow.tga
	q3map_surfacelight 500

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_floor/pent_metalbridge06b.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_floor/pent_glow.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 0.5
	}
}

textures/gothic_floor/q1metal7_98_trans
{
	surfaceparm nonsolid
	surfaceparm trans
	qer_editorimage textures/gothic_floor/q1metal7_98.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_floor/q1metal7_98.tga
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
	}
}

textures/gothic_floor/q1metal7_99spot
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
	        map textures/gothic_floor/q1metal7_99spot.tga
		blendfunc blend
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/gothic_floor/xq1metalbig_ow
{
        {
	        map textures/gothic_floor/xq1metalbig_ow.tga
	        rgbGen identity
	}
        {
		map $lightmap
                blendfunc filter
		rgbGen identity
	}
}

textures/gothic_floor/xstepborder3_shiney
{
	qer_editorimage textures/gothic_floor/xstepborder3_alpha.tga
	{
		map $lightmap
		rgbgen identity      
	}
	
	{
		map textures/gothic_floor/xstepborder3_alpha.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}

			
}