//use
if(hover && lclick){
	//get array
	var _arr = obj_controller.invList[| slotID];
	
	if(is_array(_arr)){
		//vars
		var _item = _arr[0];
		var _count = _arr[1];
		
		var _used = false;
		
		//effect
		instance_activate_object(obj_player);
		
		switch(_item){
			case ITEM.POTION:
				with (obj_player){
					if (hp < hpMax){
						hp ++;
						_used = true;
						
						if(hp > hpMax) hp = hpMax;		
					}
				}
			break;
			
			case ITEM.SYRUP:
				with (obj_player){
					if (hp < hpMax){
						hp += 0.5;
						_used = true;
						
						if(hp > hpMax) hp = hpMax;
					}
				}
				break;
		}
		instance_deactivate_object(obj_player);
		
		//used
		if(_used){
			//reduce count
			_arr[@1] --;
			
			show_debug_message("o item não pode ser usado");
		} else {
			show_debug_message("o item não pode ser usado")
		}
	}
}

//remove
if(hover && rclick){
	//get array
	var _arr = obj_controller.invList[| slotID];
	if(is_array(_arr)){
	// reactive
	instance_activate_object(obj_player);
	
	//drop item
	var _item = _arr[0];
	var _count = _arr[1];
	
	repeat(_count){
		//posição
		var _x = obj_player.x + irandom_range(15, 20);
		var _y = obj_player.y + irandom_range(15, 20);
		
		//create item
		var _inst = instance_create_layer(_x, _y, "Instances", obj_item);
		
		//propries
		with(_inst){
		type = _item;
		
		sprite_index = global.itemSprite[_item];
		
		z = -20;
		}
	}
	instance_deactivate_object(obj_player);
	instance_deactivate_object(obj_item);
	
	inv_remove(slotID);
	}
}