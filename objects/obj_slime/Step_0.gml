if(place_meeting(x ,y ,obj_bullet_wizard)){
	script_execute(take_damage)
}

if(instance_exists(obj_player)){
	script_execute(move_to_player)
}


else if(!instance_exists(obj_player)){
	speed = 0
	image_speed = 0
}