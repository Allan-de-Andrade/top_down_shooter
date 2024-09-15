if(place_meeting(x,y,obj_shoot))
{
	image_alpha = 0
	alarm[0] = 0.1 * game_get_speed(gamespeed_fps)
	_health -= 1
}
if(place_meeting(x ,y ,obj_shoot))
{
	image_alpha = 0
	alarm[0] = 0.1 * game_get_speed(gamespeed_fps)
	_health -= 1
}

if(_health <= 0)
	instance_destroy()

if(instance_exists(obj_player))
	move_towards_point(obj_player.x,obj_player.y,_velocity)
else
	speed = 0