/// @description Insert description here
// You can write your code in this editor

if (_target == -1)
{
	if (_returnJourney == true)
	{
		x = _hookAttachment.x;
		y = _hookAttachment.y;
	}
	else
	{
		direction = _direction;
		speed = _spd;
	}
}
else
{	
	if (distance_to_point(_target.x, _target.y) > 20)
	{
		move_towards_point(_target.x, _target.y, 16);
	}
	else
	{
		if (_isAttached == false)
		{
			_isAttached = true;
			_mode = "Resourcing";
			obj_ShipControl._activeResourcing += 1;
			_target._attachedDrone = id;
		}
		x = _target.x;
		y = _target.y;
	}
}