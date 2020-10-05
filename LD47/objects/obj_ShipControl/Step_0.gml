/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_gameover)) {
if (_shipResourcenium> 100)
	_shipResourcenium = 100;
if (_shipResourcenium <= 0)
{
	_shipResourcenium = 0;
	if (!instance_exists(obj_gameover))
	{
		a = instance_create_layer(room_width/2, room_height + 1200, "GameOver", obj_gameover);
		a._txt = "Satelloop Out Of Fuel!";
	}
}

if (obj_control._tutStage > 0)
{
	if (_shipResourcenium <= 20)
{
	_shipResourcenium = 20;
}
}

if (_shipHP > 100)
	_shipHP = 100;
if (_shipHP <= 0)
{
	_shipHP = 0;
	if (!instance_exists(obj_gameover))
	{
		a = instance_create_layer(room_width/2, room_height + 1200, "GameOver", obj_gameover);
		a._txt = "Satelloop Destroyed!";
	}
}
}