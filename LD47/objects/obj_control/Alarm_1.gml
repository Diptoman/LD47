/// @description Spawning
// You can write your code in this editor
if (!instance_exists(obj_gameover)) {
alarm[1] = max(max(8 - (_difficulty/3), 3) - floor(random(3)), 2)*room_speed;

//Select meteorite spawn point
_chance = floor(random(10));
if (_chance < 3)
{
	_mX = -72;
	_mY = 72 + floor(random(room_height - 144));
}
else if (_chance < 6)
{
	_mX = room_width + 72;
	_mY = 72 + floor(random(room_height - 144));
}
else if (_chance == 6)
{
	_mX = 72 + floor(random(144));
	_mY = -72;
}
else if (_chance == 7)
{
	_mX = room_width - (72 + floor(random(144)));
	_mY = -72;
}
else if (_chance == 8)
{
	_mX = 72 + floor(random(144));
	_mY = room_height + 72;
}
else if (_chance == 9)
{
	_mX = room_width - (72 + floor(random(144)));
	_mY = room_height + 72;
}

_meteorite = instance_create_layer(_mX, _mY, "Meteorite", obj_meteorite);
}