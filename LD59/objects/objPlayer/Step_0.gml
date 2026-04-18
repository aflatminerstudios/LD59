if (gamepad_button_check(0, gp_shoulderr) || mouse_check_button(mb_left)) {
	beamOn = true	
} else {
	beamOff = false
}

if (beamOn && !beamComplete) {
	
	beamLength = beamLength + whichBeam.beamSpeed	

	if (beamLength > whichBeam.maxLength) {
		beamComplete = true
		beamLength = whichBeam.maxLength
	}
	
}