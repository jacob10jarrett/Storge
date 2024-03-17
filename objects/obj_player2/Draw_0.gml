draw_self();


if (flashAlpha > 0){
	shader_set(shFlash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, 
		flashColor, flashAlpha);
		
		shader_reset();
}


if (fading) {
    // Increase the alpha value to fade to black
    fadeAlpha += fadeSpeed;
    if (fadeAlpha > 1) {
        fadeAlpha = 1; // Cap the alpha at 1 to avoid over-fading
        fading = false; // Optionally stop the fading effect when it's fully opaque
        // You might want to trigger additional actions once the fade completes
    }

    // Draw the fade rectangle over the entire screen
    draw_set_color(c_black);
    draw_set_alpha(fadeAlpha);
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
    draw_set_alpha(1); // Reset alpha to default
}