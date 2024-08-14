// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function draw_weapon(){
	
	
	
	var _weapomYscl =1;
	
	if aimDir > 90 && aimDir < 270 {
	_weapomYscl = -1
	}

draw_sprite_ext(weapon.sprite, 0, x, centerY, 1,_weapomYscl,aimDir,c_white,1)
}