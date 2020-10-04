/// @description Insert description here
// You can write your code in this editor

//Flip
if (collision_point(x, y, obj_flipHatch, 0, 0))
{
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_space))
	{
		if (_radius == _outerRadius)
		{
			_radius = _innerRadius;
			image_yscale = -1;
		}
		else
		{
			_radius = _outerRadius;
			image_yscale = 1;
		}
	}
}

if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	_currentAngle = (_currentAngle + _spd) mod 360;
	x = room_width/2 + lengthdir_x(_radius, _currentAngle); 
	y = room_height/2 + lengthdir_y(_radius, _currentAngle);
	image_xscale = 1;
}
if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	_currentAngle = (_currentAngle - _spd) mod 360;
	x = room_width/2 + lengthdir_x(_radius, _currentAngle); 
	y = room_height/2 + lengthdir_y(_radius, _currentAngle);
	image_xscale = -1;
}

//Automove
_currentAngle = (_currentAngle - obj_ShipControl._driftSpeed) mod 360;
x = room_width/2 + lengthdir_x(_radius, _currentAngle); 
y = room_height/2 + lengthdir_y(_radius, _currentAngle);

image_angle = _currentAngle - 90;