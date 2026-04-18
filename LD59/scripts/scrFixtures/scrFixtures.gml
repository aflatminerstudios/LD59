function scrCreatePlatformFixture(platform) {
	//For physics
	var _fix

	//create fixture
	_fix = physics_fixture_create()

	//set shape and other vairables for fixture
	physics_fixture_set_box_shape(_fix, 10, 10)
	physics_fixture_set_density(_fix, 0)
	physics_fixture_set_restitution(_fix, 0.25)
	physics_fixture_set_awake(_fix, true)
	physics_fixture_set_kinematic(_fix)
	physics_fixture_set_linear_damping(_fix, 0.5)

	//Bind and store fixture
	platform.bound_fix = physics_fixture_bind(_fix, platform.id)	
	
	physics_fixture_delete(_fix)
	return bound_fix
}

function scrCreateMovingPlatformFixture(platform) {
	//For physics
	var _fix

	//create fixture
	_fix = physics_fixture_create()

	//set shape and other vairables for fixture
	physics_fixture_set_box_shape(_fix, 10, 10)
	physics_fixture_set_density(_fix, 0.2)
	physics_fixture_set_restitution(_fix, 0.25)
	physics_fixture_set_awake(_fix, true)
	physics_fixture_set_kinematic(_fix)
	physics_fixture_set_linear_damping(_fix, 0.5)

	//Bind and store fixture
	platform.bound_fix = physics_fixture_bind(_fix, platform.id)	
	
	physics_fixture_delete(_fix)
	return bound_fix
}
