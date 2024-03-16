if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) {
	audio_stop_sound(snd_underwater);
    room_goto(rm_game); 
}

dotTimer += 1;
if (dotTimer >= room_speed / 2) { 
    dotTimer = 0;
    dotCount += 1;
    if (dotCount > 3) {
        dotCount = 0;
    }
}