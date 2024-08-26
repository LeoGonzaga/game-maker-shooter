var _spawn_x =x
var _spawn_y = y + 15

var _enemy_random = irandom_range(0, 1);

my_enemies = [enimy_1_object, enimy_2_object]

var _current_enemy = my_enemies[_enemy_random]

  instance_create_layer(_spawn_x, _spawn_y, "Instances", _current_enemy);


alarm[0] = timer_spam