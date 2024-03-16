draw_set_halign(fa_center); 
draw_set_valign(fa_middle); 
draw_set_color(c_white); 
draw_set_font(fnt_titlescreen); 

var message = "Press any key";

for (var i = 0; i < dotCount; i++) {
    message += ".";
}


var x_pos = room_width / 2;
var y_pos = room_height / 2; 
draw_text(x_pos, y_pos, message);


