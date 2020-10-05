/// @description Insert description here
// You can write your code in this editor

if (_attachedDrone != -1)
{
	with (_attachedDrone) instance_destroy();
	obj_ShipControl._activeResourcing -= 1;
}