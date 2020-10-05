/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_gameover) && (obj_control._tutStage == -1)) {
global.playerScore += 1;
}
alarm[1] = room_speed;