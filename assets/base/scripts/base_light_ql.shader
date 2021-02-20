textures/base_light/baslt4_phrantic
{
	qer_editorimage textures/base_light/baslt4_1.tga
	surfaceparm nomarks
	q3map_surfacelight 1000

	// New Fluorescent light
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37_150
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37_3k
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	q3map_surfacelight 3000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37_1k_trans
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37_3k_trans
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 3000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37_7k
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	q3map_surfacelight 7000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37_10k
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37_10k_trans
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	surfaceparm nonsolid
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}

textures/base_light/pj_wstlt1_3k_nonsolid
{
	qer_editorimage textures/base_light/wstlt1_5.tga
	q3map_lightimage textures/base_light/wstlt1_5.blend.tga
	q3map_surfacelight 3000
	surfaceparm nomarks
	surfaceparm nonsolid
	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/wstlt1_5.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/wstlt1_5.blend.tga
		blendfunc add
	}
}

textures/base_light/purgatory_redlight_4k
{
	qer_editorimage textures/base_light/ceil1_22a.jpg
	surfaceparm nomarks
	q3map_surfacelight 4000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc add
	}
}

textures/base_light/stadium_lights
{
	surfaceparm alphashadow
      surfaceparm nomarks	
	cull none
	q3map_surfacelight 500
	{
		map textures/base_light/stadium_lights.tga
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
		map textures/base_light/stadium_lightsfx.jpg
		blendfunc add                 
	}
}

textures/base_light/stadium_light
{
	surfaceparm alphashadow
      surfaceparm nomarks	
	cull none
	q3map_surfacelight 8000
	{
		map textures/base_light/stadium_light.tga
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
		map textures/base_light/stadium_lightfx.jpg
		blendfunc add           
	}
}

textures/base_light/ceil1_38_10_trans
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 10000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

// Exact duplicate of the textures/base_light/ceil1_38_10_trans, only created as a hack to address a build issue.
textures/base_light/ceil1_38_10_trans_dup
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 10000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/baslt4_1_1k
{
	qer_editorimage textures/base_light/baslt4_1.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.blend.tga
		blendfunc add
	}
}

textures/base_light/baslt4_1_1k_nonsolid
{
	qer_editorimage textures/base_light/baslt4_1.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.blend.tga
		blendfunc add
	}
}

textures/base_light/baslt4_1_2k
{
	qer_editorimage textures/base_light/baslt4_1.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.blend.tga
		blendfunc add
	}
}

textures/base_light/baslt4_1_2k_nonsolid
{
	qer_editorimage textures/base_light/baslt4_1.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.blend.tga
		blendfunc add
	}
}

textures/base_light/baslt4_1_4k_nonsolid
{
	qer_editorimage textures/base_light/baslt4_1.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 4000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.blend.tga
		blendfunc add
	}
}

textures/base_light/baslt4_1_2kmerge
{
	qer_editorimage textures/base_light/baslt4_1.tga
	surfaceparm nomarks
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_light/baslt4_1merge.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/base_light/baslt4_1merge.blend.tga
		blendfunc add
	}
}

textures/base_light/baslt4_1_4k
{
	qer_editorimage textures/base_light/baslt4_1.tga
	surfaceparm nomarks
	q3map_surfacelight 4000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.blend.tga
		blendfunc add
	}
}

textures/base_light/baslt4_1_4kmerge
{
	surfaceparm nomarks
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_light/baslt4_1merge.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/base_light/baslt4_1merge.blend.tga
		blendfunc add
	}
}

textures/base_light/border11light
{
	q3map_surfacelight 500	
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/border11light.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/border11light.blend.tga
		blendfunc add
	}
}

textures/base_light/border11light_300
{
	qer_editorimage textures/base_light/border11light.tga
	q3map_lightimage textures/base_light/border11light.blend.tga

	q3map_surfacelight 235	
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/border11light.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/border11light.blend.tga
		blendfunc add
	}
}

textures/base_light/border7_ceil50
{
	qer_editorimage textures/base_light/border7_ceil50.tga
	q3map_surfacelight 100
	// Square dirty white llight
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/border7_ceil50.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/border7_ceil50glow.tga
		blendfunc add
	}
}

