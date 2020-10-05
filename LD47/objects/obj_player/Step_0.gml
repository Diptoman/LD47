/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_gameover)){
//Flip
if (collision_point(x, y, obj_flipHatch, 0, 0))
{
	if (obj_control._tutStage == -1 || obj_control._tutStage >= 8) 
	{
		_hatch = collision_point(x, y, obj_flipHatch, 0, 0);
		_hatch.image_index = 1;
	}
	
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_space))
	{
		if (obj_control._tutStage == -1 || obj_control._tutStage >= 8) 
		{
			if (_radius == _outerRadius)
			{
				_radius = _innerRadius;
				image_yscale = -1;
			}
			else
			{
				_radius = _outerRadius;
				image_yscale = 1;
			}
			audio_play_sound(snd_flip, 1, 0);
		
			if (obj_control._tutStage == 8)
				obj_control._tutStage = 9;
		}
	}
}
else
{
	if (_hatch != -1)
	{
		_hatch.image_index = 0;
		_hatch = -1;
	}
}

//DroneGen control
if (collision_point(x, y, obj_droneGenerator, 0, 0))
{
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_space))
	{
		_droneGen = collision_point(x, y, obj_droneGenerator, 0, 0);
		_droneGen._isActive = !_droneGen._isActive;
		
		audio_play_sound(snd_switch, 1, 0);
		
		if (obj_control._tutStage == 10)
			obj_control._tutStage = 11;
	}
}

if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	_currentAngle = (_currentAngle + _spd) mod 360;
	x = room_width/2 + lengthdir_x(_radius, _currentAngle); 
	y = room_height/2 + lengthdir_y(_radius, _currentAngle);
	image_xscale = 1;
	
	image_speed = 1;
	
	if (obj_control._tutStage == 1)
		obj_control._tutStage = 2;
}
if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	_currentAngle = (_currentAngle - _spd) mod 360;
	x = room_width/2 + lengthdir_x(_radius, _currentAngle); 
	y = room_height/2 + lengthdir_y(_radius, _currentAngle);
	image_xscale = -1;
	
	image_speed = 1;
	
	if (obj_control._tutStage == 1)
		obj_control._tutStage = 2;
}

if (!keyboard_check(vk_right) && !keyboard_check(ord("D")) && !keyboard_check(vk_left) && !keyboard_check(ord("A")))
{
	image_speed = 0;
}
else
{
	//Particles
	burst = instance_create_depth(x,y, 100, obj_particleBurst);
	burst.partSprite = spr_smokeParticle;
	burst.partIndexAmount = 1;

	burst.num = 10;
	burst.minLife = 10;
	burst.maxLife = 20;
	burst.minSize = .5;
	burst.maxSize = .6;
	burst.minSpeed = 0;
	burst.maxSpeed = 0;
	burst.type = 2;
	burst.layerName = "Instances";
}

//Automove
_currentAngle = (_currentAngle - obj_ShipControl._driftSpeed) mod 360;
x = room_width/2 + lengthdir_x(_radius, _currentAngle); 
y = room_height/2 + lengthdir_y(_radius, _currentAngle);

image_angle = _currentAngle - 90;
}