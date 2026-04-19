
/// @function scrCreatePlatformFixture(platform)
/// @description set a basic platform fixture
/// @param {Id.Instance} platform  which platform to set this on
/// @return {Fixture ID}
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



/// @function scrCreateMovingPlatformFixture(platform)
/// @description set a moving platform fixture
/// @param {Id.Instance} platform  which platform to set this on
/// @return {Fixture ID}
function scrCreateMovingPlatformFixture(platform, d = 0.2) {
	//For physics
	var _fix

	//create fixture
	_fix = physics_fixture_create()

	//set shape and other vairables for fixture
	physics_fixture_set_box_shape(_fix, 10, 10)
	physics_fixture_set_density(_fix, d)
	physics_fixture_set_restitution(_fix, 0.25)
	physics_fixture_set_awake(_fix, true)
	physics_fixture_set_kinematic(_fix)
	physics_fixture_set_linear_damping(_fix, 0)
	physics_fixture_set_angular_damping(_fix, 0.5)
	physics_fixture_set_friction(_fix, 1)
	
	
	//Bind and store fixture
	platform.bound_fix = physics_fixture_bind(_fix, platform.id)	
	
	physics_fixture_delete(_fix)
	return bound_fix
}

/// @function scrCreateMacguffinFixture(mcG)
/// @description set a basic macguffin fixture
/// @param {Id.Instance} mcG  which instance to set this on
/// @return {Fixture ID}
function scrCreateMacguffinFixture(mcG) {
	//For physics
	var _fix

	//create fixture
	_fix = physics_fixture_create()

	//set shape and other vairables for fixture
	physics_fixture_set_circle_shape(_fix, 5)
	physics_fixture_set_density(_fix, 1)
	physics_fixture_set_restitution(_fix, 0.6)
	physics_fixture_set_awake(_fix, true)	
	
	

	//Bind and store fixture
	mcG.bound_fix = physics_fixture_bind(_fix, mcG)	
	
	physics_fixture_delete(_fix)
	return bound_fix	
}