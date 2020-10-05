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
instance_destroy();