textures/base_light/ceil1_22a
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_22a_150
{
	qer_editorimage textures/base_light/ceil1_22a.tga
	surfaceparm nomarks
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_22a_8k
{
	surfaceparm nomarks
	qer_editorimage textures/base_light/ceil1_22a.tga
	q3map_surfacelight 8000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_22a_trans
{
	qer_editorimage textures/base_light/ceil1_22a.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 10000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_22a_1k_trans
{
	qer_editorimage textures/base_light/ceil1_22a.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_22a_5k
{
	qer_editorimage textures/base_light/ceil1_22a.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_22a_5k_trans
{
	qer_editorimage textures/base_light/ceil1_22a.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 5000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_30
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	// Square rich blue light
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_30_trans
{
	qer_editorimage textures/base_light/ceil1_30.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 10000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_30_5K
{
	qer_editorimage textures/base_light/ceil1_30.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_30_5K_trans
{
	qer_editorimage textures/base_light/ceil1_30.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 5000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_30_8k
{
	surfaceparm nomarks
	qer_editorimage textures/base_light/ceil1_30.tga
	q3map_surfacelight 8000
	// Square rich blue light (8k light wattage
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_30_8k_trans
{
	qer_editorimage textures/base_light/ceil1_30.tga
	q3map_surfacelight 8000
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	// Square rich blue light (8k light wattage
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_34
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	// Square tourquoise light
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.blend.tga
		blendfunc add
	}
}
textures/base_light/ceil1_34_trans
{
	qer_editorimage textures/base_light/ceil1_34.tga
	surfaceparm nomarks
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	q3map_surfacelight 10000
	// Square tourquoise light
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.blend.tga
		blendfunc add
	}
}
textures/base_light/ceil1_34_10k
{
	qer_editorimage textures/base_light/ceil1_34.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	// Square tourquoise light
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_34_10k_trans
{
	qer_editorimage textures/base_light/ceil1_34.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 10000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_34_1k
{
	qer_editorimage textures/base_light/ceil1_34.tga
	q3map_lightimage textures/base_light/ceil1_34.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_34_2k
{
	qer_editorimage textures/base_light/ceil1_34.tga
	q3map_lightimage textures/base_light/ceil1_34.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_34_5k
{
	qer_editorimage textures/base_light/ceil1_34.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_34.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37_trans
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 10000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_37_dark
{
	qer_editorimage textures/base_light/ceil1_37.tga
	surfaceparm nomarks
	q3map_surfacelight 10
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_37.blend.tga
		blendfunc add
	}
}


textures/base_light/ceil1_38
{
	surfaceparm nomarks
	q3map_surfacelight 2500
	polygonOffset 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_trans
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 2500
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_10k
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_10k_trans
{
	qer_editorimage textures/base_light/ceil1_38.tga
	q3map_surfacelight 10000
	surfaceparm nonsolid
	surfaceparm nomarks
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_20k
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	q3map_surfacelight 20000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_20k_trans
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	q3map_surfacelight 20000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_3k_trans
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	q3map_surfacelight 3000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_30k
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	q3map_surfacelight 30000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_40k
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	q3map_surfacelight 40000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_50k
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	q3map_surfacelight 50000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_70k
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	q3map_surfacelight 70000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_38_90k
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	q3map_surfacelight 90000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_39
{
	surfaceparm nomarks
	q3map_surfacelight 7500
	qer_editorimage textures/base_light/ceil1_39.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_39_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 7500
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil1_39.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_39_2k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_39_4k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 4000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_39_4k_trans
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 4000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_4
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_4.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_4.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_4_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 10000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil1_4.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_4.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_4.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil1_olive
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_olive.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_olive.blend.tga
		tcMod stretch sin 1 0.1 0 .2
		blendfunc add
	}
}

textures/base_light/ceil1_olive_trans
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil1_olive.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_olive.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_olive.blend.tga
		tcMod stretch sin 1 0.1 0 .2
		blendfunc add
	}
}

textures/base_light/ceil1_orange
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_orange.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_orange.blend.tga
		tcMod stretch sin 1 0.1 0 .2
		blendfunc add
	}
}

textures/base_light/ceil1_orange_trans
{
	surfaceparm nomarks
	q3map_surfacelight 10000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil1_orange.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_orange.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_orange.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_01_1k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_01.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_01.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_01.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_01_3k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 3000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_01.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_01.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_01.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_01_5k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 5000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_01.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_01.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_01.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_01_9k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 9000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_01.tga
	{
		map textures/base_light/ceil2_01.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_01.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_02_1k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_02.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_02.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_02.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_02_3k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 3000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_02.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_02.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_02.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_02_5k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 5000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_02.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_02.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_02.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_02_9k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 9000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_02.tga
	{
		map textures/base_light/ceil2_02.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_02.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_03_1k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_03.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_03.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_03.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_03_3k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 3000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_03.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_03.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_03.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_03_5k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 5000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_03.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_03.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_03.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil2_03_9k_trans
{
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 9000
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	qer_editorimage textures/base_light/ceil2_03.tga
	{
		map textures/base_light/ceil2_03.tga
		blendfunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map textures/base_light/ceil2_03.blend.tga
		blendfunc add
	}
}

textures/base_light/ceil_white5k
{
	qer_editorimage textures/base_light/ceil1_38.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_38.blend.tga
		blendfunc add
	}
}

textures/base_light/cornerlight
{
	q3map_lightimage textures/base_light/cornerlight.glow.tga
	surfaceparm nomarks
	q3map_surfacelight 2500
	{
		map textures/base_light/cornerlight.tga
		rgbGen identity
	}

	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}

		
	{	
		map textures/base_light/cornerlight.glow.tga
		blendfunc add
		rgbgen wave sawtooth .6 .1 0 7
	}		
}
textures/base_light/geolight
{
	q3map_lightimage textures/base_light/geolight_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 4000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_light/geolight_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
}
textures/base_light/geolight2
{
	qer_editorimage textures/base_light/geolight2.tga
	q3map_lightimage textures/base_light/geolight2_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 4000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight2.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_light/geolight2_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
}
textures/base_light/geolight2_2k
{	
	qer_editorimage textures/base_light/geolight2.tga
	q3map_lightimage textures/base_light/geolight2_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight2.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_light/geolight2_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
}
textures/base_light/geolight2_1k
{	
	qer_editorimage textures/base_light/geolight2.tga
	q3map_lightimage textures/base_light/geolight2_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight2.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_light/geolight2_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
}
textures/base_light/geolight2_500
{	
	qer_editorimage textures/base_light/geolight2.tga
	q3map_lightimage textures/base_light/geolight2_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 500
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight2.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_light/geolight2_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
}
textures/base_light/geolight3
{
	qer_editorimage textures/base_light/geolight3.tga
	q3map_lightimage textures/base_light/geolight3_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 4000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight3.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_light/geolight3_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
}
textures/base_light/geolight4_1k
{
	qer_editorimage textures/base_light/geolight4.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.blend.tga
		blendfunc add
	}
}

textures/base_light/geolight4_1k_nonsolid
{
	qer_editorimage textures/base_light/geolight4.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.blend.tga
		blendfunc add
	}
}

textures/base_light/geolight4_2k
{
	qer_editorimage textures/base_light/geolight4.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.blend.tga
		blendfunc add
	}
}

textures/base_light/geolight4_2k_nonsolid
{
	qer_editorimage textures/base_light/geolight4.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.blend.tga
		blendfunc add
	}
}

textures/base_light/geolight4_5k
{
	qer_editorimage textures/base_light/geolight4.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.blend.tga
		blendfunc add
	}
}

textures/base_light/geolight4_5k_nonsolid
{
	qer_editorimage textures/base_light/geolight4.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/geolight4.blend.tga
		blendfunc add
	}
}

textures/base_light/dm18twr
{
	qer_editorimage textures/base_light/dm18twr.tga
	q3map_lightimage textures/base_light/dm18twr_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 4000
	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/dm18twr.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
    {
		map textures/base_light/dm18twr_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
}

textures/base_light/dm18twr_2k
{
	qer_editorimage textures/base_light/dm18twr.tga
	q3map_lightimage textures/base_light/dm18twr_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/dm18twr.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_light/dm18twr_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
	
}

textures/base_light/dm18twr_1k
{
	qer_editorimage textures/base_light/dm18twr.tga
	q3map_lightimage textures/base_light/dm18twr_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/dm18twr.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_light/dm18twr_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
}

textures/base_light/dm18twr_3k
{
	qer_editorimage textures/base_light/dm18twr.tga
	q3map_lightimage textures/base_light/dm18twr_glow.tga
	surfaceparm nomarks
	q3map_surfacelight 3000
	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/dm18twr.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
        {
		map textures/base_light/dm18twr_glow.tga
		blendfunc add
		rgbgen wave sin .575 .025 0 10
	}
	
}

textures/base_light/jaildr03_1
{
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/jaildr03_1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/jaildr03_1.tga
		rgbGen wave sin 0.5 0.5 1 1
		blendfunc add
	}
}

textures/base_light/jaildr03_2
{
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/jaildr03_2.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/jaildr03_2.blend.tga
		rgbGen wave sin 0.5 0.5 1 1
		blendfunc add
	}

}

textures/base_light/jaildr1_3
{
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/jaildr1_3.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/jaildr1_3.blend.tga
		rgbGen wave sin 0.5 0.5 1 1
		blendfunc add
	}
}

textures/base_light/light1_1500
{
	qer_editorimage textures/base_light/light1.tga
	surfaceparm nomarks
	q3map_surfacelight 1500
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/light1.blend.tga
		blendfunc add
	}
}

textures/base_light/light1_3000
{
	qer_editorimage textures/base_light/light1.tga
	surfaceparm nomarks
	q3map_surfacelight 1500
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/light1.blend.tga
		blendfunc add
	}
}

