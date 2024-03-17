if (shouldBlink) {
    sprite_index = spr_turtle_blinking; 
    }

if (x > 0 && !inCutscene) {
    inCutscene = true;
    cutsceneStep = 1; // Start the cutscene at step 1
}

if (inCutscene) {
    switch(cutsceneStep) {
        case 1:
            targetX = 504; // First target coordinates
            targetY = 672;
            moveTowardsPoint(targetX, targetY, .3); // Custom script to move towards a point
            if (x == targetX && y == targetY) {
                cutsceneStep = 2; // Move to next step when target is reached
            }
            break;

        case 2:
            targetX = 2106; // Second target coordinates
            targetY = 696;
            moveTowardsPoint(targetX, targetY, .3); // Move towards the second point
            if (cutsceneStep == 2) {
                moveTowardsPoint(targetX, targetY, .3); 
            }
            break;

       case 3:
		    // Lock position only if transitioning into case 3 for the first time
		    if (cutsceneStep == 3) {
		        x = 2196; // Lock position
			    y = 696;
			    inCutscene = false; 
			    cutsceneStep = 0; // Reset cutscene step to prevent re-entry
			}
            break;
    }
}

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

if (!inCutscene) {

if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("Z"))) {
	with (instance_nearest(x, y, obj_lines)) {
	//audio_play_sound(snd_rotate, 9, false)
	image_angle += 90;
	}
}

if (keyboard_check(ord("S"))){
    obj_player3.y += currentSpeed;
}
if (keyboard_check(ord("D"))){
    obj_player3.x += currentSpeed;
    image_xscale = 4;
}
if (keyboard_check(ord("W"))){
    obj_player3.y -= currentSpeed;
}
if (keyboard_check(ord("A"))){
    obj_player3.x -= currentSpeed;
    image_xscale = -4;
}

if (keyboard_check(vk_up)){
    obj_player3.y -= currentSpeed;
}
if (keyboard_check(vk_left)){
    obj_player3.x -= currentSpeed;
}
if (keyboard_check(vk_right)){
    obj_player3.x += currentSpeed;
}
if (keyboard_check(vk_down)){
    obj_player3.y += currentSpeed;
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

}
