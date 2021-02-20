textures/gothic_button/timbutton
{
	q3map_lightimage textures/gothic_button/timbutton2.tga
	q3map_surfacelight 10
	{
		map textures/gothic_button/timbutton.tga
	}
	{
		map $lightmap
		blendfunc filter
		rgbgen identity
	}
	{
		map textures/gothic_button/timbutton2.tga
		blendfunc add
		rgbgen wave sin .5 .5 0 1
	}
}