textures/base_light/light1_4k_trans
{
	qer_editorimage textures/base_light/light1.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	q3map_surfacelight 4000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/light1.blend.tga
		blendfunc add
	}
}

textures/base_light/light1_5000
{
	qer_editorimage textures/base_light/light1.tga
	q3map_lightimage textures/base_light/light1.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/light1.blend.tga
		blendfunc add
	}
}

textures/base_light/light1blue_1500
{
	qer_editorimage textures/base_light/light1blue.tga
	q3map_lightimage textures/base_light/light1blue.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 1500
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1blue.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/light1blue.blend.tga
		blendfunc add
	}
}

textures/base_light/light1blue_2000
{
	qer_editorimage textures/base_light/light1blue.tga
	q3map_lightimage textures/base_light/light1blue.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1blue.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/light1blue.blend.tga
		blendfunc add
	}
}

textures/base_light/light1blue_5000
{
	qer_editorimage textures/base_light/light1blue.tga
	q3map_lightimage textures/base_light/light1blue.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1blue.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/light1blue.blend.tga
		blendfunc add
	}
}

textures/base_light/light1blue_800
{
	qer_editorimage textures/base_light/light1blue.tga
	q3map_lightimage textures/base_light/light1blue.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 800
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1blue.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/light1blue.blend.tga
		blendfunc add
	}
}

