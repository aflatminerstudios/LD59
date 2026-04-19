

/// @function scrFanBlow(fan)
/// @description Make fan blow
/// @param {Id.Instance} fan which is blowing
/// @return nothing
function scrFanBlow(fan){


	with (fan) {
		
			var dir = image_angle
			var xForce = lengthdir_x(totalForce, image_angle)
			var yForce = lengthdir_y(totalForce, image_angle)
			var xPoint = x + lengthdir_x(sprite_width/2 + 5, image_angle)
			var yPoint = y + lengthdir_y(sprite_height/2 + 5, image_angle)
			
			
			
			var xReach = lengthdir_x(sprite_width/2 + reach, image_angle)
			var yReach = lengthdir_y(sprite_height/2 + reach, image_angle)
			var yReach2 = lengthdir_y(sprite_height/2 + reach + 5, image_angle)			
			var yReach3 = lengthdir_y(sprite_height/2 + reach - 5, image_angle)			
			var collided = false
			
			
			var mgHits = physics_raycast(x, y, x + xReach, y + yReach, objMacguffin)
			var mgHits2 = physics_raycast(x, y, x + xReach, y + yReach2, objMacguffin)
			var mgHits3 = physics_raycast(x, y, x + xReach, y + yReach3, objMacguffin)
			
			if (array_length(mgHits) > 0 || array_length(mgHits2) > 0 || array_length(mgHits3) > 0) {
				//with (mgHits[0].instance) {
				with (objMacguffin) {
				//physics_apply_force(x + lengthdir_x(sprite_width/2, image_angle), y + lengthdir_y(sprite_height/2, image_angle), xForce, yForce)
					//physics_apply_force(xPoint, yPoint, xForce, yForce)
					physics_apply_force(phy_position_x, phy_position_y, xForce, yForce)
				}
			}
		
	}



}