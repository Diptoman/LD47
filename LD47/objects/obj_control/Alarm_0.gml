/// @description Increase Difficulty
// You can write your code in this editor

if (!instance_exists(obj_gameover)) {
_difficulty += 1;
alarm[0] = room_speed*(20 + _difficulty);
}