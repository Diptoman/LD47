/// @description Insert description here
// You can write your code in this editor

//Movement
_radius = _outerRadius;

if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	_currentAngle = (_currentAngle + _spd) mod 360;
	x = room_width/2 + lengthdir_x(_radius, _currentAngle); 
	y = room_height/2 + lengthdir_y(_radius, _currentAngle);
}
if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	_currentAngle = (_currentAngle - (_spd - _driftSpd)) mod 360;
	x = room_width/2 + lengthdir_x(_radius, _currentAngle); 
	y = room_height/2 + lengthdir_y(_radius, _currentAngle);
}

//Automove
_currentAngle = (_currentAngle - _driftSpd) mod 360;
x = room_width/2 + lengthdir_x(_radius, _currentAngle); 
y = room_height/2 + lengthdir_y(_radius, _currentAngle);

image_angle = _currentAngle;