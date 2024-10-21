
if(instance_exists(obj_player)){
	if(_laser_give_damage == false and instance_exists(_eye_cat_shooter) and _laser_give_damage == false){

		for(var _distance = 0; _distance < _laser_max_distance;_distance++){
			direction = point_direction(x,y,obj_player.x,obj_player.y)
			_laser_end_x = x + lengthdir_x(_distance,direction)
			_laser_end_y = y + lengthdir_y(_distance,direction)
			_length_laser = _distance
		}
	}
	if(_laser_give_damage == true and instance_exists(_eye_cat_shooter)){
		if(collision_line(x,y,_laser_end_x,_laser_end_y,obj_player,false,false)){
			script_execute(give_damage_player)
		}
	}                            
}


		