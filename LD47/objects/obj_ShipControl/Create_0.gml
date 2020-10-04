/// @description Insert description here
// You can write your code in this editor
x = room_width/2;
y = room_height/2;

//Create the ship
_angle = 0;
_radius = 409;

//Create Ship
for(i=0; i<16; i++)
{
    _shipPart = instance_create_layer(x + lengthdir_x(_radius, _angle), y + lengthdir_y(_radius, _angle), "ShipBase", obj_shipPart);
    _shipPart.image_angle = _angle - 90;
	_shipPart._currentAngle = _angle;
	_angle += (360/16);
	
	//Create Drone Generator
	if (i mod 4 == 0)
	{
		_shipBuilding = instance_create_layer(x + lengthdir_x(_radius, _angle), y + lengthdir_y(_radius, _angle), "ShipBuilding", obj_droneGenerator);
		_shipBuilding.image_angle = _angle - 90;
		_shipBuilding._currentAngle = _angle;
	}
	
	//Create Flipper
	if ((i + 2) mod 4 == 0)
	{
		_shipBuilding = instance_create_layer(x + lengthdir_x(_radius, _angle), y + lengthdir_y(_radius, _angle), "ShipBuilding", obj_flipHatch);
		_shipBuilding.image_angle = _angle - 90;
		_shipBuilding._currentAngle = _angle;
	}
}

instance_create_layer(0, 0, "Character", obj_player);

//Ship variables
_shipHP = 100;
_shipResourcenium = 40;
_driftSpeed = .1;

//Cursor
window_set_cursor(cr_none);