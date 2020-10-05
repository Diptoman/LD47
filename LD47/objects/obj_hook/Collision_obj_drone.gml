/// @description Insert description here
// You can write your code in this editor
if ((_target == -1) && (_returnJourney == false))
{
	if (other._targetType != "ShipPart")
	{
		_target = other;
		audio_play_sound(snd_hookAttaching, 1, 0);
		
		if (obj_control._tutStage == 4)
			obj_control._tutStage = 5;
	}
}