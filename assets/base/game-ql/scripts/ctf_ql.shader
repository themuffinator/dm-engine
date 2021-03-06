
textures/ctf/blue_lacquer
{
	{
		map textures/effects/tinfx2.tga
		rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/ctf/blue_lacquer.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/ctf/red_lacquer
{
	{
		map textures/effects/tinfx2.tga
		rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}
	{
		map textures/ctf/red_lacquer.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbGen identity
	}
}

textures/ctf/blue_telep
{ 
    cull disable	
    surfaceparm nomarks
    surfaceparm trans
	nopicmip
    {
        clampmap textures/ctf/blue_telep.tga
		blendfunc add
        tcmod rotate 327
        rgbGen identity
	}
    {
		clampmap textures/ctf/blue_telep2.tga
		blendfunc add
        tcmod rotate -211
        rgbGen identity
    }
    {
	    clampmap textures/ctf/telep.tga
		alphaFunc GE128
        depthWrite
        tcmod rotate 20
	    rgbGen identity
	}
    {
	    clampmap textures/ctf/telep.tga
		alphaFunc GE128
        depthWrite
        tcMod stretch sin .7 0 0 0
        tcmod rotate -20
        rgbGen identity
	}
    {
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/ctf/clangdark_ow3_b
{    
	qer_editorimage textures/base_floor/clangdark_ow3.tga
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

textures/ctf/clangdark_ow3_r
{    
	qer_editorimage textures/base_floor/clangdark_ow3.tga
	{
		map textures/sfx/proto_zzzt.tga
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

textures/ctf/clangdarkspot_noclang
{
	qer_editorimage textures/base_floor/clangdarkspot.tga
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

textures/ctf/ctf_arch_b_shiny
{      
     qer_editorimage textures/ctf/ctf_arch_b.tga
	{
		map textures/ctf/ctf_arch_b.tga
        blendfunc GL_ONE GL_ZERO
		rgbGen identity
	} 
    {
        map textures/sfx/specular.tga
        blendfunc add
        tcGen environment
        tcmod scale 10 10
        rgbGen identity
	}  
    {
		map textures/ctf/ctf_arch_b.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
		blendfunc filter
		rgbGen identity
	}    
}

textures/ctf/ctf_arch_r_shiny
{
	qer_editorimage textures/ctf/ctf_arch_r.tga      
    {
		map textures/ctf/ctf_arch_r.tga
        blendfunc GL_ONE GL_ZERO
		rgbGen identity
	} 
    {
        map textures/sfx/specular.tga
        blendfunc add
        tcGen environment
        tcmod scale 10 10
        rgbGen identity
	}  
    {
		map textures/ctf/ctf_arch_r.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
		blendfunc filter
		rgbGen identity
	}     
}

//short flag
textures/ctf/ctf_blueflag
{
    tessSize 64
    deformVertexes wave 194 sin 0 3 0 .4
    deformVertexes normal .5 .1
    surfaceparm nomarks
    cull none
    {
		map textures/ctf/ctf_blueflag.tga
		rgbGen identity
	}
    {
		map textures/effects/redflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .1 .7
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_blueflag.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
      	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

textures/ctf/ctf_blueflag_nonsolid
{
	qer_editorImage textures/ctf/ctf_blueflag.tga
    tessSize 64
    deformVertexes wave 194 sin 0 3 0 .4
    deformVertexes normal .5 .1
    surfaceparm nomarks
	surfaceparm nonsolid
    cull none
    {
		map textures/ctf/ctf_blueflag.tga
		rgbGen identity
	}
    {
		map textures/effects/redflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .1 .7
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_blueflag.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
      	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

//long flag
textures/ctf/ctf_blueflag2
{
    tessSize 64
    deformVertexes wave 194 sin 0 3 0 .4
    deformVertexes normal .5 .1
    surfaceparm nomarks
	surfaceparm nonsolid
    cull none
    {
		map textures/ctf/ctf_blueflag2.tga
		rgbGen identity
	}
    {
		map textures/effects/redflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .1 .7
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_blueflag2.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
      	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

//long flag
textures/ctf/ctf_blueflag2_still
{
	qer_editorimage textures/ctf/ctf_blueflag2.tga
	surfaceparm alphashadow
	surfaceparm nonsolid
    surfaceparm nomarks
    cull none
    {
		map textures/ctf/ctf_blueflag2.tga
		rgbGen identity
	}
    {
		map textures/effects/redflagmap.tga // Oddly backwards
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .001 .007
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_blueflag2.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
       	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

//medium flag
textures/ctf/ctf_blueflag3
{
    tessSize 64
    deformVertexes wave 194 sin 0 3 0 .4
    deformVertexes normal .5 .1
    surfaceparm nomarks
    cull none
    {
		map textures/ctf/ctf_blueflag3.tga
		rgbGen identity
	}
    {
		map textures/effects/redflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .1 .7
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_blueflag3.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
      	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

//short flag
textures/ctf/ctf_orangeflag
{
    tessSize 64
    deformVertexes wave 194 sin 0 3 0 .4
    deformVertexes normal .3 .2
    surfaceparm nomarks
    cull none
    {
		map textures/ctf/ctf_orangeflag.tga
		rgbGen identity
	}
    {
		map textures/effects/blueflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .1 .7
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_orangeflag.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
      	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

//short flag
textures/ctf/ctf_redflag
{
    tessSize 64
    deformVertexes wave 194 sin 0 3 0 .4
    deformVertexes normal .3 .2
    surfaceparm nomarks
    cull none
    {
		map textures/ctf/ctf_redflag.tga
		rgbGen identity
	}
    {
		map textures/effects/blueflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .1 .7
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_redflag.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
      	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

textures/ctf/ctf_redflag_nonsolid
{
	qer_editorImage textures/ctf/ctf_redflag.tga
    tessSize 64
    deformVertexes wave 194 sin 0 3 0 .4
    deformVertexes normal .3 .2
    surfaceparm nomarks
	surfaceparm nonsolid
    cull none
    {
		map textures/ctf/ctf_redflag.tga
		rgbGen identity
	}
    {
		map textures/effects/blueflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .1 .7
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_redflag.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
      	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

//long flag
textures/ctf/ctf_redflag2
{
    tessSize 64
    deformVertexes wave 194 sin 0 3 0 .4
    deformVertexes normal .3 .2
    surfaceparm nomarks
	surfaceparm nonsolid
    cull none
    {
		map textures/ctf/ctf_redflag2.tga
		rgbGen identity
	}
    {
		map textures/effects/blueflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .1 .7
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_redflag2.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
       	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

textures/ctf/ctf_redflag2_still
{
	qer_editorimage textures/ctf/ctf_redflag2.tga
	surfaceparm alphashadow
	surfaceparm nonsolid
    surfaceparm nomarks
    cull none
    {
		map textures/ctf/ctf_redflag2.tga
		rgbGen identity
	}
    {
		map textures/effects/blueflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .001 .007
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_redflag2.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
       	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

//medium flag
textures/ctf/ctf_redflag3
{
    tessSize 64
    deformVertexes wave 194 sin 0 3 0 .4
    deformVertexes normal .3 .2
    surfaceparm nomarks
    cull none
    {
		map textures/ctf/ctf_redflag3.tga
		rgbGen identity
	}
    {
		map textures/effects/blueflagmap.tga
        tcGen environment
        tcmod scale 9 3
        tcmod scroll .1 .7
        blendfunc add
        rgbGen identity
	}
    {
		map textures/ctf/ctf_redflag3.tga
        blendfunc blend
		rgbGen identity
	}
    {
		map $lightmap
        blendfunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
    {
       	map textures/sfx/shadow.tga
        tcGen environment 
        blendfunc filter
        rgbGen identity
	}
}

textures/ctf/ctf_tower_bluefin_shiny
{              
	qer_editorimage textures/ctf/ctf_tower_bluefin.tga 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/ctf_tower_bluefin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/ctf_tower_redfin_shiny
{              
	qer_editorimage textures/ctf/ctf_tower_redfin.tga 
	{
		map $lightmap
		rgbGen identity
	}
    {
		map textures/ctf/ctf_tower_redfin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/killblockctf_b
{
	qer_editorimage   textures/gothic_block/killblockgeomtrn.tga
    {
		map textures/sfx/fire_ctfblue.tga
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

textures/ctf/killblockctf_r
{
   qer_editorimage   textures/gothic_block/blocks15cgeomtrn.tga
    {
		map textures/sfx/fire_ctfred.tga
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

textures/ctf/metalbase09_bluekillblock_shiny
{              
	qer_editorimage textures/ctf/metalbase09_bluekillblock.tga 
	{
		map $lightmap
		rgbGen identity
	}
    {
		map textures/ctf/metalbase09_bluekillblock.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/padwall_r
	{
	q3map_surfacelight 100
	q3map_lightimage textures/ctf/padwallglow_r.tga
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
		map textures/ctf/padwallglow_r.tga
		blendfunc add
		rgbgen wave sin 0 1 0 .5
		tcmod scale 1 .05
		tcmod scroll 0 1
	}
}

textures/ctf/painted_concrete_blue
{
    qer_editorimage textures/ctf/painted_concrete_blue.tga
    {
		rgbGen identity
		map $lightmap
	}
	{
		map textures/ctf/painted_concrete_blue.tga
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
		map textures/ctf/painted_concrete_blue.tga
		blendfunc filter
		rgbGen identity
	}              
}

textures/ctf/painted_concrete_red
{
    qer_editorimage textures/ctf/painted_concrete_red.tga
    {
		rgbGen identity
		map $lightmap
	}
	{
		map textures/ctf/painted_concrete_red.tga
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
		map textures/ctf/painted_concrete_red.tga
		blendfunc filter
		rgbGen identity
	}            
}

textures/ctf/red_scary4_cfin
{       
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/red_scary4_cfin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/red_scary4_csansfacefin
{              
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/red_scary4_csansfacefin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/red_scary4_d3fin
{              
	{
		map $lightmap
		rgbGen identity
	}
    {
		map textures/ctf/red_scary4_d3fin.tga
		blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/red_telep
{ 
    cull disable	
    surfaceparm nomarks
    surfaceparm trans
	nopicmip
    {
	        
		clampmap textures/ctf/red_telep.tga
		blendfunc add
        tcmod rotate 327
        rgbGen identity
	}
    {
	    clampmap textures/ctf/red_telep2.tga
		blendfunc add
        tcmod rotate -211
        rgbGen identity
    }
    {
	    clampmap textures/ctf/telep.tga
		alphaFunc GE128
        tcmod rotate 20
	    rgbGen identity
	}
    {
	    clampmap textures/ctf/telep.tga
		alphaFunc GE128
        tcMod stretch sin .7 0 0 0
        tcmod rotate -20
        rgbGen identity
	}
    {
		map $lightmap
		rgbGen identity
		blendfunc filter
		depthFunc equal
	}
}

textures/ctf/tallblue_1L_fin_shiny
{              
	qer_editorimage textures/ctf/tallblue_1L_fin.tga 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/tallblue_1L_fin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/tallblue_1R_fin_shiny
{              
qer_editorimage textures/ctf/tallblue_1R_fin.tga 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/tallblue_1R_fin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/tallblue_2_fin
{              
	{
		map $lightmap
		rgbGen identity
	}
    {
		map textures/ctf/tallblue_2_fin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/tallblue_2b_fin
{              
	{
		map $lightmap
		rgbGen identity
	}
    {
		map textures/ctf/tallblue_2b_fin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/tallblue_4bsmall_fin
{              
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/tallblue_4bsmall_fin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/tallblue_4c_fin_shiny
{              
	qer_editorimage textures/ctf/tallblue_4c_fin.tga 
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/tallblue_4c_fin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/tallblue_5esmallb_fin
{              
	{
		map $lightmap
		rgbGen identity
	}
    {
		map textures/ctf/tallblue_5esmallb_fin.tga
        blendfunc GL_dst_color GL_SRC_ALPHA
		alphagen lightingspecular
		rgbGen identity
	}
}

textures/ctf/test2_blue
{
	qer_editorimage textures/ctf/test2.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/test2.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/ctf/test2_red
{
	qer_editorimage textures/ctf/test2_r.tga
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/test2_r.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/ctf/test2_r_trans
{
	qer_editorimage textures/ctf/test2_r.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	
	}
	{
		map textures/ctf/test2_r.tga
		rgbGen identity
		blendfunc filter
	}
}

textures/ctf/test2_trans
{
	qer_editorimage textures/ctf/test2.tga
	surfaceparm nonsolid
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/ctf/test2.tga
		rgbGen identity
		blendfunc filter
	}
}