textures/base_light/light1dark
{
	qer_editorimage textures/base_light/light1.tga
	q3map_lightimage textures/base_light/light1.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 6000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/light1.blend.tga
		blendfunc add
	}
}

textures/base_light/light1red_2000
{
	qer_editorimage textures/base_light/light1red.tga
	q3map_lightimage textures/base_light/light1red.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1red.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/light1red.blend.tga
		blendfunc add
	}
}

textures/base_light/light1red_5000
{
	qer_editorimage textures/base_light/light1red.tga
	q3map_lightimage textures/base_light/light1red.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light1red.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/light1red.blend.tga
		blendfunc add
	}
}

textures/base_light/light5_1k
{
	qer_editorimage textures/base_light/light5.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 1000
	{
		map textures/base_light/light5.tga
		rgbGen identity
	}
}

textures/base_light/light5_1k_blue
{
	qer_editorimage textures/base_light/light5_blue.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 1000
	{
		map textures/base_light/light5_blue.tga
		rgbgen identity
	}
}

textures/base_light/light5_1k_ns
{
	qer_editorimage textures/base_light/light5_ns.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 1000
	{
		map textures/base_light/light5.tga
		rgbGen identity
	}
}

textures/base_light/light5_1k_red
{
	qer_editorimage textures/base_light/light5_red.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 1000
	{
		map textures/base_light/light5_red.tga
		rgbgen identity
	}
}

textures/base_light/light5_2k
{
	qer_editorimage textures/base_light/light5.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 2000
	{
		map textures/base_light/light5.tga
		rgbGen identity
	}
}

textures/base_light/light5_3000
{
	qer_editorimage textures/base_light/light5.tga
	surfaceparm nomarks
	q3map_surfacelight 3000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/xlight5.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/xlight5.blend.tga
		blendfunc add
	}
}

textures/base_light/light5_3k_blue
{
	qer_editorimage textures/base_light/light5_blue.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 3000
	{
		map textures/base_light/light5_blue.tga
		rgbgen identity
	}
}

textures/base_light/light5_3k_red
{
	qer_editorimage textures/base_light/light5_red.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 3000
	{
		map textures/base_light/light5_red.tga
		rgbgen identity
	}
}

textures/base_light/light5_5k
{
	qer_editorimage textures/base_light/light5.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 5000
	{
		map textures/base_light/light5.tga
		rgbGen identity
	}
}

textures/base_light/light5_10k
{
	qer_editorimage textures/base_light/light5.tga
	q3map_lightimage textures/base_light/xlight5.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/xlight5.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/xlight5.blend.tga
		blendfunc add
	}
}

textures/base_light/light5_15k
{
	qer_editorimage textures/base_light/light5.tga
	q3map_lightimage textures/base_light/light5.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 15000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light5.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/light5.tga
		blendfunc add
	}
}

textures/base_light/light5_green
{
	qer_editorimage textures/base_light/light5_green.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 500
	{
		map textures/base_light/light5_green.tga
		rgbGen identity
	}
}

textures/base_light/light5_green_blended
{
	qer_editorimage textures/base_light/light5_green.tga
	surfaceparm nomarks
	q3map_surfacelight 500
	{
		map $lightmap 
		rgbGen identity
	}
	{
		map textures/base_light/light5_green.tga
		blendfunc filter
		rgbGen identity
	}	
	{
		map textures/base_light/light5_green.blend.tga
		blendfunc add
		rgbGen identity
	}
}

textures/base_light/light5_orange
{
	qer_editorimage textures/base_light/light5_orange.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 500
	{
		map textures/base_light/light5_orange.tga
		rgbGen identity
	}
}

textures/base_light/light5_red
{
	qer_editorimage textures/base_light/light5_red.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 500
	{
		map textures/base_light/light5_red.tga
		rgbGen identity
	}
}

