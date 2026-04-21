live_auto_call;

if (enable_debug_controls) {
	if (keyboard_check_pressed(ord("1")))
		room_goto(roomLevel1)
	
	if (keyboard_check_pressed(ord("2")))
		room_goto(roomLevel2)
	
	if (keyboard_check_pressed(ord("3")))
		room_goto(roomLevel3)
	
	if (keyboard_check_pressed(ord("4")))
		room_goto(roomLevel4)
	
	if (keyboard_check_pressed(ord("5")))
		room_goto(roomLevel5)
}