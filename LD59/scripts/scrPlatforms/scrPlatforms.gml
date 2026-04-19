
live_auto_call;

/// @function scrMovePlatform(platform)
/// @description move a moving platform
/// @param {Id.Instance} platform  which platform to set this on
/// @return {Fixture ID}

function scrMovePlatform(platform){
	//physics_apply_impulse(x, y, xSpeed, ySpeed)
	//physics_apply_torque(15)
	//physics_apply_force(x, y, xForce, yForce)
	
	
	//platform.phy_speed_x = xSpeed
//	platform.phy_speed_y = ySpeed

with platform {
	isPowered = true
	path_speed = pSpeed
	
}
	
}


/// @function scrStopPlatform(platform)
/// @description stop a moving platform
/// @param {Id.Instance} platform  which platform to set this on
/// @return {Fixture ID}

function scrStopPlatform(platform) {
	with (platform) {
		path_speed = 0	
	}
}