script_execute(kill_player)
if(place_meeting(x ,y ,obj_shoot_player)){
	script_execute(take_damage)
}

if(instance_exists(obj_player)){
	move_towards_point(obj_player.x,obj_player.y,_velocity)
	var _direction_to_player = point_direction(x,y,obj_player.x,obj_player.y)
	if (_direction_to_player > 90 && _direction_to_player < 270) 
		image_xscale = -2.5;
	
	else 
		image_xscale = 2.5;
	
}
else if(instance_exists(obj_player)){
	speed = 0
	image_speed = 0
}