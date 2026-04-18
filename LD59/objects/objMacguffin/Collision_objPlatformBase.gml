with (other) {
	if physics_get_density(bound_fix) == 0 {
		physics_remove_fixture(self.id, bound_fix)
		bound_fix = scrCreateMovingPlatformFixture(self.id)
		physics_apply_impulse(x, y, 10, 10)
	}
	
}