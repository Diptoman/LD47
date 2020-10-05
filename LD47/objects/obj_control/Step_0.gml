/// @description Insert description here
// You can write your code in this editor
//Music

if (audio_get_name(global.music) == "snd_bgMain")
{
	if (!audio_is_playing(global.music))
	{
		global.music = audio_play_sound(snd_bg2, 10, false);
	}
}

if (audio_get_name(global.music) == "snd_bg2")
{
	if !audio_is_playing(global.music)
	{
		global.music = audio_play_sound(snd_bg3, 10, true);
	}
}