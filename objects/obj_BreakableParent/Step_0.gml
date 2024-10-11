if (hp <= 0) {
instance_destroy();

	var _resCount = choose(1, 1, 1, 1, 2, 2, 3);

	var _resMax = array_length(res);

	repeat(_resCount){
		
		var _resID = irandom(_resMax - 1);
		
		var _res = res[_resID];
		
		var _x = x + irandom_range(-3, 3);
		var _y = y + irandom_range(-8, 8);
		
		var _inst = instance_create_layer(_x, _y, "instances", obj_item);
		
		with(_inst){
			type = _res;
			
			sprite_index = global.itemSprite[_res];
			
			z = -other.sprite_height / 2;
		}
	}
}