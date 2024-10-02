script_execute(kill_player)
if(instance_exists(obj_player)){
	var _face_direction = point_direction(x,y,obj_player.x,obj_player.y)
	var _face = round(_face_direction / 90)
	
	if _face == 4
		_face = 0
	sprite_index = _sprites[_face]
}
if(place_meeting(x ,y ,obj_shoot_player) and instance_exists(obj_player)){
	script_execute(take_damage)
	if(!place_meeting(obj_player.x - 100,obj_player.y - 100,obj_wall) and instance_exists(obj_player)){
		show_debug_message("OLEEEE")
		x = obj_player.x - 100
		y = obj_player.y - 100
	}
	else{
		show_debug_message("na parede não >:(")
		x = obj_wall.x - 100
		y = obj_wall.y + 50
	}	
	alarm[0] = 0.1 * game_get_speed(gamespeed_fps)
}
