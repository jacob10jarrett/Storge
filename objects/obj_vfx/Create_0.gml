application_surface_draw_enable(false);

u_resolution = shader_get_uniform(shLight, "iResolution");

u_seconds = shader_get_uniform(shLight, "iGlobalTime");

u_resolution_water = shader_get_uniform(shUnderwater, "iResolution");

u_seconds_water = shader_get_uniform(shUnderwater, "iGlobalTime");

u_texture_water = shader_get_sampler_index(shUnderwater, "tex_water");

surf_water = surface_create(1024, 1024);

sec = 0;

