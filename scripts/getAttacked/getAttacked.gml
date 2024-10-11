/// @arg attacker
function getAttacked(){
// args
var _attacker =	argument[0];

hp--;

//knockback
var _dir = point_direction(obj_player.x, obj_player.y, x, y);
			
boostX = lengthdir_x(knockbackSpeed, _dir);
boostY = lengthdir_y(knockbackSpeed, _dir);
}