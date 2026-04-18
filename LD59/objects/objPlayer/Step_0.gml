if (gamepad_button_check(0, gp_shoulderr) || mouse_check_button(mb_left)) {
	beamOn = true	
	if (beam = noone)
		beam = instance_create_layer(x, y, "Instances", whichBeam)
} else {
	beamOff = false	
}

if (beamOn && !beamComplete) {
	
	beamLength = beamLength + beam.beamSpeed	

	if (beamLength > beam.maxLength) {
		beamComplete = true
		beamLength = beam.maxLength
	}
	
} else if (!beamOn && beam != noone) {
	beamLength = beamLength - beam.beamSpeed	
	if (beamLength <= 0) {
		beam = noone
		instance_destroy(beam)
	}
}