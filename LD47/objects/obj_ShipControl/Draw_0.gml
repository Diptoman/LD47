/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1);
draw_sprite_ext(spr_shipCenterBack, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
//Convert stuff to scale
_resConverted = round((_shipResourcenium / 100) * 42) + 6;
_healthConverted = round((_shipHP / 100) * 40) + 7;
if (_shipHP <= 20)
{
	draw_healthbar_circular(x - 2, y, 115, 270, _healthConverted, spr_healthLow, false); // 47 (100) -> 7 (0)
}
else
{
	draw_healthbar_circular(x - 2, y, 115, 270, _healthConverted, spr_health, false); // 47 (100) -> 7 (0)
}
draw_healthbar_circular(x - 2, y, 115, 270, _resConverted, spr_resourcenium, true); // 48 (100) -> 6 (0)
draw_sprite_ext(spr_shipCenter, min(obj_player._currentDroneAmount + instance_number(obj_drone), 5), x, y, image_xscale, image_yscale, 0, c_white, 1);

draw_set_font(fnt_gameUI);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if (!instance_exists(obj_gameover)) {
draw_text(x + 166, y + 32, string(obj_player._currentDroneAmount) + "/" + string(obj_player._droneCapacity));
draw_text(x, y, string(global.playerScore) + " Days");
}
//draw_text(x + 178, y + 28, string(_activeResourcing));
