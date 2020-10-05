/// @description Insert description here
// You can write your code in this editor
image_angle = floor(random(360));
image_speed = 1;
_target = -1;
_isAttached = false;
_mode = "Blank";
_targetType = "Blank";
_hookAttachment = -1;
_returnJourney = false;

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
