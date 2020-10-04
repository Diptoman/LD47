/// @description Insert description here
// You can write your code in this editor
randomize();
instance_create_layer(0, 0, "Instances", obj_ShipControl);

_difficulty = 10;
alarm[0] = room_speed * 30; //Difficulty Increase
alarm[1] = room_speed; //Meteorite spawn