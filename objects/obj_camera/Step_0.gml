
if(instance_exists(obj_player)){
	with(obj_camera){
		var _cam_width = camera_get_view_width(view_camera[0])
		var _cam_height = camera_get_view_height(view_camera[0])
		x = lerp(x,_follow.x, 0.1)
		y = lerp(y,_follow.y,0.1)
		_cam_x = x - _cam_width / 2
		_cam_y = y - _cam_height  / 2
		if(_shake_length > 0)
		{
			_cam_x += random_range(-_shake_length,_shake_length)
			_cam_y += random_range(-_shake_length,_shake_length)
		}
		camera_set_view_pos(view_camera[0],_cam_x,_cam_y)
	}
}
