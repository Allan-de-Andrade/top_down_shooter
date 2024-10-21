
if(place_meeting(x ,y ,obj_bullet_wizard)){
	script_execute(take_damage)
}

if(distance_to_object(obj_player) > _see_range and instance_exists(obj_player)){
	if(instance_exists(_laser))
		instance_destroy(_laser)
		
	_velocity = 7
	_sprites[0] = spr_eye_cat_run_right
	_sprites[1]  = spr_eye_cat_run_front
	_sprites[2] = spr_eye_cat_run_left
	_sprites[3] = spr_eye_cat_run_back
	script_execute(move_to_player)
}

if(instance_exists(obj_player) and distance_to_object(obj_player) < _see_range){	
	speed = 0
	_sprites[0] = spr_eye_cat_idle_right
	_sprites[1]  = spr_eye_cat_idle_front
	_sprites[2] = spr_eye_cat_idle_left
	_sprites[3] = spr_eye_cat_idle_back
	script_execute(face_direction_to_player)
	
	if(_can_shoot_laser and _laser == noone){
		_laser = instance_create_layer(x,y,"Instances",obj_eye_cat_laser)
		_laser._eye_cat_shooter = id
		_can_shoot_laser = false
	}
	else if(!_can_shoot_laser and !instance_exists(_laser)){
		show_debug_message("oi")
		_can_shoot_laser = true
		_laser = noone
	}
}

