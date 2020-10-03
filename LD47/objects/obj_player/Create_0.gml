/// @description Insert description here
// You can write your code in this editor
_currentAngle = 0;
_spd = .75;
_driftSpd = .1;
_innerRadius = 358;
_outerRadius = 460;

x = room_width/2 + lengthdir_x(_outerRadius, _currentAngle); 
y = room_height/2 + lengthdir_y(_outerRadius, _currentAngle);