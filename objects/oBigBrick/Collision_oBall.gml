if ( killable == true )
{
	phy_active = false;
	kill_me = true;
	image_speed = 1;
	image_index = 0;
	sprite_index = sBigBlockBlown
	
	
	global.rot = phy_rotation;
	
//	x = floor(x);
	//y = floor(y);
	
	instance_create_layer(x,y,"blocks",oBrick);
	instance_create_layer(x,y,"blocks",oBrick);
	
}