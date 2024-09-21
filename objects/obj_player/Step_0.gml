

if(mouse_check_button_pressed(0)){
	_player_state =shoot
}

if(keyboard_check(ord("Q"))){
	_player_state = dash
}

script_execute(_player_state)

x += _direction_x  
y += _direction_y 