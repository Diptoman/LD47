/// @description Insert description here
// You can write your code in this editor

if (_isAttached) && (_mode == "Repairing") && (_target != -1)
{
	_target._isDestroyed = false;
	if (ds_list_find_index(obj_ShipControl._listOfDestroyedParts, _target.id) >= 0)
	{
		ds_list_delete(obj_ShipControl._listOfDestroyedParts, ds_list_find_index(obj_ShipControl._listOfDestroyedParts, _target.id));
	}
	obj_ShipControl._shipHP += 20;
	if (_target._attachedBuilding != -1)
	{
		_target._attachedBuilding._isDestroyed = false;
	}
	
	instance_destroy();
	//Particles
	burst = instance_create_depth(x,y, 100, obj_particleBurst);
	burst.partSprite = spr_smokeParticle;
	burst.partIndexAmount = 1;

	burst.num = 20;
	burst.minLife = 10;
	burst.maxLife = 15;
	burst.minSize = .5;
	burst.maxSize = 1;
	burst.minSpeed = 4;
	burst.maxSpeed = 6;
	burst.type = 2;

	_target._attachedDrone = -1;
}