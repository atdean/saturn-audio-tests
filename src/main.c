#include <jo/jo.h>

void my_draw(void)
{
	jo_sprite_draw3D(0, 0, 0, 500);
}

void jo_main(void)
{
	jo_core_init(JO_COLOR_Black);
	jo_sprite_add_tga("TEX", "SONIC.TGA", JO_COLOR_Transparent);
	jo_core_add_callback(my_draw);
	jo_core_run();
}