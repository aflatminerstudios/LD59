

/// @function scrFanBlow(fan)
/// @description Make fan blow
/// @param {Id.Instance} fan which is blowing
/// @return nothing
function scrFanBlow(fan){


	with (fan) {
		
			var dir = image_angle
			var xForce = lengthdir_x(totalForce, image_angle)
			var yForce = lengthdir_y(totalForce, image_angle)
			var xPoint = x + lengthdir_x(sprite_width/2 + 10, image_angle)
			var yPoint = y + lengthdir_y(sprite_height/2 + 10, image_angle)
			
			var xReach = lengthdir_x(sprite_width/2 + reach, image_angle)
			var yReach = lengthdir_y(sprite_height/2 + reach, image_angle)
			
			mgHits = physics_raycast(x, y, x + xReach, y + yReach, objMacguffin)
			
			if (array_length(mgHits) > 0) {
				with (objMacguffin) {
				//physics_apply_force(x + lengthdir_x(sprite_width/2, image_angle), y + lengthdir_y(sprite_height/2, image_angle), xForce, yForce)
					physics_apply_force(xPoint, yPoint, xForce, yForce)
				}
			}
		
	}



}