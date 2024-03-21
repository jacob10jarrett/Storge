timer += 1;

if (timer >= (room_speed / textSpeed)) {
    if (currentCharIndex < string_length(dialogueText)) {
        currentCharIndex += 1;
    }
    timer = 0; 
}

if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) {
    room_goto(rm_game2); 
	audio_stop_sound(snd_song2);
	audio_play_sound(snd_song1, false, 1);
}


