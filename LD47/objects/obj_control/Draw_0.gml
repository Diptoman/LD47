/// @description Insert description here
// You can write your code in this editor

if (_tutStage == 1)
{
	_tutString = "Use A/D or Left/Right Arrow keys to move around.";
}
else if (_tutStage == 2)
{
	_tutString = "Hold and release Left Mouse Button to shoot out a drone at the meteorite.#The longer you hold, the faster the drone will go.#You can only have 5 drones active, so don't waste your shots.";
}
else if (_tutStage == 3)
{
	_tutString = "Drones collect fuel from meteorites as long as they stay there.#If a meteorite goes out of view with a drone attached, you lose that drone.#(Press S/Space/Down arrow to continue)";
} 
else if (_tutStage == 4)
{
	_tutString = "Hold and release Right Mouse Button to shoot a hook at the drone.#You can only have one active hook at a time, but it always comes back.#You can't shoot a drone while a hook is active.";
}
else if (_tutStage == 5)
{
	_tutString = "Once a hook is attached to a drone, you can press Right Mouse Button again to recall it.";
}
else if (_tutStage == 6)
{
	_tutString = "You can press Left Mouse Button when a hook is attached instead to destroy the drone and the asteroid.#Try destroying one now.#This is how you protect your satelloop from incoming collisions.";
}
else if (_tutStage == 7)
{
	_tutString = "If you have less drones than max capacity, you can collect them at any of the 4 drone generating stations if they're active.#(Press S/Down/Space to continue.)";
}
else if (_tutStage == 8)
{
	_tutString = "Ship sections can be broken when meteorites hit.#Let's fix the 3 broken sections of the ship now.#Go to any of the 4 flip hatches (they will light up), and press S/Down/Space to flip to the inner radius.";
}
else if (_tutStage == 9)
{
	_tutString = "Shoot drones at broken sections to fix them.#This consumes the drone.#Fix all the sections to continue.";
}
else if (_tutStage == 10)
{
	_tutString = "You can turn on/off drone generators with S/Down/Space while o ntop of them.#Drone generator buildings consume fuel, so the less active they are, the slower the fuel consumption.#Turn one on or off now to continue.";
}
else if (_tutStage == 11)
{
	_tutString = "Your journey is over when your satelloop health reaches zero, or you're out of fuel.#Good luck, traveller!#(Press S/Down/Space to begin game.)";
}


draw_set_alpha(1);
draw_set_font(fnt_small);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_text_outline(room_width / 2, 90, _tutString, 4, c_black, 64);
draw_set_color(c_red);
if (_tutStage != -1)
	draw_text_outline(room_width / 2, room_height - 90, "Press Escape to skip tutorial", 4, c_black, 64);

//Tutorial stuff
if (_tutStage >= 2 && _tutStage <= 6 && instance_number(obj_meteorite) < 2)
{
	_chance = floor(random(4));
	if (_chance == 0)
	{
		_mX = 72 + floor(random(144));
		_mY = -72;
	}
	else if (_chance == 1)
	{
		_mX = room_width - (72 + floor(random(144)));
		_mY = -72;
	}
	else if (_chance == 2)
	{
		_mX = 72 + floor(random(144));
		_mY = room_height + 72;
	}
	else if (_chance == 3)
	{
		_mX = room_width - (72 + floor(random(144)));
		_mY = room_height + 72;
	}
	_meteorite = instance_create_layer(_mX, _mY, "Meteorite", obj_meteorite);
}

if (_tutStage == 9)
{
	if (ds_list_size(obj_ShipControl._listOfDestroyedParts) == 0)
	{
		_tutStage = 10;
	}
}

if (_tutStage == 3 || _tutStage == 7 || _tutStage == 11 || _tutStage == 12)
{
	if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
	{
		_tutStage += 1;
	}
	
	if (_tutStage == 13)
	{
		_tutStage = -1;
		obj_ShipControl._shipHP = 100;
		obj_ShipControl._shipResourcenium = 50;
		alarm[0] = room_speed * 20; //Difficulty Increase
		alarm[1] = room_speed; //Meteorite spawn
		_tutString = "";
	}
}

if keyboard_check_pressed(vk_escape)
{
	if (_tutStage > 0)
	{
		_tutStage = -1;
		_tutString = "";
		obj_ShipControl._shipHP = 100;
		obj_ShipControl._shipResourcenium = 50;
		alarm[0] = room_speed * 20; //Difficulty Increase
		alarm[1] = room_speed; //Meteorite spawn
		
		for(i = 0; i < ds_list_size(obj_ShipControl._listOfDestroyedParts); i++)
		{
			ds_list_find_value(obj_ShipControl._listOfDestroyedParts, i)._isDestroyed = false;
		}
	}
	else
	{
		room_goto(rm_menu);
	}
}