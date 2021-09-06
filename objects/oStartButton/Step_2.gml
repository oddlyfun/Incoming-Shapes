image_index = 0;

if ( collision_point(mouse_x,mouse_y,oStartButton,false,false) )
{
	image_index = 1;
	
	if ( mouse_check_button_released(mb_left) or keyboard_check_released(vk_space) )
	{
		room_goto(BattleRoom);
	}
} else if ( keyboard_check_released(vk_space) )
{
	room_goto(BattleRoom);
}