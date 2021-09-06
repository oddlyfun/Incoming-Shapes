
if ( just_hit == false ){

	audio_play_sound(soBlockHitPlayer,30,false);
	just_hit = true;
	damage_taken = damage_taken + 1;

	with(other)
	{
		event_perform(ev_collision,oBall);
	}
	global.kills = global.kills + 1;

	alarm_set(1,room_speed);
}