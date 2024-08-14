window_set_fullscreen(true)

global.diamonds=1;


moveDir = 0;
moveSpd = 1;
xspd = 0;
yspd= 0;

centerYOffset = 4;
centerY = y+ centerYOffset;

weaponOffsetDist =5;
aimDir = 0;

face = 0;

sprite[0] = mage_run_sprite;
sprite[1] = mage_run_up_sprite;
sprite[2] = mage_run_left_sprite;
sprite[3] = mage_run_down_sprite;

shoot_cooldown = 9
shoot_timer = 0


bulletObj = shoot_1_object
weaponLength = sprite_get_bbox_right(diamond_collectable_sprite)