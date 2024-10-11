//pegando os inputs do player
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));

//aplicando velocidade
var _input_y = (_down - _up);
var _input_x = (_right - _left);

//pegando vel
moveX = _input_x * move_speed;
moveY = _input_y * move_speed;

//boost
moveX += round(boostX);
moveY += round(boostY);

boostX = lerp(boostX, 0, 0.1);
boostY = lerp(boostY, 0, 0.1);

//colisão
if (place_meeting(x + moveX, y, obj_colisor)){
 
	moveX = 0;	
}

if (place_meeting(x, y + moveY, obj_colisor)){
	
	moveY = 0;
}

//movimento
x += moveX;
y += moveY;

// animação
if (moveX != 0 or moveY != 0){
	sprite_index = spr_player_move;

}else{
	sprite_index = spr_player_idle;	
}

//direction
var _signMouse = sign(mouse_x - x);

if(_signMouse != 0) {
	image_xscale = _signMouse;
}

//animated speed
if (moveX != 0 && sign(moveX) != _signMouse){
	image_speed = -1;
}else{
	image_speed = 1;	
}

if(hp <= 0){
	instance_destroy();
	
	obj_controller.alarm[0] = 60;
}