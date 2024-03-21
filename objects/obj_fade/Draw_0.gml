if (fading) {
    // Set the transparency
    draw_set_alpha(alpha);
    // Draw a black rectangle over the entire screen
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    // Reset alpha to default
    draw_set_alpha(1);
}

if (fading) {
    alpha -= fadeSpeed;
    if (alpha <= 0) {
        fading = false;
        alpha = 0; // Ensure alpha does not go below 0
    }
}