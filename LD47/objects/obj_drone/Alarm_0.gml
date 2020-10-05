/// @description Insert description here
// You can write your code in this editor

if (_isAttached) && (_mode == "Repairing") && (_target != -1)
{
	_target._isDestroyed = false;
	obj_ShipControl._shipHP += 10;
	if (_target._attachedBuilding != -1)
	{
		_target._attachedBuilding._isDestroyed = false;
	}
	
	instance_destroy();
}