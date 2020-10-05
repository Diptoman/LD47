/// @description Insert description here
// You can write your code in this editor

//Automove
if (!instance_exists(obj_gameover)) {
_currentAngle = (_currentAngle - obj_ShipControl._driftSpeed) mod 360;
x = room_width/2 + lengthdir_x(obj_ShipControl._radius, _currentAngle); 
y = room_height/2 + lengthdir_y(obj_ShipControl._radius, _currentAngle);

image_angle = _currentAngle - 90;

//Destroyed
if (_isDestroyed == true)
{
	sprite_index = spr_DroneCreatorDamaged;
	_productionState = 0;
}
else
{
	if (_isActive == true)
	{
		sprite_index = spr_droneCreator;
		image_index = _productionState;
	}
	else
	{
		sprite_index = spr_droneCreatorOff;
		_productionState = 0;
	}
}

//Alarm if active
if ((_isActive == true) && (_associatedDrone == -1) && (_isDestroyed == false))
{
	if (alarm[0] < 0)
	{
		alarm[0] = room_speed * 2;
	}
}
}