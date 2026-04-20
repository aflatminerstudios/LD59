live_auto_call;

if (keyboard_check_pressed(vk_anykey)) {
	room_goto(roomTitle);	
}

if (mouse_check_button_pressed(mb_left)) {
	room_goto(roomTitle);
}