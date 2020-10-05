/// @description Insert description here
// You can write your code in this editor

if (_productionState < 4)
	_productionState += 1;
else
{
	_associatedDrone = instance_create_layer(x, y, "DroneCollect", obj_droneCollection);
	_associatedDrone._parent = id;
	_associatedDrone._currentAngle = _currentAngle;
	_productionState = 5;
}