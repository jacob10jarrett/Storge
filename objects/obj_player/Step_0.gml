var currentSpeed = isBoosted ? boostSpeed : movementSpeed;

var left = (keyboard_check(vk_left) || keyboard_check(ord("A")));
var up = (keyboard_check(vk_up) || keyboard_check(ord("W")));
var down = (keyboard_check(vk_down) || keyboard_check(ord("S")));
var right = (keyboard_check(vk_right) || keyboard_check(ord("D")));

if (down){
    obj_player.y += currentSpeed;
}
if (right){
    obj_player.x += currentSpeed;
    image_xscale = 4;
}
if (up){
    obj_player.y -= currentSpeed;
}
if (left){
    obj_player.x -= currentSpeed;
    image_xscale = -4;
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

if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("Z"))) {
	with (instance_nearest(x, y, obj_lines)) {
	//audio_play_sound(snd_rotate, 9, false)
	image_angle += 90;
	}
}