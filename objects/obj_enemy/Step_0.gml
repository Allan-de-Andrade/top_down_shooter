script_execute(kill_player)
if(place_meeting(x ,y ,obj_shoot_player)){
	script_execute(take_damage)
}

if(instance_exists(obj_player))
	move_towards_point(obj_player.x,obj_player.y,_velocity)
else
	speed = 0