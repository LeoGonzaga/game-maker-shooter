xspd = lengthdir_x(spd, dir)
yspd = lengthdir_y(spd, dir)

x+= xspd
y+= yspd


if destroy {
instance_destroy()
}

if place_meeting(x,y, solid_wall_object){
	destroy =true
}


if point_distance(xstart, ystart, x,y)> maxDist {
destroy = true
}

