event_inherited()

if instance_number(objMacguffin) > 0
	dir = point_direction(x, y, objMacguffin.x, objMacguffin.y)
else
	dir = 0


if physics_test_overlap(x, y, dir, objMacguffin) && phy_speed_x < maxXSpeed
{
	//show_debug_message("Applying force, old x = " + string(phy_speed_x))
	
	//scrMovePlatform(self.id)
}

if (place_meeting(x, y, objPlatformBase)) {	
	isPowered = false	
}

//PRINT "Is powered " + string(isPowered) + ", " + string(count)

if (!isPowered) {
	
	path_speed = 0
		
	with (objMacguffin) {		
		
		if (joint != noone) {
			var anchor1x = physics_joint_get_value(joint, phy_joint_anchor_1_x)
			var anchor1y = physics_joint_get_value(joint, phy_joint_anchor_1_y)
			var anchor2x = physics_joint_get_value(joint, phy_joint_anchor_2_x)
			var anchor2y = physics_joint_get_value(joint, phy_joint_anchor_2_y)
			
			if (place_meeting(anchor1x, anchor1y, other.id) || place_meeting(anchor2x, anchor2y, other.id)) {			
			
				PRINT "Taking out joint"
				physics_joint_delete(joint)
				joint = noone
			}
		}
	}
	
}

if (path_position >= 1) {
	
	if (!completed) {
		pSpeed *= -1
		completed = true
	}
	with (objMacguffin) {
		PRINT "Removing joint"
		if (joint != noone) {
			physics_joint_delete(joint)
			joint = noone
			phy_position_y = other.y - other.sprite_height/2
		}
	}
}

if (completed && path_position <= 0.05) {
	completed = false
	pSpeed *= -1
}

