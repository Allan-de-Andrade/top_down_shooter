function movement(){
	var _left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	var _right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	var _up = keyboard_check(vk_up) or keyboard_check(ord("W"))
	var _down = keyboard_check(vk_down) or keyboard_check(ord("S"))

    _direction_x = (_right - _left) * _velocity
	_direction_y = (_down - _up) * _velocity
	var _rotation_direction = point_direction(x, y, mouse_x, mouse_y);
	image_angle += sin(degtorad(_rotation_direction - image_angle)) * _rotation_speed;

	
	if(place_meeting(x + _direction_x,y,obj_wall))
	{
		while(!place_meeting(x + sign(_direction_x),y,obj_wall)){		
			x += sign(_direction_x)
		}
		_direction_x = 0
	}
	
	if(place_meeting(x ,y + _direction_y,obj_wall))
	{
		while(!place_meeting(x,y + sign(_direction_y),obj_wall)){	
			y += sign(_direction_y)
		}
		_direction_y = 0
	}
	
}

function dash(){
	movement()
	
	if(_can_dash){
		_can_dash = false
		_velocity  = _dash_velocity
		alarm[0] = _dash_duraction * game_get_speed(gamespeed_fps)
	}
}

function shoot(){
	movement()
	
	var _shoot = instance_create_layer(x,y - 20,"Instances",obj_shoot_player);
	_shoot._bullet_player = true
	_shoot.speed = _speed_bullet
	_shoot.direction = image_angle
	_player_state = movement
}