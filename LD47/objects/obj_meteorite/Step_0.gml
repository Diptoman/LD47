/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_gameover)) {
direction = _direction;
speed = _spd;
image_angle = (image_angle + _spd) mod 360;
}
else
{
	direction = _direction;
	speed = 0;
	image_angle = (image_angle + _spd) mod 360;
}

if (x < -96 || x > room_width + 96 || y < -96 || y > room_height + 96)
{
	instance_destroy();
}