textures/base_light/lightb
{
    cull disable
    deformVertexes autoSprite2
    surfaceparm trans
    surfaceparm nolightmap
    surfaceparm nonsolid
	{
		map textures/base_light/lightb.tga
		blendfunc add
		rgbGen identity
	}
}
textures/base_light/lightb2
{
    cull disable
    deformVertexes autoSprite
    surfaceparm trans
	surfaceparm nolightmap
	surfaceparm nonsolid
	{
		map textures/base_light/lightb2.tga
		blendfunc add
		rgbGen identity
	}
}

textures/base_light/lt2_8000
{
	qer_editorimage textures/base_light/light2.tga
	light 1
	surfaceparm nomarks
	q3map_surfacelight 8000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light2.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/light2.blend.tga
		rgbGen wave sin .6 .1 .1 .1
		blendfunc add
	}
}

textures/base_light/lt2_20k
{
	qer_editorimage textures/base_light/light2.tga
	surfaceparm nomarks
	q3map_surfacelight 20000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light2.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/light2.blend.tga
		rgbGen wave sin .6 .1 .1 .1
		blendfunc add
	}
}
textures/base_light/lt2_2000
{
	qer_editorimage textures/base_light/light2.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light2.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/light2.blend.tga
		rgbGen wave sin 0.6 0.1 .1 .1
		blendfunc add
	}
}

textures/base_light/lt2_4000
{
	qer_editorimage textures/base_light/light2.tga
	surfaceparm nomarks
	q3map_surfacelight 4000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light2.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/light2.blend.tga
		rgbGen wave sin .6 .1 .1 .1
		blendfunc add
	}
}

textures/base_light/lt2_8000
{
	qer_editorimage textures/base_light/light2.tga
	surfaceparm nomarks
	q3map_surfacelight 8000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/light2.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/light2.blend.tga
		rgbGen wave sin .6 .1 .1 .1
		blendfunc add
	}
}

textures/base_light/metal_01_grilled_light_blue_500
{
	qer_editorimage textures/base_light/metal_01_grilled_light_blue.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_blue.lightimage.tga
	surfaceparm nomarks
	q3map_surfacelight 500
	{
		map textures/base_light/metal_01_grilled_light_blue.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_blue.blend.tga
		blendfunc add
	}
}

textures/base_light/metal_01_grilled_light_blue_500_nonsolid
{
	qer_editorimage textures/base_light/metal_01_grilled_light_blue.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_blue.lightimage.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 500
	{
		map textures/base_light/metal_01_grilled_light_blue.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_blue.blend.tga
		blendfunc add
	}
}

textures/base_light/metal_01_grilled_light_blue_1k
{
	qer_editorimage textures/base_light/metal_01_grilled_light_blue.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_blue.lightimage.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map textures/base_light/metal_01_grilled_light_blue.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_blue.blend.tga
		blendfunc add
	}
}

textures/base_light/metal_01_grilled_light_blue_1k_nonsolid
{
	qer_editorimage textures/base_light/metal_01_grilled_light_blue.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_blue.lightimage.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	{
		map textures/base_light/metal_01_grilled_light_blue.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_blue.blend.tga
		blendfunc add
	}
}

textures/base_light/metal_01_grilled_light_blue
{
	qer_editorimage textures/base_light/metal_01_grilled_light_blue.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_blue.lightimage.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map textures/base_light/metal_01_grilled_light_blue.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_blue.blend.tga
		blendfunc add
	}
}

textures/base_light/metal_01_grilled_light_blue_nonsolid
{
	qer_editorimage textures/base_light/metal_01_grilled_light_blue.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_blue.lightimage.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 2000
	{
		map textures/base_light/metal_01_grilled_light_blue.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_blue.blend.tga
		blendfunc add
	}
}

textures/base_light/metal_01_grilled_light_blue_pulse
{
	qer_editorimage textures/base_light/metal_01_grilled_light_blue.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_blue.lightimage.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map textures/base_light/metal_01_grilled_light_blue.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_blue.blend.tga
		blendfunc add
		rgbGen wave sawtooth 0.2 1 1 0.2 
	}
}

textures/base_light/metal_01_grilled_light_red
{
	qer_editorimage textures/base_light/metal_01_grilled_light_red.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_red.lightimage.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map textures/base_light/metal_01_grilled_light_red.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_red.blend.tga
		blendfunc add
	}
}

textures/base_light/metal_01_grilled_light_red_nonsolid
{
	qer_editorimage textures/base_light/metal_01_grilled_light_red.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_red.lightimage.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 2000
	{
		map textures/base_light/metal_01_grilled_light_red.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_red.blend.tga
		blendfunc add
	}
}

