/// @description Insert description here
// You can write your code in this editor
if (_target == -1) && (other._attachedDrone == -1) && (_returnJourney == false) && (other._isDestroyed == true)
{
	_target = other;
	_targetType = "ShipPart";
}