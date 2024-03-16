draw_self();
flashAlpha= 1;
if (flashAlpha > 0){
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, 
		flashColor, flashAlpha);
		
		shader_reset();
}
obj_player.x -= fear;
