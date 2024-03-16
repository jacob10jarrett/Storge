//draw_surface(application_surface, 0, 0);

if (surface_exists(surf_water) == false){

	surface_create(1024, 1024);
	
}

surface_set_target(surf_water);
draw_surface_stretched(application_surface, 0, 0, 1024, 1024);
surface_reset_target();

shader_set(shUnderwater);
shader_set_uniform_f(u_resolution_water, 1920.0, 1080.0);
shader_set_uniform_f(u_seconds_water, sec);

texture_set_stage(u_texture_water, surface_get_texture(surf_water));
draw_rectangle(0, 0, 1920,	1080, false);



shader_reset();


shader_set(shLight);

shader_set_uniform_f(u_resolution, 1920.0, 1080.0);
shader_set_uniform_f(u_seconds, sec);

draw_rectangle(0, 0, 1920,	1080, false);

shader_reset();
