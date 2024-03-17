randomize();

var sprites = [spr_bottle, spr_plastic, spr_six_pack, spr_solo_cup, spr_straw];

sprite_index = sprites[irandom(array_length_1d(sprites) - 1)];

vspeed = 1;

x = irandom(room_width - sprite_width);

y = -sprite_height;