


if instance_number(objMacguffin) > 0
	dir = point_direction(x, y, objMacguffin.x, objMacguffin.y)
else
	dir = 0

if physics_test_overlap(x, y, image_angle, objMacguffin) {

	var xPush = lengthdir_x(pushAmt, dir)
	var yPush = lengthdir_y(pushAmt, dir)
	with (objMacguffin) {

		physics_apply_force(x, y, xPush, yPush)
		
		//PRINT string(xPush) + ", " + string(yPush) + " pushed"
	}
	
	sprite_index = sprSpringHit
	alarm[1] = game_get_speed(gamespeed_fps) / 8
	
}