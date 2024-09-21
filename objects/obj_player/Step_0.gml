

if(keyboard_check_pressed(vk_space)){
	_player_state =shoot
}

if(keyboard_check(ord("Q"))){
	_player_state = dash
}

script_execute(_player_state)

x += _direction_x  
y += _direction_y 