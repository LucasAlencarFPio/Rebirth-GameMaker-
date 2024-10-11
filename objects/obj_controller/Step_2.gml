var _playerExists = instance_exists(obj_player);
var _heldItem = noone;

if(_playerExists) _heldItem = obj_player.heldItem;

with(all){
	depth = -bbox_bottom
	
	if(instance_exists(obj_player) && obj_player.heldItem == id) {
	depth -= 25;
	}
}