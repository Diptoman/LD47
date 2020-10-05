/// @description Insert description here
// You can write your code in this editor
//Music
if (audio_get_name(global.music) == "snd_menu" || global.music == undefined || global.music == -1)
{
	if (audio_get_name(global.music) == "snd_menu")
	{
		audio_stop_all();
		global.music = audio_play_sound(snd_bgMain, 10, false);
		_audioState = 1;
	}
	else if (!audio_is_playing(global.music))
	{
		audio_stop_all();
		global.music = audio_play_sound(snd_bgMain, 10, false);
		_audioState = 1;
	}
}

if (!audio_is_playing(global.music))
{
	if (_audioState == 1)
	{
		global.music = audio_play_sound(snd_bg2, 10, false);
		_audioState = 2;
	}
	else if (_audioState == 2)
	{
		global.music = audio_play_sound(snd_bg3, 10, true);
		_audioState = 3;
	}
}

if keyboard_check_pressed(vk_f1)
{
   screen_save(working_directory + "\Screens\Screen_"+string(num)+".png")
   num += 1;

}