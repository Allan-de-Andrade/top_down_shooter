if(instance_exists(_eye_cat_shooter)){
	for(var _j = 0; _j < _length_laser;_j++){
		draw_sprite_ext(spr_eye_cat_laser,1,x +
		lengthdir_x(_j,direction),y + 
		lengthdir_y(_j,direction),
		1,1,direction,c_white,_laser_alpha)
	}
}