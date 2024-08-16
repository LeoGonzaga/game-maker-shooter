var spawn_x = random_range(0, room_width);
var spawn_y = random_range(0, room_height);

var enemy_random = irandom_range(0, 2);

if enemy_random == 0 {
  instance_create_layer(spawn_x, spawn_y, "Instances", enimy_1_object);
} else if enemy_random == 1 {
instance_create_layer(spawn_x, spawn_y, "Instances", enimy_2_object);
}else {
instance_create_layer(spawn_x, spawn_y, "Instances", enimy_1_object);
}

alarm[0] = timer_spam