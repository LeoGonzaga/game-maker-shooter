draw_sprite_ext(sprite_index, image_index, x,y, face, image_yscale, image_angle, image_blend, image_alpha);

var _healthPercent = hp / max_hp;
var _hp_sprite_counter = _healthPercent * (sprite_get_number(hud_sprite)-1)
draw_sprite(hud_sprite,_hp_sprite_counter, x,y-sprite_height-1)