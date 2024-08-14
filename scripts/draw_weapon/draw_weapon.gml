function draw_weapon() {
  var _weapom_yscl = 1;
  if aimDir > 90 && aimDir < 270 {
    _weapom_yscl = -1
  }
  
  
  var targetFPS = 10; // Intended frames per second
  JetImageSpeed = targetFPS / 60;



	/// Step
	wand_image_index += JetImageSpeed;
	if( wand_image_index >= wand_image_number){
	    wand_image_index -= wand_image_number;
	}



  draw_sprite_ext(weapon.sprite, wand_image_index, x, centerY, 1, _weapom_yscl, aimDir, c_white, 1)
}