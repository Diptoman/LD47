/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
sprite_index = choose(spr_meteorite, spr_meteorite2, spr_meteorite3);
_spd =  .25 + random(.5) + (obj_control._difficulty/10);

//Choose direction
if (x < 0)
{
	_direction = -10 + floor(random(20));
}
else if (x > room_width)
{
	_direction = 170 + floor(random(20));
} 
else if ((y < 0) && (x < room_width/2))
{
	_direction = 260 + floor(random(20));
}
else if ((y < 0) && (x >= room_width/2))
{
	_direction = 260 + floor(random(20));
}
else if ((y > room_height) && (x < room_width/2))
{
	_direction = 80 + floor(random(20));
}
else if ((y > room_height) && (x >= room_width/2))
{
	_direction = 80 + floor(random(20));
}