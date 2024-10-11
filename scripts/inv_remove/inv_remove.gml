///@ arg pos
function inv_remove(){
var _pos = argument[0];

var _list = obj_controller.invList;

_list[| _pos] = -1;
}