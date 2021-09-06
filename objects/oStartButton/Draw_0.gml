draw_self();

var _c = c_black;
var _sw = sprite_get_width(sprite_index);
var _sh = sprite_get_height(sprite_index);

var _x = x;
var _y = y;

var _string = "Play Now";
	
_x = _x + (_sw/2) - (string_width(_string) / 2);
_y = _y + (_sh/2) - (string_height(_string) / 2 );
draw_text_color(_x,_y,_string,_c,_c,_c,_c,1);


draw_sprite(s_hinttext,0,x - 15,y + _sh + 5 );