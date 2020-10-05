/// @description Insert description here
// You can write your code in this editor

if (_shipResourcenium> 100)
	_shipResourcenium = 100;
if (_shipResourcenium <= 0)
{
	_shipResourcenium = 0;
}

if (_shipHP > 100)
	_shipHP = 100;
if (_shipHP <= 0)
{
	_shipHP = 0;
	if (!instance_exists(obj_gameover))
		instance_create_layer(room_width/2, room_height + 1200, "GameOver", obj_gameover);
}

if (keyboard_check_pressed(vk_control))
{
	_shipHP -= 100;
}