/// @description Insert description here
// You can write your code in this editor
if (_target == -1) && (other._attachedDrone == -1) && (_returnJourney == false)
{
	_target = other;
	_targetType = "Meteorite";
	audio_play_sound(snd_droneAttaching, 1, 0);
	
	if (obj_control._tutStage == 2)
		obj_control._tutStage = 3;
}