/*with (other) {
	if physics_get_density(bound_fix) == 0 {
		show_debug_message("changing fixture")
		physics_remove_fixture(self.id, bound_fix)
		bound_fix = scrCreateMovingPlatformFixture(self.id)
//		physics_apply_impulse(x, y, xSpeed, ySpeed)
		scrMovePlatform(id)
	}
	
}
*/


if (other.isPowered && self.joint == noone) {
	//show_debug_message("not setting joint")
	//other.joint = physics_joint_distance_create(self.id, other.id, self.x, self.y, other.x,other.y, false)
	//self.joint = physics_joint_rope_create(self.id, other.id, self.x, self.y, other.x, other.y, 2, false)
	//self.joint = physics_joint_rope_create(self.id, other.id, self.x, self.y + self.sprite_height / 2, other.x, other.y - other.sprite_height / 2, 1, false)
	//self.joint = physics_joint_distance_create(self.id, other.id, self.x, self.y + self.sprite_height / 2, other.x, other.y - other.sprite_height / 2,  false)
} else if (!other.isPowered && self.joint != noone) {
	//PRINT "deleting joint"
	physics_joint_delete(joint)
	joint = noone
	
}

