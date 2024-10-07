script_execute(give_damage_player)
if(instance_exists(obj_player)){
	var _face_direction = point_direction(x,y,obj_player.x,obj_player.y)
	var _face = round(_face_direction / 90)
	
	if _face == 4
		_face = 0
	sprite_index = _sprites[_face]
	
	if(distance_to_object(obj_player) >= 750){
		x = obj_player.x - random_range(250,300) 
		y = obj_player.y	
	}
	
	
	if(instance_exists(obj_bullet_wizard)){
		if(place_meeting(x,y,obj_bullet_wizard)){
			x = obj_player.x - 250
			y = obj_player.y - 100
			if(_teleports_remaining > 0)
				_teleports_remaining -= 1
			else
				take_damage()
				
			alarm[0] = 0.1 * game_get_speed(gamespeed_fps)
		}
	}
}




