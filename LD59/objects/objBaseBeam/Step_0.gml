///Check for collision with various things

//If you collide with a moving platform
/*if (collision_line(x, y, targetX, targetY, all, true, true)) {

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
}*/

platforms = physics_raycast(x, y, targetX, targetY, objPlatformMoving, true, 1.05)


with (objPlatformMoving) {
	isPowered = false
}

for (var i = 0; i < array_length(platforms); i++) {
	count = count + 1
	with (platforms[i].instance) {
		if physics_get_density(self.bound_fix) == 0 {
			show_debug_message("changing fixture")
			//physics_remove_fixture(self.id, self.bound_fix)
			//bound_fix = scrCreateMovingPlatformFixture(self.id)
	//		physics_apply_impulse(x, y, xSpeed, ySpeed)
			scrMovePlatform(id)
		}
	}
}

fans = physics_raycast(x, y, targetX, targetY, objFan, true, 1.05)

for (var i = 0; i < array_length(fans); i++) {
	count = count + 1
	with (fans[i].instance) {
		scrFanPush(self.id)
	}
}