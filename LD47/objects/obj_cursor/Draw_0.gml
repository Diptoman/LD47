/// @description Insert description here
// You can write your code in this editor


if (_mode == "Drone")
{
	_pointerSprite = spr_UI_droneCursor_Side;
}
else if (_mode == "Hook")
{
	_pointerSprite = spr_UI_hookCursor_Side;
}

for(i = 1; i < 5; i++)
{
	draw_sprite_ext(_pointerSprite, 0, x + lengthdir_x(_pressAmount, 90*(i - 1)), y + lengthdir_y(_pressAmount, 90*(i-1)), image_xscale, image_yscale, 90*(i-1), c_white, 1);
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);