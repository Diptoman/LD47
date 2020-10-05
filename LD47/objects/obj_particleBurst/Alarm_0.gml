/// @description Insert description here
// You can write your code in this editor
for(i = 0; i<num; i++)
{
	particle = instance_create_layer(x, y, layerName, obj_particle)
	particle.direction = irandom_range(generalDir-dirVariation,generalDir+dirVariation)
	particle.speed = random_range(minSpeed, maxSpeed)
	particle.image_xscale = random_range(minSize, maxSize)
	particle.image_yscale = particle.image_xscale
	
	particle.life = irandom_range(minLife, maxLife)
	particle.sprite_index = partSprite;
	particle.image_index = floor(random(partIndexAmount));
	particle.image_angle = particle.direction

}
instance_destroy()