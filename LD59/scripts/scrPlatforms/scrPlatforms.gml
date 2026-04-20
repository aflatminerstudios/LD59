
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
	
	
	if physics_test_overlap(x, y-5, 0, objMacguffin) {
	//Set joint if it is not set
		with (objMacguffin) {
			//PRINT string(self.joint) + " is " + string(noone) + "?"
			if (self.joint == noone) {
				PRINT "Setting joint"
				//joint = physics_joint_distance_create(self.id, other.id, self.x, self.y + self.sprite_height / 2, other.x, other.y - other.sprite_height / 2,  false)	
				joint = physics_joint_rope_create(self.id, other.id, self.x, self.y + self.sprite_height / 2, other.x, other.y - other.sprite_height / 2,  2, false)	
			}
		}
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
	
	with (objMacguffin) {
		
		if (joint != noone) {
			PRINT "Deleting joint"
			physics_joint_delete(joint)
			joint = noone
		}
	}
}