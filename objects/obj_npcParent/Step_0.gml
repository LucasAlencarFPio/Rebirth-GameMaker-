//pegando vel
var targetX = inputX * move_speed;
var targetY = inputY * move_speed;

// valores de aceleração e desaceleração
var acceleration = 0.1; // Quanto mais alto, mais rápido ele acelera
var deceleration = 0.1; // Quanto mais alto, mais rápido ele desacelera

// aplicar aceleração e desaceleração em X
if (moveX < targetX) {
    moveX = min(moveX + acceleration, targetX);
} else if (moveX > targetX) {
    moveX = max(moveX - deceleration, targetX);
}

// aplicar aceleração e desaceleração em Y
if (moveY < targetY) {
    moveY = min(moveY + acceleration, targetY);
} else if (moveY > targetY) {
    moveY = max(moveY - deceleration, targetY);
}

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

// movimento
x += moveX;
y += moveY;

// animação
if (moveX != 0 or moveY != 0){
    sprite_index = spriteMove;
} else {
    sprite_index = spriteIdle;	
}

// Suavizar a direção
var prev_direction = image_xscale;
var current_direction = sign(moveX);

// Apenas mudar a escala se houver uma mudança significativa
if (current_direction != 0 && current_direction != prev_direction) {
    image_xscale = current_direction;
}

//animated speed
if (moveX != 0 && sign(moveX) != current_direction){
    image_speed = -1;
} else {
    image_speed = 1;	
}

// Destruir o inimigo quando HP chegar a 0
if(hp <= 0){
    instance_destroy();
}