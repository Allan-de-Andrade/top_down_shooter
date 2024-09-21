function take_damage()
{
	instance_destroy(obj_shoot_player.id)
	image_blend = c_red
	_health -= 1
	alarm[0] = 0.1 * game_get_speed(gamespeed_fps)

	
	if(_health == 0)
		instance_destroy()
}

function kill_player()
{
	if(place_meeting(x,y,obj_player) && !obj_player._is_dashing){
		instance_destroy(obj_player)
	}
}