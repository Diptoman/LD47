/// @description Insert description here
// You can write your code in this editor

if (_notInRange == true)
{
	_currentAngle = (_currentAngle - obj_ShipControl._driftSpeed) mod 360;
	x = room_width/2 + lengthdir_x(obj_ShipControl._radius + 72, _currentAngle);
	y = room_height/2 + lengthdir_y(obj_ShipControl._radius + 72, _currentAngle);
	image_angle = _currentAngle - 90;
}