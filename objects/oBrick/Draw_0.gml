draw_self();

if ( instance_number(oPlayer) > 0  )
{

	var _player = instance_nearest(x,y,oPlayer);

	var _px = _player.x;
	var _py = _player.y;

	var _dir = point_direction(x,y,_px,_py);

	var _x = x + lengthdir_x(impulse_speed,_dir + 180);
	var _y = y + lengthdir_y(impulse_speed,_dir + 180);

	var _x = x - _x;
	var _y = y - _y;

	physics_apply_impulse(0,0,_x,_y);
}



//var _topx = (x - sprite_xoffset);
//var _topy = (y - sprite_yoffset);

//var _len = point_distance(x,y,+_topx,_topy);

//_topx = x + lengthdir_x(_len - sprite_get_width(sSquare),-phy_rotation);
//_topy = y + lengthdir_y(_len - sprite_get_width(sSquare),-phy_rotation);

//draw_line_width(x,y,_topx,_topy,2);