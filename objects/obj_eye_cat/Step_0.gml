if(distance_to_object(obj_player) > _see_range){
	script_execute(move_to_player)
}
	
else if(distance_to_object(obj_player) <= _see_range){
	speed = 0
	draw_line_width_color(x,y,obj_player.x,obj_player.y,20,c_red,c_white)
}