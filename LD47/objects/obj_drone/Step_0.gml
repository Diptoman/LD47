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
			if (_targetType == "Meteorite")
			{
				_mode = "Resourcing";
				obj_ShipControl._activeResourcing += 1;
			}
			else
			{
				_mode = "Repairing";
				if (alarm[0] < 0)
				{
					alarm[0] = room_speed * 2;
				}
			}
			_target._attachedDrone = id;
		}
		x = _target.x;
		y = _target.y;
	}
}

if (x < -96 || x > room_width + 96 || y < -96 || y > room_height + 96)
{
	instance_destroy();
}