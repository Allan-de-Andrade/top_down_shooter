function take_damage()
{
	instance_destroy(obj_bullet_wizard.id)
	image_blend = c_red
	_health -= 1
	alarm[0] = 0.1 * game_get_speed(gamespeed_fps)
	
	if(_health == 0)
		instance_destroy()
}

function give_damage_player()
{
	if(place_meeting(x,y,obj_player) && !obj_player._is_dashing && !obj_player._temporary_invencible){
		obj_player._health -= 1
		obj_player.image_alpha = 0.2
		obj_player.image_blend = c_gray
		
		obj_player._temporary_invencible = true
		obj_camera._shake_length = 100
		obj_camera._shake_time = 60
		camera_shake(30,0.3)
		obj_player.alarm[2] = obj_player._time_temporary_invencible * game_get_speed(gamespeed_fps)
		
		if(obj_player._health == 0)
			instance_destroy(obj_player)
	}
}
