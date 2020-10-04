/// @description Insert description here
// You can write your code in this editor
x = room_width/2;
y = room_height/2;

//Create the ship
_angle = 0;
_radius = 409;
repeat(16)
{
    _inst = instance_create_layer(x + lengthdir_x(_radius, _angle), y + lengthdir_y(_radius, _angle), "Instances", obj_shipPart);
    _inst.image_angle = _angle - 90;
	_inst._currentAngle = _angle;
	_angle += (360/16);
}

instance_create_layer(0, 0, "Character", obj_player);

//Ship variables
_shipHP = 100;
_shipResourcenium = 40;
_driftSpeed = .1;

//Cursor
window_set_cursor(cr_none);