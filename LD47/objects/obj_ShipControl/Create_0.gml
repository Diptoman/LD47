/// @description Insert description here
// You can write your code in this editor
x = room_width/2;
y = room_height/2;
_angle = 0;
_radius = 409;
repeat(16)
{
    _inst = instance_create_layer(x + lengthdir_x(_radius, _angle), y + lengthdir_y(_radius, _angle), "Instances", obj_shipPart);
    _inst.image_angle = _angle - 90;
	_angle += (360/16);
}