/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_hook))
{
	if (obj_hook._isAttached == true)
	{
		sprite_index = spr_UI_cursorChoice;
	}
	else if (_mode == "Drone")
	{
		sprite_index = spr_UI_droneCursor_Center;
	}
	else if (_mode == "Hook")
	{
		sprite_index = spr_UI_hookCursor_Center;
	}
}
else if (_mode == "Drone")
{
	sprite_index = spr_UI_droneCursor_Center;
}
else if (_mode == "Hook")
{
	sprite_index = spr_UI_hookCursor_Center;
}

x = mouse_x;
y = mouse_y;

//Mouse press
if (!instance_exists(obj_gameover)) {
if (mouse_check_button(mb_left))
{
	if (obj_playerHand._isHookAttached == true)
	{
		_mode = "Drone";
		if (_pressAmount > _pressMin)
			_pressAmount -= 1.5;
	}
}
else if (mouse_check_button(mb_right))
{
	if (obj_playerHand._isHookAttached == true)
	{
		_mode = "Hook";
		if (_pressAmount > _pressMin)
			_pressAmount -= 1.5;
	}
}
else
{
	if (_pressAmount < _pressMax)
		_pressAmount += 12;
}

if (_pressAmount < _pressMin)
	_pressAmount = _pressMin;
if (_pressAmount > _pressMax)
	_pressAmount = _pressMax;
}