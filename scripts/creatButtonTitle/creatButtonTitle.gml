/// @arg	x
/// @arg	y
/// @arg	w
/// @arg	h
/// @arg	title
function creatButtonTitle(){


var _x = argument[0];
var _y = argument[1];
var _w = argument[2];
var _h = argument[3];
var _title = argument[4];

var _inst = instance_create_depth(_x, _y, 0, obj_ButtonTitle);

with(_inst) {
	width = _w;
	height = _h;
	
	title = _title;
}

return _inst;
}
