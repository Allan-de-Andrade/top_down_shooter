
if(place_meeting(x ,y ,obj_bullet_wizard)){
	script_execute(take_damage)
}

if(distance_to_object(obj_player) > _see_range){
		_sprites[0] = spr_eye_cat_idle_right
	_sprites[1]  = spr_eye_cat_idle_front
	_sprites[2] = spr_eye_cat_idle_left
	_sprites[3] = spr_eye_cat_run_back
	
	script_execute(move_to_player)
}
	
else{
	_velocity = 0
_sprites[0] = spr_eye_cat_run_right
	_sprites[1]  = spr_eye_cat_run_front
	_sprites[2] = spr_eye_cat_run_left
	_sprites[3] = spr_eye_cat_run_back
	script_execute(face_direction_to_player)
	draw_line_color(x,y,obj_player.x,obj_player.y,c_red,c_white)
}