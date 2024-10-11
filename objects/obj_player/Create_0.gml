//propriedades
move_speed = 2;

knockbackSpeed = 4;
//variáveis
moveX = 0;
moveY = 0;

boostX = 0;
boostY = 0;

// cria a picareta
heldItem = instance_create_layer(x, y, "Instances_1", obj_picareta);

hp = 3;
hpMax = hp;