textures/base_light/metal_01_grilled_light_red_pulse
{
	qer_editorimage textures/base_light/metal_01_grilled_light_red.tga
	q3map_lightimage textures/base_light/metal_01_grilled_light_red.lightimage.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map textures/base_light/metal_01_grilled_light_red.tga
	}
	{
		map $lightmap 
		blendfunc filter
		tcGen lightmap 
	}
	{
		map textures/base_light/metal_01_grilled_light_red.blend.tga
		blendfunc add
		rgbGen wave sawtooth 0.2 1 1 0.2 
	}
}

textures/base_light/patch10_pj_lite
{
	q3map_surfacelight 2500
	surfaceparm nomarks
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/patch10_pj_lite.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/patch10_pj_lite.blend.tga
		blendfunc add
	}
}

textures/base_light/patch10_pj_lite2
{
	q3map_surfacelight 2000
	surfaceparm nomarks
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/patch10_pj_lite2.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/patch10_pj_lite2.blend.tga
		blendfunc add
	}
}

textures/base_light/patch10_pj_lite2_1000
{
	qer_editorimage textures/base_light/patch10_pj_lite2.tga
	q3map_surfacelight 1000
	surfaceparm nomarks
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/patch10_pj_lite2.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/patch10_pj_lite2.blend.tga
		blendfunc add
	}
}

textures/base_light/pjceil1_39_1K
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	// Square dirty white
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/pjceil1_39_1p5k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 1500
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/proto_light
{
	q3map_lightimage textures/base_light/proto_lightmap.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_light.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/proto_lightmap.tga
		blendfunc add
                rgbGen wave sin .5 0.5 1 .1
	}
        {	
		map textures/base_light/proto_light2.tga
		blendfunc add
                rgbgen wave triangle 1 5 1 3
	}
        {	
		map textures/base_light/proto_light2.tga
		blendfunc add
                tcmod scale -1 -1
                 rgbgen wave triangle 1 2 0 7
	}
}

textures/base_light/proto_light_nonsolid
{
	qer_editorimage textures/base_light/proto_light.tga
	q3map_lightimage textures/base_light/proto_lightmap.tga
	surfaceparm nomarks
	surfaceparm nonsolid
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_light.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/proto_lightmap.tga
		blendfunc add
                rgbGen wave sin .5 0.5 1 .1
	}
        {	
		map textures/base_light/proto_light2.tga
		blendfunc add
                rgbgen wave triangle 1 5 1 3
	}
        {	
		map textures/base_light/proto_light2.tga
		blendfunc add
                tcmod scale -1 -1
                 rgbgen wave triangle 1 2 0 7
	}
}

textures/base_light/proto_light_2k
{
	qer_editorimage textures/base_light/proto_light.tga
	q3map_lightimage textures/base_light/proto_lightmap.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_light.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/proto_lightmap.tga
		blendfunc add
                rgbGen wave sin .5 0.5 1 .1
	}
        {	
		map textures/base_light/proto_light2.tga
		blendfunc add
                rgbgen wave triangle 1 5 1 3
	}
        {	
		map textures/base_light/proto_light2.tga
		blendfunc add
                tcmod scale -1 -1
                 rgbgen wave triangle 1 2 0 7
	}
}

textures/base_light/proto_lightred
{
	q3map_lightimage textures/base_light/proto_lightred.tga
	surfaceparm nomarks
	q3map_surfacelight 300
	q3map_backsplash 100 8
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_lightred.tga
		blendfunc filter
		rgbGen identity
	}
        {
		map textures/base_light/proto_lightred.tga
		blendfunc add
	}
	
}

textures/base_light/proto_lightred2
{
	q3map_lightimage textures/base_light/proto_lightred.tga
	qer_editorimage textures/base_light/proto_lightred.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_lightred.tga
		blendfunc filter
		rgbGen identity
	}
        {
		map textures/base_light/proto_lightred.tga
		blendfunc add
		rgbGen wave square .5 .5 0 1
	}
	
}

textures/base_light/proto_lightblue
{
	q3map_lightimage textures/base_light/proto_lightblue.tga
	qer_editorimage textures/base_light/proto_lightblue.tga
	surfaceparm nomarks
	q3map_surfacelight 300
	q3map_backsplash 100 8
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_lightblue.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/proto_lightblue.tga
		blendfunc add
	}
}

textures/base_light/proto_lightblue2
{
	q3map_lightimage textures/base_light/proto_lightblue.tga
	qer_editorimage textures/base_light/proto_lightblue.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_lightblue.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/proto_lightblue.tga
		blendfunc add
		rgbGen wave square .5 .5 0 1
	}
}

textures/base_light/runway
{
	q3map_lightimage textures/base_light/runway_glow.tga
	surfaceparm nomarks
	{
		map textures/base_light/runway_glow.tga
		tcmod scale 1 .25
		rgbgen wave square -1 2 .5 8
		tcmod scroll 0 .5
	}	

	{
		map textures/base_light/runway.tga
		blendfunc blend
		rgbGen identity
	}
        
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}

	{
		map textures/base_light/runwayb.tga
		blendfunc add
		rgbGen identity
	}

	
}

