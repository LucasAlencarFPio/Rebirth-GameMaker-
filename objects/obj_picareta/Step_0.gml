rotation = lerp(rotation, 45, 0.1);

image_angle = rotation * obj_player.image_xscale;

var _mousePress = mouse_check_button(mb_left);

var _breakable = instance_position(mouse_x, mouse_y, obj_BreakableParent);

with(_breakable){

	var _dist = distance_to_object(obj_player);
	
	if(_dist < other.breakDistance){
		other.selectorInst = id;
	
		if(other.cooldown == 0 && _mousePress){
		
			other.rotation = -80;
			other.cooldown = 20;
			
			hp--;
		}
	}
}

var _enemy = instance_position(mouse_x, mouse_y, obj_enemyParent);

with(_enemy){

	var _dist = distance_to_object(obj_player);
	
	if(_dist < other.attackDistance){
		other.selectorInst = id;
	
		if(other.cooldown == 0 && _mousePress){
		
			other.rotation = -80;
			other.cooldown = 30;
			
			//attack
			getAttacked(obj_player);
		}
	}
}


if(cooldown > 0) cooldown --;