live_auto_call;

#region Cinematic view & Transition
if (showCinematic) {
	//PRINT("Showing Cinematic");
	if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_anykey)) {
		// Start transition to show the schematic
		showCinematic = false
		transitionTimeRemaining = transitionTime;
	}
}

if (!showCinematic && transitionTimeRemaining > 0) {
	transitionTimeRemaining += -1;
	//PRINT("Fading Cinematic, timeRemaining = " + string(transitionTimeRemaining));
	var alpha = (transitionTimeRemaining / transitionTime);
	
	var cinematicElements = layer_get_all_elements(layer_get_id("CinematicAssets"));
	
	for (var i = 0; i < array_length(cinematicElements); i++) {
		// Assume each piece is a sprite asset for now
		var element = cinematicElements[i];
		var prevAlpha = layer_sprite_get_alpha(element);
		layer_sprite_alpha(element, alpha);
	}
}
#endregion


#region Level Selection
	


#endregion




//if (mouse_check_button_pressed(mb_left)) {
//	// If they click the credits icon, go to that, otherwise go to the map screen
//	if (collision_point(mouse_x, mouse_y, objTitleCreditsButton, false, false)) {
//		room_goto(roomCredits);
//	} else {
//		room_goto(roomMap);
//	}
//}

//if (keyboard_check_pressed(ord("C"))) {
//	room_goto(roomCredits);
//} else if (keyboard_check_pressed(vk_anykey)) {
//	room_goto(roomMap);
//}
