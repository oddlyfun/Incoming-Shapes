audio_play_sound(soCollide,10,false);


var _x = phy_collision_x[0];
var _y = phy_collision_y[0];

instance_create_layer(_x,_y,"balls",oExplode);


collisions++;

if ( collisions > breaking_point + 1 )
{

	with ( other )
	{
		if ( just_hit == false )
		{
			audio_play_sound(soBlockHitPlayer,35,false);
			just_hit = true;
			damage_taken = damage_taken + 1;
			alarm_set(1,room_speed);
		}
	}
}