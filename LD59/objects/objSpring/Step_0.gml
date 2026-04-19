


if instance_number(objMacguffin) > 0
	dir = point_direction(x, y, objMacguffin.x, objMacguffin.y)
else
	dir = 0

if physics_test_overlap(x, y, image_angle, objMacguffin) {

	var xPush = lengthdir_x(pushAmt, image_angle + 90)
	var yPush = lengthdir_y(pushAmt, image_angle + 90)
	with (objMacguffin) {

		physics_apply_impulse(x, y, xPush, yPush)
		
		PRINT string(xPush) + ", " + string(yPush) + " pushed"
	}
}