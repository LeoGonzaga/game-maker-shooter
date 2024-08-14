// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function create_weapon(_sprite= diamond_wand_sprite, _length=0,_bullet_obj= shoot_1_object, _cooldown=9, _bullet_num, _spread) constructor{

sprite = _sprite;
length = _length;
bullet_obj = _bullet_obj;
cooldown = _cooldown;
bullet_num = _bullet_num;
spread =_spread;
}



global.PlayerWeapons = array_create(0)


global.WeaponList = {
diamondWand: new create_weapon(
	diamond_wand_sprite,
	sprite_get_bbox_right(diamond_wand_sprite),
	shoot_1_object,
	9,
	1,
	0
),
poisonWand: new create_weapon(
	  poison_wand_sprite,
	 sprite_get_bbox_right(poison_wand_sprite),
	shoot_object,
	 5,
	 3,
	 45
)
}





