window_set_fullscreen(true)

global.diamonds=1;


moveDir = 0;
moveSpd = 1.2;
xspd = 0;
yspd= 0;

centerYOffset = 4;
centerY = y+ centerYOffset;

weaponOffsetDist =5;
aimDir = 0;
wand_image_index = 0;


face = 0;

sprite[0] = mage_run_sprite;
sprite[1] = mage_run_up_sprite;
sprite[2] = mage_run_left_sprite;
sprite[3] = mage_run_down_sprite;

shoot_timer = 0

array_push(global.PlayerWeapons, global.WeaponList.diamondWand)
array_push(global.PlayerWeapons, global.WeaponList.poisonWand)

selected_weapon = 1
weapon = global.PlayerWeapons[selected_weapon]

wand_image_number = sprite_get_number(weapon.sprite);
