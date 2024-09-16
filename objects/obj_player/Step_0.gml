#region Controles
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"))
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"))
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"))
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"))
#endregion

#region Movement
var _direction_x = (_right - _left) * _velocity
var _direction_y = (_down - _up) * _velocity

if(place_meeting(x + _direction_x,y,obj_wall))
{
	while(!place_meeting(x + sign(_direction_x),y,obj_wall)){		
		x = x+ sign(_direction_x)
	}
	_direction_x = 0
}
if(place_meeting(x ,y + _direction_y,obj_wall))
{
	while(!place_meeting(x,y + sign(_direction_y),obj_wall)){	
		y = y + sign(_direction_y)
	}
	_direction_y = 0
}
x += _direction_x  
y += _direction_y 
#endregion

#region tiro

	var _dir = point_direction(x, y, mouse_x, mouse_y);
	image_angle += sin(degtorad(_dir - image_angle)) * _rotation_speed;
	
	if(keyboard_check_pressed(vk_space)){
		var _shoot = instance_create_layer(x,y - 20,"Instances",obj_shoot_player);
		_shoot._bullet_player = true
		_shoot.speed = _speed_bullet
		_shoot.direction = image_angle

	}
#endregion 
