
// IF player is holding down a button, turn beam on and create an instance if one doesn't exist
if (gamepad_button_check(0, gp_shoulderr) || mouse_check_button(mb_left)) {
	beamOn = true	
	if (beam = noone)
		beam = instance_create_layer(x, y, "Instances", whichBeam)
		
		
} else {
	//If player is not holding down a button, turn the beam off
	beamOn = false	
}


//If beam is on and not done
if (beamOn && !beamComplete) {
	/* This should only happen if player is holding down button, 
	beam has not hit anything, and beam is not at max length */
	
	//Make beam longer
	beamLength = beamLength + beam.beamSpeed	

	//If at or longer than max length, complete beam and set to max length
	if (beamLength >= beam.maxLength) {
		beamComplete = true
		//beamLength = beam.maxLength
	}
	
//If beam is not on and beam instance exists
} else if (!beamOn && beam != noone) {
	//This should happen if they let go of the button and beam hasn't gotten to length 0 yet
	
	//Reduce beam length
	beamLength = beamLength - beam.beamSpeed
	//Since length is < maximum, beam is no longer complete
	beamComplete = false
	
	//If <= 0 remove beam instance
	if (beamLength <= 0) {
		instance_destroy(beam)
		beam = noone		
	}
}

//Does the beam exist at all?
if (beam != noone && beamLength > 0) {
	
	if (mouse_check_button(mb_left)) {
		//If mouse is pressed, point towaqrds mouse
		beamDir = point_direction(0, 0, mouse_x, mouse_y)
		//show_debug_message(string(mouse_x) + ", " + string(mouse_y) + " = " + string(beamDir))
	} else if (gamepad_button_check(0, gp_shoulderr)) {
		//If should button pressed, aim based on the direction the joystick is pushed
		var haxis = gamepad_axis_value(0, gp_axislh);
		var vaxis = gamepad_axis_value(0, gp_axislv);
		beamDir = point_direction(0, 0, haxis, vaxis);
	}
	
	//Only turn on for debugging if necessary
	//beamDir = 0
	
	//Set the target position for the beam based on the length/direction
	with (beam) {
		targetX = lengthdir_x(other.beamLength, other.beamDir)
		targetY = lengthdir_y(other.beamLength, other.beamDir)
	}

}

show_debug_message(string(mouse_x) + ", " + string(mouse_y) + " = " + string(beamDir))
with (beam) 
	show_debug_message(string(targetX) + ", " + string(targetY) + " beam")
show_debug_message("dir = " + string(beamDir) + ", length = " + string(beamLength))