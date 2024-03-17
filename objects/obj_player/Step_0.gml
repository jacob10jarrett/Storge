if (isBoosted) {
    // Correctly handle acceleration and then deceleration
    if (boostDuration > room_speed) {
        // Accelerate for the first half of the duration
        currentSpeed += acceleration;
    } else {
        // Start decelerating after halfway through
        currentSpeed -= deceleration;
    }

    // Clamp currentSpeed between movementSpeed and boostSpeed
    currentSpeed = clamp(currentSpeed, movementSpeed, boostSpeed);

    // Decrease the duration of the boost each step
    boostDuration--;
    if (boostDuration <= 0) {
        isBoosted = false;
        currentSpeed = movementSpeed; // Ensure this resets speed to normal
    }
}

if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("Z"))) {
	with (instance_nearest(x, y, obj_lines)) {
	//audio_play_sound(snd_rotate, 9, false)
	image_angle += 90;
	}
}

if (keyboard_check(ord("S"))){
    obj_player.y += currentSpeed;
}
if (keyboard_check(ord("D"))){
    obj_player.x += currentSpeed;
    image_xscale = 4;
}
if (keyboard_check(ord("W"))){
    obj_player.y -= currentSpeed;
}
if (keyboard_check(ord("A"))){
    obj_player.x -= currentSpeed;
    image_xscale = -4;
}

if (keyboard_check(vk_up)){
    obj_player.y -= currentSpeed;
}
if (keyboard_check(vk_left)){
    obj_player.x -= currentSpeed;
}
if (keyboard_check(vk_right)){
    obj_player.x += currentSpeed;
}
if (keyboard_check(vk_down)){
    obj_player.y += currentSpeed;
}

if keyboard_check(ord("R")){
	room_restart();
}

if (flashAlpha > 0){
	
	flashAlpha -= 0.05;
}

if (isBoosted) {
    boostDuration -= 1;
    if (boostDuration <= 0) {
        isBoosted = false;
    }
}