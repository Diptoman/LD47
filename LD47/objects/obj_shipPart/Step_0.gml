/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_gameover)) {
//Automove
_currentAngle = (_currentAngle - obj_ShipControl._driftSpeed) mod 360;
x = room_width/2 + lengthdir_x(obj_ShipControl._radius, _currentAngle); 
y = room_height/2 + lengthdir_y(obj_ShipControl._radius, _currentAngle);

image_angle = _currentAngle - 90;
image_speed = 0;
image_index = 0;

//Destroyed
if (_isDestroyed == true)
{
	sprite_index = spr_damagedOrbitBlock;
}
else
{
	sprite_index = spr_baseOrbitBlock;
}
}