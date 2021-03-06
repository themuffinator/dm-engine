textures/gothic_trim/brass_shiny
{
	qer_editorimage textures/gothic_trim/brass_shiny.tga  
	{
		map textures/effects/tinfx.tga       
		tcGen environment
		rgbGen identity
	} 
	{
		map textures/gothic_trim/brass_shiny.tga
		blendfunc blend
		rgbGen identity
	} 
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/gothic_trim/chain
{
    cull disable
    surfaceparm alphashadow
    surfaceparm nonsolid
	{
		map textures/gothic_trim/chain.tga
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

textures/gothic_trim/chain2
{
    cull disable
    surfaceparm alphashadow
    surfaceparm nonsolid
	{
		map textures/gothic_trim/chain2.tga
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

textures/gothic_trim/columncapital
{
	qer_editorimage textures/gothic_trim/columncapital.tga
	q3map_lightmapsamplesize 2
	q3map_forceMeta
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/columncapital.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/gothic_trim/baseboard09_p_shiny
{
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/baseboard09_p_shiny.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		alphagen lightingspecular	
		rgbGen identity
	}
}

textures/gothic_trim/border6_trans
{
	qer_editorimage textures/gothic_trim/border6.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/border6.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/gothic_trim/column2c_trans
{
	qer_editorimage textures/gothic_trim/column2c_test.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/column2c_test.tga
		rgbGen identity
		blendfunc filter	
	}
}

textures/gothic_trim/copper_8_tile_r_nonsolid
{
	qer_editorimage textures/gothic_trim/copper_8_tile_r.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/copper_8_tile_r.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/gothic_trim/copper_64_tile_oxidized_nonsolid
{
	qer_editorimage textures/gothic_trim/copper_64_tile_oxidized.tga
	surfaceparm	nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/copper_64_tile_oxidized.tga
		blendfunc filter
	}
}

textures/gothic_trim/gothgrate2
{
	surfaceparm	metalsteps		
	cull none
	{
		map textures/gothic_trim/gothgrate2.tga
		blendfunc GL_ONE GL_ZERO
		rgbGen identity
		alphaFunc GT0
		depthWrite
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
		depthFunc equal
	}
}

textures/gothic_trim/km_arena1tower4_shiny
{
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/gothic_trim/km_arena1tower4_shiny.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}	
}

textures/gothic_trim/metalbase03a_blocks11b_trans
{
	surfaceparm nonsolid
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_trim/metalbase03a_blocks11b.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_trim/metalbase03a_blocks11b4_trans
{
	surfaceparm nonsolid
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_trim/metalbase03a_blocks11b4.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_trim/metaldemonkillblockfx
{
	{
		map textures/sfx/firegorre.tga
		tcmod scroll 0 1
		tcmod turb 0 .25 0 1.6
		tcmod scale 4 4
		blendfunc gl_one gl_zero
		rgbgen identity
	}
	{
		map textures/gothic_trim/metaldemonkillblock_a.tga
		blendfunc gl_zero gl_one_minus_src_color
		rgbgen identity
	}
	{
		map textures/gothic_trim/metaldemonkillblock.tga
		blendfunc add
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_trim/metalsupport4b_noshadow
{
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_trim/metalsupport4b.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_trim/metalsupport4b_trans
{
	qer_editorimage textures/gothic_trim/metalsupport4b.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/metalsupport4b.tga
		rgbGen identity
		blendfunc filter	
	}
}

textures/gothic_trim/metalsupport4h_shiny
{
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/gothic_trim/metalsupport4h_shiny.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_trim/metalsupport4h_trans
{
	qer_editorimage textures/gothic_trim/metalsupport4h_shiny.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/gothic_trim/metalsupport4h_shiny.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_trim/metalsupport4j_trans
{
	qer_editorimage textures/gothic_trim/metalsupport4j.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/metalsupport4j.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/gothic_trim/metlsupport4i_shiney
{
	qer_editorimage textures/gothic_trim/xmetalsupport4i_alpha.tga
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/gothic_trim/xmetalsupport4i_alpha.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_trim/pitted_rust_nonsolid
{
	qer_editorimage textures/gothic_trim/pitted_rust.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/pitted_rust.tga
		rgbGen identity
		blendfunc filter	
	}
}

textures/gothic_trim/pitted_rust2_trans
{
	qer_editorimage textures/gothic_trim/pitted_rust2.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/pitted_rust2.tga
		rgbGen identity
		blendfunc filter	
	}
}

textures/gothic_trim/pitted_rust3_32
{
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_trim/pitted_rust3.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_trim/pitted_rust3_32_trans
{
	surfaceparm nonsolid
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_trim/pitted_rust3.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_trim/pitted_rust3_black_nonsolid
{
	qer_editorimage textures/gothic_trim/pitted_rust3_black.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/pitted_rust3_black.tga
		rgbGen identity
		blendfunc filter	
	}
}

textures/gothic_trim/pitted_rust3_noshadow
{
	surfaceparm trans
	{
		map $lightmap
		rgbgen identity
	}
	{
		map textures/gothic_trim/pitted_rust3.tga
		blendfunc filter
		rgbgen identity
	}
}

textures/gothic_trim/pitted_rust3_trans
{
	qer_editorimage textures/gothic_trim/pitted_rust3.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/pitted_rust3.tga
		rgbGen identity
		blendfunc filter	
	}
}

textures/gothic_trim/pitted_rust3_vertex
{
	surfaceparm pointlight
	{
		map textures/gothic_trim/pitted_rust3.tga
		rgbgen vertex
	}
}

textures/gothic_trim/supportborderside_shiney
{
	qer_editorimage textures/gothic_trim/xsupportborderside_shiney.tga
	{
		map $lightmap
		rgbgen identity      
	}
	{
		map textures/gothic_trim/xsupportborderside_shiney.tga
		blendfunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/gothic_trim/tongue_bone
{
	{	
		map $lightmap
		rgbGen identity
	}
	{
		map textures/gothic_trim/tongue_bone.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/gothic_trim/tongue_bone.blend.tga
		blendfunc add
		rgbGen wave sin 0.5 0.5 0 0.2
	}
}

textures/gothic_trim/x_noblight
{
	q3map_lightimage textures/gothic_trim/x_noblightfx.tga
	q3map_surfacelight 100
	{
		map textures/sfx/firegorre2.tga       
		tcmod scroll .1 1
		tcmod scale 1 1
	}  
	{
		map textures/gothic_trim/x_noblight.tga
		blendfunc blend
		rgbGen identity
	} 
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
	{
		map textures/gothic_trim/x_noblightfx.tga
		blendfunc add
		rgbGen wave sin .5 .5 0 .1
	} 
}

textures/gothic_trim/zinc_grate
{
	surfaceparm	metalsteps		
	cull none
	{
		map textures/gothic_trim/zinc_grate.tga
		blendfunc GL_ONE GL_ZERO
		rgbGen identity
		alphaFunc GT0
		depthWrite
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
		depthFunc equal
	}
}

textures/gothic_trim/zinc_grate_flat
{	
	qer_editorimage textures/gothic_trim/zinc_grate.tga
	surfaceparm	metalsteps
	{
		map $lightmap
		rgbGen identity
	}	
	{
		map textures/gothic_trim/zinc_grate.tga
		blendfunc filter
	}
}

textures/gothic_trim/zinc_shiny
{   
    qer_editorimage textures/gothic_trim/zinc_shiny.tga
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

textures/gothic_trim/zinc_shiny_trans
{   
		qer_editorimage textures/gothic_trim/zinc_shiny.tga
		surfaceparm nonsolid
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