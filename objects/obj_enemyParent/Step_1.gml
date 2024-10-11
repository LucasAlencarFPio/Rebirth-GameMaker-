/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//roaming
if(!following){
	moveSpeed = moveSpeedRoam;
	
	//position
	if(roamTime == 0){
		var _len = random(roamDistance);
		var _dir = random(360);
		
		targetX = xstart + lengthdir_x(_len, _dir);
		targetY = ystart + lengthdir_y(_len, _dir);
		
		roamTime = 120;
	}else roamTime --;
	
	if(instance_exists(obj_player) && distance_to_object(obj_player) < followDistance){
		following = true;
	}
}else{
	moveSpeed = moveSpeedFollow;
	
	if(instance_exists(obj_player) && distance_to_object(obj_player) < followDistance * 1.3) {
		targetX = obj_player.x;
		targetY = obj_player.y;
	}else{
		following = false;
	}
}

if(point_distance(x,y, targetX, targetY) > moveSpeed){
	inputX = clamp(targetX - x, -1, 1);
	inputY = clamp(targetY - y, -1, 1);
}else{
	inputX = 0;
	inputY = 0;
}
if(following){
	var _newX = x + inputX * moveSpeed;
	var _newY = y + inputY * moveSpeed;
	
	if(place_meeting(_newX, _newY, obj_enemyParent)){
		inputX = 0;
		inputY = 0;
	}

}