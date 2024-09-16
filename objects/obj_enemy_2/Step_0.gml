script_execute(kill_player)

if(place_meeting(x ,y ,obj_shoot_player)){
	script_execute(take_damage)
	alarm[0] = 0.1 * game_get_speed(gamespeed_fps)
}

