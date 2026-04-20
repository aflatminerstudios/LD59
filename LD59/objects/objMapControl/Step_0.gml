live_auto_call;

#region Cinematic view & Transition
var cinematicLayerID = layer_get_id("CinematicAssets");
if (showCinematic) {
	//PRINT("Showing Cinematic");
	layer_set_visible(cinematicLayerID, true);
	if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_anykey)) {
		// Start transition to show the schematic
		showCinematic = false
		transitionTimeRemaining = transitionTime;
	}
}

if (!showCinematic && transitionTimeRemaining > 0) {
	transitionTimeRemaining -= 1;
	layer_set_visible(cinematicLayerID, true);
	
	
	//PRINT("Fading Cinematic, timeRemaining = " + string(transitionTimeRemaining));
	var alpha = (transitionTimeRemaining / transitionTime);
	
	var cinematicElements = layer_get_all_elements(cinematicLayerID);
	
	for (var i = 0; i < array_length(cinematicElements); i++) {
		// Assume each piece is a sprite asset for now
		var element = cinematicElements[i];
		var prevAlpha = layer_sprite_get_alpha(element);
		layer_sprite_alpha(element, alpha);
	}
	
	if (transitionTimeRemaining <= 0) {
		layer_set_visible(cinematicLayerID, false);	
	}
}
#endregion


#region Level Selection
	
var schematicLayerID = layer_get_id("SchematicAssets");

var leaderLine1 = layer_sprite_get_id(schematicLayerID, "leaderLine1");
var leaderLine2 = layer_sprite_get_id(schematicLayerID, "leaderLine2");
var leaderLine3 = layer_sprite_get_id(schematicLayerID, "leaderLine3");
var leaderLine4 = layer_sprite_get_id(schematicLayerID, "leaderLine4");
var leaderLine5 = layer_sprite_get_id(schematicLayerID, "leaderLine5");

var leaderLineArray = [leaderLine1, leaderLine2, leaderLine3, leaderLine4, leaderLine5];

for (var i = 0; i < 5; i++) {
	if(selectedLevel = i+1) {
		layer_sprite_alpha(leaderLineArray[i], 1.0);	
	} else {
		layer_sprite_alpha(leaderLineArray[i], 0.0);
	}
}

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
