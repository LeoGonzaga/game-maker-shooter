if place_meeting(x, y, damage_enimy_object) {
  var _inst_list = ds_list_create();
  
  instance_place_list(x, y, damage_enimy_object, _inst_list, false);
  var _list_size = ds_list_size(_inst_list)
  
  for (var i = 0; i < _list_size; i++) {
	  
    var _inst = ds_list_find_value(_inst_list, i);
	
    if ds_list_find_index(damage_list, _inst) == -1 {
      ds_list_add(damage_list, _inst)
      hp -= _inst.damage
      _inst.hit_confirm = true
    }
	
  }
  ds_list_destroy(_inst_list)
}


var _damage_list_size = ds_list_size(damage_list)

for (var i = 0; i < _damage_list_size; i++){
	
	var _inst = ds_list_find_value(damage_list, i)
	
	if !instance_exists(_inst) || !place_meeting(x,y, _inst){
	 ds_list_delete(damage_list, i)
	 i--;
	 _damage_list_size--
	}
}

if hp <= 0 {
  instance_destroy()
}