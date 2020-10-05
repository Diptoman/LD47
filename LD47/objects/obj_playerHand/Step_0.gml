/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_gameover)) {
if (obj_player.image_xscale == 1)
{
	if (obj_player.image_yscale == 1)
		_direction = 60;
	else
		_direction = 300;
} 
else
{
	if (obj_player.image_yscale == 1)
		_direction = 120;
	else
		_direction = 240;
}
_centreX = obj_player.x + lengthdir_x(32, obj_player.image_angle + _direction) + lengthdir_x(0, point_direction(x,y, mouse_x, mouse_y)); 
_centreY = obj_player.y + lengthdir_y(32, obj_player.image_angle + _direction) + lengthdir_y(0, point_direction(x,y, mouse_x, mouse_y));

x = _centreX;
y = _centreY;

image_angle = point_direction(x,y, mouse_x, mouse_y);

//Can player shoot
_mouseDir = point_direction(x, y, mouse_x, mouse_y);
_startX = x + lengthdir_x(16, _mouseDir);
_startY = y + lengthdir_y(16, _mouseDir);
_endX = x + lengthdir_x(2000, _mouseDir);
_endY = y + lengthdir_y(2000, _mouseDir);
if (obj_player.image_yscale == -1)
{
	_canShoot = true;
}
else if (collision_line(_startX, _startY, _endX, _endY, obj_shipPart, 0, false))
{
	_canShoot = false;
}
else
{
	_canShoot = true;
}

if (obj_player._currentDroneAmount <= 0)
{
	_canShoot = false;
}

if (_isHookAttached == false)
{
	_canShoot = false;
}

//Hook test
_canHook = true;
if (_isHookAttached == false)
{
	_canHook = false;
}

//Shoot drone/hook
if (mouse_check_button_released(mb_left))
{
	if (_canShoot == true)
	{
		_mouseDir = point_direction(x, y, mouse_x, mouse_y);
		_startX = x + lengthdir_x(40, _mouseDir);
		_startY = y + lengthdir_y(40, _mouseDir);
		_drone = instance_create_layer(_startX, _startY, "Drone", obj_drone);
		_pressPercentage = max((obj_cursor._pressMax - obj_cursor._pressAmount)/(obj_cursor._pressMax - obj_cursor._pressMin), .3);
		_drone._spd = _pressPercentage * 16;
		_drone._direction = _mouseDir;
		obj_player._currentDroneAmount -= 1;
	}
	else if (_isHookAttached == false)
	{
		if (instance_exists(_hook))
		{
			if ((_hook._target != -1) && (_hook._target._targetType == "Meteorite"))
			{
				with (_hook._target._target) instance_destroy();
				instance_create_layer(0, 0, "Instances", obj_screenShake);
			}
		}
	}
}
else if (mouse_check_button_released(mb_right))
{
	if ((_canHook == true) && (_isHookAttached == true))
	{
		_mouseDir = point_direction(x, y, mouse_x, mouse_y);
		_startX = x + lengthdir_x(40, _mouseDir);
		_startY = y + lengthdir_y(40, _mouseDir);
		_hook = instance_create_layer(_startX, _startY, "Hook", obj_hook);
		_pressPercentage = max((obj_cursor._pressMax - obj_cursor._pressAmount)/(obj_cursor._pressMax - obj_cursor._pressMin), .4);
		_hook._spd = _pressPercentage * 20;
		_hook._direction = _mouseDir;
		_isHookAttached = false;
	}
	else if (_isHookAttached == false)
	{
		if (instance_exists(_hook))
		{
			_hook._returnJourney = true;
		}
		else
			_isHookAttached = true;
	}
}
}