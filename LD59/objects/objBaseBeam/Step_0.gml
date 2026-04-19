///Check for collision with various things

//If you collide with a moving platform
if (collision_line(x, y, targetX, targetY, other, true, true)) {

	//make it moving
	with (other) {
		if physics_get_density(bound_fix) == 0 {
			show_debug_message("changing fixture")
			physics_remove_fixture(self.id, bound_fix)
			bound_fix = scrCreateMovingPlatformFixture(self.id)
	//		physics_apply_impulse(x, y, xSpeed, ySpeed)
			scrMovePlatform(id)
		}
	
	}
}