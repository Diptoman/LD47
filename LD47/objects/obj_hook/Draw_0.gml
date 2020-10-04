/// @description Insert description here
// You can write your code in this editor
_mouseDir = point_direction(obj_playerHand.x, obj_playerHand.y, mouse_x, mouse_y);
_startX = obj_playerHand.x + lengthdir_x(32, _mouseDir);
_startY = obj_playerHand.y + lengthdir_y(32, _mouseDir);

draw_set_color(c_white);
draw_set_alpha(.75);
draw_line_width(x, y, _startX, _startY, 2);
draw_self();