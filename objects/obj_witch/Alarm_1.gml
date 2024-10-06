if(instance_exists(obj_player)){
	_bullet_create = instance_create_layer(x,y,"Instances",obj_shoot_enemy)
	_bullet_create.direction = point_direction(x,y,obj_player.x,obj_player.y)
	_bullet_create.speed = _bullet_velocity
	_bullet_create.image_angle = _bullet_create.direction
	alarm[1] = _cooldown_bullet * game_get_speed(gamespeed_fps)
}