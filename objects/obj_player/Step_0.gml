if (keyboard_check(ord("S"))){
	obj_player.y += movementSpeed
}
if (keyboard_check(ord("D"))){
	obj_player.x += movementSpeed
	image_xscale = 4;
}
if (keyboard_check(ord("W"))){
	obj_player.y -= movementSpeed
}
if (keyboard_check(ord("A"))){
	obj_player.x -= movementSpeed
	image_xscale = -4;
}


if (keyboard_check(vk_up)){
obj_player.y -= 2

}if (keyboard_check(vk_left)){
obj_player.x -= 2

}if (keyboard_check(vk_right)){
obj_player.x += 2

}if (keyboard_check(vk_down)){

	obj_player.y += 2
}

if keyboard_check(ord("R")){
	room_restart();
}

if (flashAlpha > 0){
	
	flashAlpha -= 0.05;
}

