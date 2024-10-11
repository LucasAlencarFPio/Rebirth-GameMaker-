function inv_add(){

var _item = argument[0];
var _count	= argument[1];

var _list = obj_controller.invList;

var _listSize = ds_list_size(_list);

for(var i = 0; i < _listSize; i++){
	var _arr = _list[| i];
	
	if (is_array(_arr) && _arr[0] == _item){
		_arr[@1] += _count;
		
		return true;
	}
}

for(var i = 0; i < _listSize; i++){
	var _arr = _list[| i];
	
	if(! is_array(_arr)){
		_list[| i] = [_item, _count];
		
		return true;
	}
}

if(_listSize >= INV_SIZE){
	return false;
}

var _arr = [_item, _count];

ds_list_add(_list, _arr);

return true;
}