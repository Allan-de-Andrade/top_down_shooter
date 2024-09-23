image_xscale = 3.5;
image_yscale = 3.5;

_face = 3
_sprites = []
_sprites[0] = spr_wizard_idle_right
_sprites[1]  = spr_wizard_idle_front
_sprites[2] = spr_wizard_idle_left
_sprites[3] = spr_wizard_idle_back

_center_y = 28
_rotation_speed = 20
_direction_x = 0
_direction_y = 0
_aim_direction = point_direction(x,y,mouse_x,mouse_y)
_velocity = 7

_speed_bullet = 15
_health = 1
_player_state = movement

_is_dashing = false
_can_dash = true
_dash_velocity = _velocity * 3
_dash_duraction = 0.2
_dash_cooldown = 3
_reset_dash_duraction = _dash_duraction