textures/base_light/runway_dblue
{
	qer_editorimage textures/base_light/runway_dblue.tga
	q3map_lightimage textures/base_light/runway_glow_dblue.tga
	surfaceparm nomarks
	{
		map textures/base_light/runway_glow_dblue.tga
		tcmod scale 1 .25
		rgbgen wave square -1 2 .5 8
		tcmod scroll 0 .5
	}	

	{
		map textures/base_light/runway_dblue.tga
		blendfunc blend
		rgbGen identity
	}
        
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}

	{
		map textures/base_light/runwayb_dblue.tga
		blendfunc add
		rgbGen identity
	}
}

textures/base_light/runway_dred
{
	qer_editorimage textures/base_light/runway_dred.tga
	q3map_lightimage textures/base_light/runway_glow_dred.tga
	surfaceparm nomarks
	{
		map textures/base_light/runway_glow_dred.tga
		tcmod scale 1 .25
		rgbgen wave square -1 2 .5 8
		tcmod scroll 0 .5
	}	

	{
		map textures/base_light/runway_dred.tga
		blendfunc blend
		rgbGen identity
	}
        
	{
		map $lightmap
		rgbGen identity
		blendfunc filter
	}

	{
		map textures/base_light/runwayb_dred.tga
		blendfunc add
		rgbGen identity
	}
}

textures/base_light/rustyblock_light
{
	qer_editorimage textures/base_light/rustyblock_light.tga
	q3map_lightimage textures/base_light/rustyblock_light.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	q3map_lightimage textures/base_light/rustyblock_light.blend.tga
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/base_light/rustyblock_light.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/rustyblock_light.blend.tga
		blendfunc add
		rgbGen identity
	}
}

textures/base_light/rustyblock_light_4k
{
	qer_editorimage textures/base_light/rustyblock_light.tga
	q3map_lightimage textures/base_light/rustyblock_light.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 4000
	q3map_lightimage textures/base_light/rustyblock_light.blend.tga
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/base_light/rustyblock_light.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/rustyblock_light.blend.tga
		blendfunc add
		rgbGen identity
	}
}

textures/base_light/rustytrim_lights
{
	qer_editorimage textures/base_light/rustytrim_lights.tga
	q3map_lightimage textures/base_light/rustytrim_lights.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	q3map_lightsubdivide 32
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/base_light/rustytrim_lights.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/rustytrim_lights.blend.tga
		blendfunc add
		rgbGen identity
	}
}

textures/base_light/s_proto_light
{
	q3map_lightimage textures/base_light/s_proto_lightmap.tga
	qer_editorimage textures/base_light/proto_light.tga
	surfaceparm nomarks
	q3map_surfacelight 100
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_light.tga
		blendfunc filter
		rgbGen identity
	}
	{	
		map textures/base_light/proto_lightmap.tga
		blendfunc add
                rgbGen wave sin .5 0.5 1 .1
	}
        {	
		map textures/base_light/proto_light2.tga
		blendfunc add
                rgbgen wave triangle 1 5 1 3
	}
        {	
		map textures/base_light/proto_light2.tga
		blendfunc add
                tcmod scale -1 -1
                 rgbgen wave triangle 1 2 0 7
	}
}

textures/base_light/scrolllight
{
	q3map_lightimage textures/sfx/scrolllight2.tga
	q3map_surfacelight 100
        {
		map $lightmap
		rgbGen identity
	}
        {
		Map textures/base_light/scrolllight.tga
		blendfunc filter
                rgbGen identity
	}	
        {    
		Map textures/base_light/scrolllight2.tga
		blendfunc add
                tcmod scroll -1 0
	}	
        {    
      	        Map textures/base_light/scrolllight2.tga
      	        blendfunc add
                tcmod scroll -2 0
        }	
}

textures/base_light/scrolllight_rept
{
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/base_light/scrolllight_rept.tga
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/base_light/scrolllight2_rept.tga
		blendfunc add
		tcmod scroll 0 1
	}
	{
		map textures/base_light/scrolllight2_rept.tga
		blendfunc add
		tcmod scroll 0 2
	}
}

textures/base_light/striplight_blue
{
	qer_editorimage textures/base_light/striplight_blue.tga
	surfaceparm nomarks
	q3map_surfacelight 500
	{
		map textures/base_light/striplight_blue.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/base_light/striplight_blue.blend.tga
		blendfunc add
		rgbGen wave sin 0.8 0.2 1 .5
		tcMod scroll -0.5 0
	}
}

