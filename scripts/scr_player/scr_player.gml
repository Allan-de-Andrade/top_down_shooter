function movement(){
	var _left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	var _right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	var _up = keyboard_check(vk_up) or keyboard_check(ord("W"))
	var _down = keyboard_check(vk_down) or keyboard_check(ord("S"))

    _direction_x = (_right - _left) * _velocity
	_direction_y = (_down - _up) * _velocity
	animation_controller()
	
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

function animation_controller(){
	if(_direction_x != 0 or _direction_y != 0){
		_sprites[0] = spr_wizard_run_right
		_sprites[1]  = spr_wizard_run_front
		_sprites[2] = spr_wizard_run_left
		_sprites[3] = spr_wizard_run_back
	}
	
	else{
		_sprites[0] = spr_wizard_idle_right
		_sprites[1]  = spr_wizard_idle_front
		_sprites[2] = spr_wizard_idle_left
		_sprites[3] = spr_wizard_idle_back	
	}
	
	var _face_direction = point_direction(x,y,mouse_x,mouse_y)
	_face = round(_face_direction / 90)
	
	if _face == 4
		_face = 0
	
	sprite_index = _sprites[_face]
}

function dash(){
	movement()

	if(_can_dash){
		with(instance_create_depth(x,y,depth + 1,obj_trail))
		{
			sprite_index = other.sprite_index
			image_xscale = other.image_xscale
			image_yscale = other.image_yscale
			image_blend = c_aqua
			image_alpha = 0.7
		}
		
		_can_dash = false
		_velocity  = _dash_velocity
		_is_dashing = true
		alarm[0] = _dash_duraction * game_get_speed(gamespeed_fps)
	}
}

function shoot(){
	movement()
	
	var _shoot = instance_create_layer(x,y,"Instances",obj_shoot_player);
	_shoot._bullet_player = true
	_shoot.speed = _speed_bullet
	_shoot.direction = point_direction(x,y,mouse_x,mouse_y)
	_shoot.image_angle = _shoot.direction
	
	if(_shoot.direction > 130 and _shoot.direction < 240)
		_shoot.image_yscale *= -1
		
	_player_state = movement
}