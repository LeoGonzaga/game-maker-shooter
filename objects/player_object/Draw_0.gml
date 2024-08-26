
if aimDir >= 0 && aimDir <180 {
	draw_weapon()
}


draw_self()


if aimDir >= 180 && aimDir <360 {
draw_weapon()

}


var _healthPercent = hp / max_hp;
var _hp_sprite_counter = _healthPercent * (sprite_get_number(hud_sprite)-1)
draw_sprite(hud_sprite,_hp_sprite_counter, x,y-sprite_height+10)
