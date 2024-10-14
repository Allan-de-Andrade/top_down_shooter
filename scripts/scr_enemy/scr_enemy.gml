function take_damage()
{
	instance_destroy(obj_bullet_wizard.id)
	image_blend = c_red
	_health -= 1
	alarm[0] = 0.1 * game_get_speed(gamespeed_fps)
	
	if(_health == 0)
		instance_destroy()
}
function move_to_player()
{
	move_towards_point(obj_player.x,obj_player.y,_velocity)
	var _direction_to_player = point_direction(x,y,obj_player.x,obj_player.y)
	face_direction_to_player()
	give_damage_player()
}

function face_direction_to_player(){
	var _face_direction = point_direction(x,y,obj_player.x,obj_player.y)
	var _face = round(_face_direction / 90)
	
	if _face == 4
		_face = 0
	sprite_index = _sprites[_face]

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
