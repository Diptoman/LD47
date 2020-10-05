/// @description Insert description here
// You can write your code in this editor

TweenFire(id, EaseOutQuad, 0, false, 0, 45, y__, room_height + 384, room_height / 2 - 224);

hiscore = false;
scr = 0;

if (global.playerScore > global.highscore)
{
	ds_list_replace(global.gamedata, 0, global.playerScore);
	data = file_text_open_write("GameData.dat");
	file_text_write_string(data, ds_list_write(global.gamedata));
	file_text_close(data);
	global.highscore = global.playerScore;
	hiscore = true;
}
	
scr = global.playerScore;
_txt = "";