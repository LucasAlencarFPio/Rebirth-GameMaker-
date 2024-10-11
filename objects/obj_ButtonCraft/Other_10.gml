/// @description Craft item
//get recipe
var _recipe = global.itemRecipe[item];
var _recipeSize = array_length(_recipe);

//ingredientes
for(var i = 0; i < _recipeSize; i++){
	//get data
	var _ingr = _recipe[i];
	var _item = _ingr[0];
	var _count = _ingr[1];
	
	//get array item
	var _arr = inv_get_item_array(_item);
	
	//reduce count
	_arr[@ 1] -= _count;
}

inv_add(item, 1);