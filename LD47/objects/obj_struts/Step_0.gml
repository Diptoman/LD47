/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_gameover)) {
_currentAngle = (_currentAngle - obj_ShipControl._driftSpeed) mod 360;
image_angle = _currentAngle;
}