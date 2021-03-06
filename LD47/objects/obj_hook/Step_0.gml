/// @description Insert description here
// You can write your code in this editor

if (_returnJourney == false)
{
	if (_target == -1)
	{
		direction = _direction;
		speed = _spd;
		image_angle = direction;
	}
	else
	{
		if (distance_to_point(_target.x, _target.y) > 20)
		{
			move_towards_point(_target.x, _target.y, 16);
		}
		else
		{
			if (_isAttached == false)
			{
				_isAttached = true;
				_target._hookAttachment = id;
			}
			x = _target.x;
			y = _target.y;
		}
	}
}
else
{
	//If attached, bring back drone
	if (_isAttached == true)
	{
		_isAttached = false;
		_target._returnJourney = true;
		_target._target._attachedDrone = -1;
		_target._target = -1;
		if (_target._mode == "Resourcing")
		{
			obj_ShipControl._activeResourcing -= 1;
			
			if (obj_control._tutStage == 5)
			{
				obj_control._tutStage = 6;
			}
		}
		obj_player._currentDroneAmount += 1;
	}
	
	if (distance_to_point(obj_playerHand.x, obj_playerHand.y) > 32)
	{
		move_towards_point(obj_playerHand.x, obj_playerHand.y, 28);
	}
	else
	{
		obj_playerHand._isHookAttached = true;
		if (_target != -1)
		{
			with (_target) instance_destroy();
			//Particles
			burst = instance_create_depth(x,y, 100, obj_particleBurst);
			burst.partSprite = spr_smokeParticle;
			burst.partIndexAmount = 1;

			burst.num = 20;
			burst.minLife = 10;
			burst.maxLife = 15;
			burst.minSize = .5;
			burst.maxSize = .75;
			burst.minSpeed = 2;
			burst.maxSpeed = 4;
			burst.type = 2;
		}
		instance_destroy();
	}
}