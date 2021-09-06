var _gain = audio_get_master_gain(0);

if ( _gain > 0 )
{
	audio_set_master_gain(0,0);
} else
{
	audio_set_master_gain(0,1);
}