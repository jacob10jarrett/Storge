draw_set_color(textColor);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_titlescreen);

var wrappedText = string_copy(dialogueText, 1, currentCharIndex);
x = 960;
y = 540;
draw_text_ext(x, y, wrappedText, lineSpacing, maxLineWidth);