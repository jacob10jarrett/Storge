if (visible) {
    var viewport_x = camera_get_view_x(view_camera[0]);
    var viewport_y = camera_get_view_y(view_camera[0]);
    var viewport_width = camera_get_view_width(view_camera[0]);
    var viewport_height = camera_get_view_height(view_camera[0]);

    var text_x = viewport_x + (viewport_width * 0.5);
    var text_y = viewport_y + (viewport_height * 0.5);

    var text_width = string_width(text);
    draw_set_halign(fa_center); 
    draw_set_valign(fa_middle); 
    draw_text(text_x, text_y, text);

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
