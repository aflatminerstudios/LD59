if instance_number(objMacguffin) > 0
	dir = point_direction(x, y, objMacguffin.x, objMacguffin.y)
else
	dir = 0


if physics_test_overlap(x, y, dir, objMacguffin) && phy_speed_x < maxXSpeed
{
	//show_debug_message("Applying force, old x = " + string(phy_speed_x))
	
	//scrMovePlatform(self.id)
}



if (!isPowered) {
	path_speed = 0	
}

if (path_position == 1) {
	with (objMacguffin) {
		PRINT "Removing joint"
		physics_joint_delete(joint)
	}
}