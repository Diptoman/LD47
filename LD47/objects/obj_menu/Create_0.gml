/// @description Insert description here
// You can write your code in this editor
x = 0; 
y = 0;

//TweenFire(id, EaseOutQuad, 0, false, 0, 45, x__, - 1920, x);

//TweenFire(id, EaseOutQuad, 0, false, 0, 60, image_alpha__, 0, 1);

audio_stop_all();
global.music = audio_play_sound(snd_menu, 10, true);

instance_create_layer(room_width/2, room_height/2, "Bg", obj_bg);

data = file_text_open_read("GameData.dat");
if (data == -1)
{
	data = file_text_open_write("GameData.dat");
	file_text_close(data);
}
else
{
	ds_list_read(global.gamedata, file_text_read_string(data));
	file_text_close(data);
}

if (ds_list_size(global.gamedata) == 0)
{
	ds_list_add(global.gamedata, 0);
	data = file_text_open_write("GameData.dat");
	file_text_write_string(data, ds_list_write(global.gamedata));
	file_text_close(data);
}

global.highscore = ds_list_find_value(global.gamedata, 0);

if (os_browser == os_browser)
{
var a = browser_width;
var b = browser_height;

if(a < room_width)
{
	b = (room_height/room_width) * a
	window_set_size(a, b);
}
else if(b < room_height)
{
	a = (room_width/room_height) * b
	window_set_size(a, b);
}
}