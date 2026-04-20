live_auto_call;


if (mouse_check_button_pressed(mb_left)) {
	// If they click the credits icon, go to that, otherwise go to the map screen
	if (collision_point(mouse_x, mouse_y, objTitleCreditsButton, false, false)) {
		room_goto(roomCredits);
	} else {
		room_goto(roomMap);
	}
}

if (keyboard_check_pressed(ord("C"))) {
	room_goto(roomCredits);
} else if (keyboard_check_pressed(vk_anykey)) {
	room_goto(roomMap);
}
