if ( killable == true )
{
	phy_active = false;
	kill_me = true;
	image_speed = 1;
	image_index = 0;
	sprite_index = sBrickBlown

	var _topx = (x - sprite_xoffset);
	var _topy = (y - sprite_yoffset);

	var _len = point_distance(x,y,+_topx,_topy);

	_topx = x + lengthdir_x(_len - sprite_get_width(sSquare),-phy_rotation+180);
	_topy = y + lengthdir_y(_len - sprite_get_width(sSquare),-phy_rotation+180);


	instance_create_layer(_topx, _topy, "blocks", oSquare);


	_topx = x + lengthdir_x(_len - sprite_get_width(sSquare),-phy_rotation);
	_topy = y + lengthdir_y(_len - sprite_get_width(sSquare),-phy_rotation);


	instance_create_layer(_topx, _topy, "blocks", oSquare);
}