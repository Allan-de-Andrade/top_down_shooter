function camera_shake(_length, _time){
	with(obj_camera){
		_shake_time  = _time
		_shake_length = _length
		alarm[0] = _shake_time * game_get_speed(gamespeed_fps)
	}
}