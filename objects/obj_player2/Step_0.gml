var currentSpeed = isBoosted ? boostSpeed : movementSpeed;

if (room == rm_game3) {
    // Check if obj_player2 is on obj_lines
    if (!place_meeting(x, y, obj_lines)) {
        // If not on obj_lines, reset position
        //obj_player2.x = 32;
        //obj_player2.y = 1056;
		//fading = true;
		//fadeAlpha = 0;
		room_goto(room);
    } else {
        // Movement logic when on obj_lines
        if (keyboard_check(ord("S"))) {
            obj_player2.y += currentSpeed;
        }
        if (keyboard_check(ord("D"))) {
            obj_player2.x += currentSpeed
			image_xscale = 2;
        }
        if (keyboard_check(ord("W"))) {
            obj_player2.y -= currentSpeed;
			image_xscale = 2;
        }
        if (keyboard_check(ord("A"))) {
            obj_player2.x -= currentSpeed;
            image_xscale = -2;
        }

        // Arrow key movement logic here, similar to above, ensuring it's within the obj_lines check

        // Rotation interaction with obj_lines
        if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("Z"))) {
            with (instance_nearest(x, y, obj_lines)) {
                image_angle += 90;
            }
        }
    }

    // Additional game logic...
    if (keyboard_check(ord("R"))) {
        room_restart();
    }

    if (flashAlpha > 0) {
        flashAlpha -= 0.05;
    }

    if (isBoosted) {
        boostDuration -= 1;
        if (boostDuration <= 0) {
            isBoosted = false;
        }
    }
}
