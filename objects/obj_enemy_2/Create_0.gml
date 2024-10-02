image_xscale = 3;
image_yscale = 3;
_sprites = []
_sprites[0] = spr_witch_back
_sprites[1]  = spr_witch_front
_sprites[2] = spr_witch_left
_sprites[3] = spr_witch_right

_bullet_velocity = 13
_cooldown_bullet = 1.3
_bullet_create = 0
_health = 2
alarm[1] = _cooldown_bullet * game_get_speed(gamespeed_fps)