/// @description Insert description here
// You can write your code in this editor
life-=1
	
if life<fadeStart
	image_alpha = life/fadeStart
if(life<=0)
	instance_destroy()
