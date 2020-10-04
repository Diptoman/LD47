/// @description Insert description here
// You can write your code in this editor

_activeDroneGen = 0;
for(i=0; i<4; i++)
{
	if
	(ds_list_find_value(_listOfDroneGenerators, i)._isActive == true)
	{
		if (ds_list_find_value(_listOfDroneGenerators, i)._isDestroyed == false)
			_activeDroneGen += 1;
	}
}

_shipResourcenium -= (2 + _activeDroneGen) / 25;

alarm[0] = room_speed / 2;