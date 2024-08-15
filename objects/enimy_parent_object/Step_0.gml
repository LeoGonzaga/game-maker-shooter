if place_meeting(x, y, damage_enimy_object) {
    var _inst = instance_place(x, y, damage_enimy_object);

    hp -= _inst.damage

    _inst.destroy = true

}

if hp <= 0 {
    instance_destroy()
}