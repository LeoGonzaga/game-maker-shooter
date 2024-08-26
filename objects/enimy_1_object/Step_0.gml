if instance_exists(player_object) {
    dir = point_direction(x, y, player_object.x, player_object.y)
}


xspd = lengthdir_x(spd, dir);
yspd = lengthdir_y(spd, dir);


if xspd > 0 { face = 1}
if xspd < 0 { face = -1 }



if place_meeting(x + xspd, y, wall_object)|| place_meeting(x+xspd, y, enimy_parent_object) {
    xspd = 0
}

if place_meeting(x, y + yspd, wall_object) || place_meeting(x, y +yspd, enimy_parent_object) {
    yspd = 0
}

x += xspd;
y += yspd;

event_inherited();


