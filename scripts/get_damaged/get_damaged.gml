// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações






function get_damaged_create(_hp=10, _iframes = false){
	max_hp = _hp;
	hp = _hp;
	
	if _iframes == true {
		iframeTimer = 0;
		iframeNumber = 90;
		
	}
	
	
	if _iframes == false {
		damage_list = ds_list_create()

	}
	
}


function get_damaged_cleanup(){
ds_list_destroy(damage_list)
}


function get_damaged(_damage_object, _iframes=false){
	
	
	if _iframes == true && iframeTimer > 0 {

	iframeTimer--;
	if iframeTimer mod 5  == 0 {
	
		if image_alpha == 1 {
			image_alpha = 0
		}else {
			image_alpha = 1
		}
	}
	
	
		
	exit;
	}
	
	
	if _iframes == true {
		image_alpha  =1 

	}
	
	if place_meeting(x, y, _damage_object) {
	  var _inst_list = ds_list_create();
  
	  instance_place_list(x, y, _damage_object, _inst_list, false);
	  var _list_size = ds_list_size(_inst_list)
	  
	  var _hit_confirm = false;
  
	  for (var i = 0; i < _list_size; i++) {
	  
	    var _inst = ds_list_find_value(_inst_list, i);
	
	    if _iframes == true || ds_list_find_index(damage_list, _inst) == -1 {
		
			if _iframes == false {
			      ds_list_add(damage_list, _inst)

			}
	      hp -= _inst.damage
		  _hit_confirm = true
	      _inst.hit_confirm = true
	    }
	
	  }
	  
	  if _iframes && _hit_confirm {
		iframeTimer= iframeNumber
		if hp <= 0  { room_restart()}
	  }
	  
	  ds_list_destroy(_inst_list)
	}



	if _iframes == false {
		var _damage_list_size = ds_list_size(damage_list)

	for (var i = 0; i < _damage_list_size; i++){
	
		var _inst = ds_list_find_value(damage_list, i)
	
			if !instance_exists(_inst) || !place_meeting(x,y, _inst){
			 ds_list_delete(damage_list, i)
			 i--;
			 _damage_list_size--
			}
		}
	}

}