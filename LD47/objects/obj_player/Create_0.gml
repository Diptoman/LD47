/// @description Insert description here
// You can write your code in this editor
_currentAngle = 0;
_spd = 1;
_innerRadius = 368;
_outerRadius = 448;
_radius = _outerRadius;
_droneCapacity = 5;
_currentDroneAmount = 5;

x = room_width/2 + lengthdir_x(_outerRadius, _currentAngle); 
y = room_height/2 + lengthdir_y(_outerRadius, _currentAngle);

_hand = instance_create_layer(x, y, "Hand", obj_playerHand);
_hand._player = id;
instance_create_layer(mouse_x, mouse_y, "Cursor", obj_cursor);