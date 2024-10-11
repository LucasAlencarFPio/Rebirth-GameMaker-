function inv_get_item_array(){
///@arg	item

//args
var _item = argument[0];

//get list
var _list = obj_controller.invList;
var _listSize = ds_list_size(_list);

//get array
for(var i = 0; i < _listSize; i++){
	// array
	var _arr = _list[| i];
	
	if(is_array(_arr)){
		var _arrItem = _arr[0];
		
		//check
		if(_arrItem == _item){
			return _arr;
		}
	}
}
return -1;
}
