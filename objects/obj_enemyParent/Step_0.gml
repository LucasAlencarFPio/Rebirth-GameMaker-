/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

//attack player
if(collision_circle(x, y, attackRadius, obj_player, false, false) && attackCooldown == 0){
	with(obj_player){
		getAttacked(other);
	}
	
	attackCooldown = 180;
	}
	if(attackCooldown > 0) attackCooldown--;