textures/base_light/striplight_blue2
{
	qer_editorimage textures/base_light/striplight_blue2.tga
	surfaceparm nomarks
	q3map_surfacelight 500
	{
		map textures/base_light/striplight_blue2.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/base_light/striplight_blue2.blend.tga
		blendfunc add
		rgbGen wave sin 0.8 0.2 1 .5
		tcMod scroll -0.5 0
	}
}

textures/base_light/striplight_red2
{
	qer_editorimage textures/base_light/striplight_red2.tga
	surfaceparm nomarks
	q3map_surfacelight 500
	{
		map textures/base_light/striplight_red2.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/base_light/striplight_red2.blend.tga
		blendfunc add
		rgbGen wave sin 0.8 0.2 1 .5
		tcMod scroll -0.5 0
	}
}

textures/base_light/striplight_red_500
{
	qer_editorimage textures/base_light/striplight_red.tga
	surfaceparm nomarks
	q3map_surfacelight 500
	{
		map textures/base_light/striplight_red.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
	}
	{
		map textures/base_light/striplight_red.blend.tga
		blendfunc add
		rgbGen wave sin 0.8 0.2 1 .5
		tcMod scroll -0.5 0
	}
}

textures/base_light/striplight_caution_01
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 1 .5
		blendfunc add
	}
}

textures/base_light/striplight_caution_02
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.95 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_03
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.9 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_04
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.85 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_05
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.8 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_06
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.75 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_07
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.7 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_08
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.65 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_09
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.6 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_10
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.55 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_11
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.5 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_12
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.45 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_13
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.4 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_14
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.35 1
		blendfunc add
	}
}

textures/base_light/striplight_caution_15
{
	qer_editorimage textures/base_light/striplight_caution.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_caution.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.75 0.25 0.3 1
		blendfunc add
	}
}

textures/base_light/striplight_red
{
	qer_editorimage textures/base_light/striplight_red.tga
	q3map_surfacelight 1000
	q3map_lightimage textures/base_light/striplight_red.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_red.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_red.blend.tga
		rgbGen wave sin 0.5 0.5 1 .5
		blendfunc add
	}
}

textures/base_light/striplight_yellow
{
	qer_editorimage textures/base_light/striplight_yellow.tga
	q3map_surfacelight 500
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_yellow.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.5 0.5 1 .5
		blendfunc add
	}
}

textures/base_light/striplight_yellow_2k
{
	qer_editorimage textures/base_light/striplight_yellow.tga
	q3map_surfacelight 2000
	q3map_lightimage textures/base_light/striplight_yellow.blend.tga
	surfaceparm nomarks
	surfaceparm nodlight
	{
		map textures/base_light/striplight_yellow.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
	{
		map textures/base_light/striplight_yellow.blend.tga
		rgbGen wave sin 0.5 0.5 1 .25
		blendfunc add
	}
}

textures/base_light/trianglelight
{
	q3map_lightimage textures/base_light/trianglelight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 2500
	{
		map textures/base_light/trianglelight.tga
		rgbGen identity
	}

	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}

		
	{	
		map textures/base_light/trianglelight.blend.tga
		blendfunc add
		rgbgen wave sawtooth .6 .1 0 7
	}

		
}

textures/base_light/wsupprt1_12
{
	surfaceparm nomarks
	q3map_surfacelight 1000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/wsupprt1_12.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/wsupprt1_12.blend.tga
		rgbGen wave sin 0.5 0.5 1 1
		blendfunc add
	}
}

textures/base_light/xceil1_39
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 20000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_trans
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 20000
	surfaceparm nonsolid
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_1
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_10k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_10k_trans
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	surfaceparm nonsolid
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_110k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 110000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_15k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 15000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_20k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 20000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_2k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_2k_trans
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	surfaceparm nonsolid
	polygonOffset 
	qer_trans 0.5 
	sort 6 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_30k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 30000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_500k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 500000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_50k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 50000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_5k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_70k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 70000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_90k
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 90000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_a
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 30000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}

textures/base_light/xceil1_39_b
{
	qer_editorimage textures/base_light/ceil1_39.tga
	surfaceparm nomarks
	q3map_surfacelight 40000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_39.blend.tga
		blendfunc add
	}
}
textures/base_light/x_proto_light
{
	q3map_lightimage textures/base_light/s_proto_lightmap.tga
	qer_editorimage textures/base_light/s_proto_light.tga
	surfaceparm nomarks
	q3map_surfacelight 100
	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_light.tga
		blendfunc filter
		rgbGen identity
	}
}
textures/base_light/pj_wstlt1_3k
{
	qer_editorimage textures/base_light/wstlt1_5.tga
	q3map_lightimage textures/base_light/wstlt1_5.blend.tga
	q3map_surfacelight 3000
	surfaceparm nomarks
	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/wstlt1_5.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/wstlt1_5.blend.tga
		blendfunc add
	}
}