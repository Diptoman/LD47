/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left) || mouse_check_button(mb_right))
{
	_mouseDir = point_direction(x, y, mouse_x, mouse_y);
	_startX = x + lengthdir_x(16, _mouseDir);
	_startY = y + lengthdir_y(16, _mouseDir);
	_endX = x + lengthdir_x(2000, _mouseDir);
	_endY = y + lengthdir_y(2000, _mouseDir);
	
	if (_canShoot == true)
	{
		draw_set_alpha(.2);
		if (obj_cursor._mode == "Drone")
			draw_set_color(make_color_rgb(251,75,75));
		else
			draw_set_color(c_yellow);
		draw_line_width(_startX, _startY, _endX, _endY, 4);
	}
}

draw_set_alpha(1);
draw_self();