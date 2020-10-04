/// @description Insert description here
// You can write your code in this editor

if (_returnJourney == false)
{
	direction = _direction;
	speed = _spd;
	image_angle = direction;
}
else
{
	if (distance_to_point(obj_playerHand.x, obj_playerHand.y) > 32)
	{
		move_towards_point(obj_playerHand.x, obj_playerHand.y, 28);
	}
	else
	{
		obj_playerHand._isHookAttached = true;
		instance_destroy();
	}
}