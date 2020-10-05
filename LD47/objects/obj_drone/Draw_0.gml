/// @description Insert description here
// You can write your code in this editor

draw_self();
if ((alarm[0] > 0) && (_isAttached == true))
{
	draw_healthbar_circular(x, y,48, 0, (alarm[0] / (room_speed * 2)) * 100, spr_repairTime, true);
}