if(_dash_duraction == 0)
{
	_velocity = _dash_velocity / 2
	_player_state = movement
	alarm[1] = _dash_cooldown * game_get_speed(gamespeed_fps)
}