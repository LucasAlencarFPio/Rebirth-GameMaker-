//mouse
var _held = hover && mouse_check_button(mb_left);
//click pra craft
if(_held && craftAnim <= 0){
	//pega a receita
	var _recipe = global.itemRecipe[item];
	var _recipeSize = array_length(_recipe);
	
	//check ingredients
	var _canCraft = true;
	
	for(var i = 0; i < _recipeSize; i++){
		//pegar ingredientes
		var _ingr = _recipe[i];
		var _item = _ingr[0];
		var _count = _ingr[1];
		
		//pegar array do item
		var _arr = inv_get_item_array(_item);
		
		if(!is_array(_arr)){
			_canCraft = false;
			break;
		}
		//check count
		var _arrCount = _arr[1];
		
		if(_arrCount < _count){
			_canCraft = false;
			break;
		}
	}
	if(_canCraft){
		craftAnim = 0.02;
	}
}
// animation
if(_held && craftAnim > 0){
	craftAnim += 0.02;
	
	//craft
	if(craftAnim >= 1){
		event_user(0);
		craftAnim = 0;
	}
}
else{
	craftAnim = 0;
}