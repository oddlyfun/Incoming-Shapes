if ( global.game_over == true )
{
	var _c = c_black;
	var _sw = sprite_get_width(sButton);
	var _sh = sprite_get_height(sButton);
	var _x = (room_width / 2) - (_sw / 2);
	var _y = (room_height / 2) - (_sh / 2);
	var _string = "Again?";
	
	
	draw_text(_x, room_height / 4, "Kills : "+string(global.kills) );
	var _min = string(minutes);
	var _sec = string(seconds);

	// padding the numbers 00:00
	if ( minutes < 10 )
	{
		_min = "0"+string(minutes);
	}

	if ( seconds < 10 )
	{
		_sec = "0"+string(seconds);
	}

	draw_text(_x,(room_height / 4) + string_height("Hi!") * 1.5,"Time: "+_min+":"+_sec);
	
	
	if ( mouse_x > _x and mouse_x < ( _x + _sw ) and mouse_y > _y and mouse_y < (_y + _sh ) )
	{
		draw_sprite(sButton,1,_x,_y);
		if ( mouse_check_button_pressed(mb_left) )
		{
			audio_stop_all();
			room_restart();
		}
	} else
	{
		draw_sprite(sButton,0,_x,_y);
	}
	
	_x = _x + (_sw/2) - (string_width(_string) / 2);
	_y = _y + (_sh/2) - (string_height(_string) / 2 );
	draw_text_color(_x,_y,_string,_c,_c,_c,_c,1);
	
	//The player expects space to work since it works this way on the title screen
	if ( keyboard_check_released(vk_space) )
	{
		audio_stop_all();
		room_restart();
	}
}