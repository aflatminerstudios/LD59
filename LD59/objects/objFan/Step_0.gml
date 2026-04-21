PRINT string(self.id) + " : " + string(isPowered)

alarmCtr = alarmCtr + 1
if (isPowered && alarmCtr >= alarm0) {
	alarm0 = game_get_speed(gamespeed_fps) / 8
	alarmCtr = 0


	image_index = (image_index + 1) % sprite_get_number(sprite_index)
}