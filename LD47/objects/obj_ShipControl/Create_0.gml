/// @description Insert description here
// You can write your code in this editor
x = room_width/2;
y = room_height/2;

global.playerScore = 0;
alarm[1] = room_speed;
_listOfDroneGenerators = ds_list_create();
_listOfDestroyedParts = ds_list_create();
_activeResourcing = 0;

//Create the ship
_angle = 0;
_radius = 329;

//Create Ship
for(i=0; i<16; i++)
{
    _shipPart = instance_create_layer(x + lengthdir_x(_radius, _angle), y + lengthdir_y(_radius, _angle), "ShipBase", obj_shipPart);
    _shipPart.image_angle = _angle - 90;
	_shipPart._currentAngle = _angle;
	
	if (i == 3 || i == 9 || i == 13)
	{
		_shipPart._isDestroyed = true;
		ds_list_add(_listOfDestroyedParts, _shipPart);
	}
	
	//Create Drone Generator
	if (i mod 4 == 0)
	{
		_shipBuilding = instance_create_layer(x + lengthdir_x(_radius, _angle), y + lengthdir_y(_radius, _angle), "ShipBuilding", obj_droneGenerator);
		_shipBuilding.image_angle = _angle - 90;
		_shipBuilding._currentAngle = _angle;
		_shipPart._attachedBuilding = _shipBuilding;
		if (i != 4)
		{
			_shipBuilding._isActive = false;
		}
		else
		{
			_shipBuilding._isActive = true;
		}
		ds_list_add(_listOfDroneGenerators, _shipBuilding);
	}
	
	//Create Flipper
	if ((i + 2) mod 4 == 0)
	{
		_shipBuilding = instance_create_layer(x + lengthdir_x(_radius, _angle), y + lengthdir_y(_radius, _angle), "ShipBuilding", obj_flipHatch);
		_shipBuilding.image_angle = _angle - 90;
		_shipBuilding._currentAngle = _angle;
		_shipPart._attachedBuilding = _shipBuilding;
	}
	
	_angle += (360/16);
}

//Strut
_shipBuilding = instance_create_layer(x, y, "ShipStrut", obj_struts);

instance_create_layer(0, 0, "Character", obj_player);

//Ship variables
_shipHP = 40;
_shipResourcenium = 100;
alarm[0] = room_speed / 4; //Resource drain
_driftSpeed = .1;

//Cursor
window_set_cursor(cr_none);