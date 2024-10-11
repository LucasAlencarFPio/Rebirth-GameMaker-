if(!collected && place_meeting(x, y, obj_player)){
//espaço pro inventario
	var _add = inv_add(type, 1);
//
collected = _add;
	
}

if(collected){
	image_alpha -= 0.05;
	y -= 0.5;
	
	if(image_alpha < 0.1){
		instance_destroy();
	}
}
//gravidade
if(z < 0){
	zspeed += 0.5;
	z += zspeed;
	
// colisão chão	
	if(z >= 0){
		z = 0;
		zspeed = 0;
	}
}