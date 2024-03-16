if (increasing) {
    alpha += 0.01;
    if (alpha >= 1) increasing = false;
} else {
    alpha -= 0.01;
    if (alpha <= 0) increasing = true;
}

if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_anykey)) {
    instance_destroy(); 
}