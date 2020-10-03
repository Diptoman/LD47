/// @description draw_healthbar_circular(center x, center y, radius, start angle, percent health, sprite, alpha)
/// @param center x
/// @param  center y
/// @param  radius
/// @param  start angle
/// @param  percent health
/// @param  sprite
/// @param  alpha
///@param flip
function draw_healthbar_circular(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {
	var cx,cy,rad,sang,hp,tex,steps,thick,oc,alpha,flip;
	cx=argument0
	cy=argument1
	rad=argument2
	sang=argument3
	hp=argument4
	alpha=argument6
	tex=sprite_get_texture(argument5,0)
	steps=200
	thick=sprite_get_height(argument5)
	flip=argument7

	if ceil(steps*(hp/100)) >= 1 {
    
	    oc=draw_get_color()
	draw_set_color(c_white)
	draw_set_alpha(alpha);

	    var step,ang,side,hps,hpd;
	    step=0
	    ang=sang
	    side=0
	    draw_primitive_begin_texture(pr_trianglestrip,tex)
	    draw_vertex_texture(cx+lengthdir_x(rad-thick/2+thick*side,ang),cy+lengthdir_y(rad-thick/2+thick*side,ang),side,side)
	    side=!side
	    draw_vertex_texture(cx+lengthdir_x(rad-thick/2+thick*side,ang),cy+lengthdir_y(rad-thick/2+thick*side,ang),side,side)
	    side=!side
	    draw_vertex_texture(cx+lengthdir_x(rad-thick/2+thick*side,ang+360/steps),cy+lengthdir_y(rad-thick/2+thick*side,ang+360/steps),side,side)
	    side=!side
	    hps=hp/(ceil(steps*(hp/100))+1)
	    hpd=0
	    repeat ceil(steps*(hp/100)+1) {
	        step+=1
        
	        if step=ceil(steps*(hp/100)+1) { //final step
				if (flip == true) { 
					ang-=(360/steps)*(hp - hpd)/2 
				}
				else { 
					ang+=(360/steps)*(hp - hpd)/2 
				}
	            if ang>sang+360 ang=sang+360
	            draw_vertex_texture(cx+lengthdir_x(rad-thick/2+thick*side,ang),cy+lengthdir_y(rad-thick/2+thick*side,ang),side,side)
	            side=!side
	            draw_vertex_texture(cx+lengthdir_x(rad-thick/2+thick*side,ang),cy+lengthdir_y(rad-thick/2+thick*side,ang),side,side)
	        }
	        else {
	            if (flip == true) { 
					ang-=360/steps 
				}
				else { 
					ang+=360/steps
				}
	            draw_vertex_texture(cx+lengthdir_x(rad-thick/2+thick*side,ang),cy+lengthdir_y(rad-thick/2+thick*side,ang),side,side)
	            side=!side
	        }
	        hpd+=hps
	    }
	    draw_primitive_end()
    
	    draw_set_color(oc)
	
		draw_set_alpha(1);
	}


}
