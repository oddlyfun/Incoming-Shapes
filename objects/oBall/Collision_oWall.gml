audio_play_sound(soCollide,10,false);

var _x = phy_collision_x[0];
var _y = phy_collision_y[0];

instance_create_layer(_x,_y,"balls",oExplode);

collisions++;