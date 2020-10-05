/// @description Destroy
// You can write your code in this editor


if (other._isDestroyed == false)
{
	obj_ShipControl._shipHP -= 20;
	other._isDestroyed = true;
	if (instance_exists(other._attachedBuilding))
	{
		other._attachedBuilding._isDestroyed = true;
	}
}
audio_play_sound(snd_asteroidHitShip, 1, 0);
instance_create_layer(0, 0, "Instances", obj_screenShake);
//Particles
burst = instance_create_depth(x,y, 100, obj_particleBurst);
burst.partSprite = spr_meteorite_explode_particles;
burst.partIndexAmount = 4;

burst.num = 20;
burst.minLife = 60;
burst.maxLife = 90;
burst.minSize = .75;
burst.maxSize = 1.5;
burst.minSpeed = 3;
burst.maxSpeed = 5;
burst.type = 2;
instance_destroy();