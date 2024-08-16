	upKey = keyboard_check(ord("W"))
	downKey = keyboard_check(ord("S"))
	leftKey = keyboard_check(ord("A"))
	rigthKey = keyboard_check(ord("D"))
	shooter_key = mouse_check_button_pressed(mb_left)
	swap_key_pressed = mouse_check_button_pressed(mb_right)
	
	space = keyboard_check(vk_space)
	

#region
	var _horizontal_key = rigthKey - leftKey;
	var _verticalKey = downKey - upKey;
	
	moveDir = point_direction(0, 0, _horizontal_key, _verticalKey);
	
	var _spd = 0;
	var _input_level = point_distance(0, 0, _horizontal_key, _verticalKey);
	_input_level = clamp(_input_level, 0, 1);
	_spd = moveSpd * _input_level
	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y(_spd, moveDir);
	
	if place_meeting(x + xspd, y, wall_object) {
	  xspd = 0

	}
	if place_meeting(x, y + yspd, wall_object) {
	  yspd = 0

	}
	depth = -bbox_bottom
	x += xspd;
	y += yspd;
	
	
#endregion

#region
	get_damaged(damage_player_object)
#endregion

#region
	centerY = y + centerYOffset;
	aimDir = point_direction(x, centerY, mouse_x, mouse_y)
	
	face = round(aimDir / 90);
	
	if face == 4 {
	  face = 0
	}
	if xspd == 0 && yspd == 0 {
	  image_index = 0
	  //sprite_index = mage_idle_sprite
	}
	sprite_index = sprite[face]
	
#endregion

#region
	var _player_weapons = global.PlayerWeapons;
	if swap_key_pressed {
	  selected_weapon++;
	  if selected_weapon >= array_length(_player_weapons) {
	    selected_weapon = 0
	  }
	  weapon = _player_weapons[selected_weapon]
	}
#endregion

#region
	if shoot_timer > 0 {
	  shoot_timer--
	}
	
	if shooter_key && shoot_timer <= 0 {
	  shoot_timer = weapon.cooldown
	  
	  var _x_offset = lengthdir_x(weapon.length + weaponOffsetDist, aimDir)
	  var _y_offset = lengthdir_y(weapon.length + weaponOffsetDist, aimDir)
	  
	  var _spread = weapon.spread;
	  var _spreadDiv = _spread / max(weapon.bullet_num -1,1)
	  
	  for (var i = 0; i < weapon.bullet_num; i++) {
	    var _bullet_inst = instance_create_depth(x + _x_offset, centerY + _y_offset, depth - 100, weapon
	      .bullet_obj)
	    with(_bullet_inst) {
	      dir = other.aimDir - _spread/2 +  _spreadDiv*i
	    }
	  }
}
#endregion
	
	
if space {
	room_restart()
}