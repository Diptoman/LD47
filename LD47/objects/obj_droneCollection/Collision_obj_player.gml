/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_gameover)){
if ((obj_player._currentDroneAmount + instance_number(obj_drone)) < obj_player._droneCapacity)
{
	_parent._associatedDrone = -1;
	_parent._productionState = 0;
	instance_destroy();
	obj_player._currentDroneAmount += 1;
	audio_play_sound(snd_pickupDrone, 1, 0);
}
}