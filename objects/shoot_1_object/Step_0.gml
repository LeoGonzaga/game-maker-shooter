xspd = lengthdir_x(spd, dir)
yspd = lengthdir_y(spd, dir)

x+= xspd
y+= yspd

if place_meeting(x,y, solid_wall_object){
instance_destroy()
}