/// @description Insert description here
// You can write your code in this editor

if (_player.image_xscale == 1)
{
	_direction = 60;
} 
else
{
	_direction = 120;
}
_centreX = _player.x + lengthdir_x(32, _player.image_angle + _direction) + lengthdir_x(0, point_direction(x,y, mouse_x, mouse_y)); 
_centreY = _player.y + lengthdir_y(32, _player.image_angle + _direction) + lengthdir_y(0, point_direction(x,y, mouse_x, mouse_y));

x = _centreX;
y = _centreY;

image_angle = point_direction(x,y, mouse_x, mouse_y);
_canShoot = true;