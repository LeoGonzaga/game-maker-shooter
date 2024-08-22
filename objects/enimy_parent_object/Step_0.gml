get_damaged(damage_enimy_object)

if hp <= 0 {
  instance_destroy()
  global.score+=1
  instance_create_depth(x,y,depth,explosion_enemy_obj )
}