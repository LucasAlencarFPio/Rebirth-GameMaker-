/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

//propriedades
moveSpeedRoam = 0.7;
moveSpeedFollow = 1.3;

moveSpeed = moveSpeedRoam;

targetX = 0;
targetY = 0;

following = false;
followDistance = 70;

roamDistance = 60;
roamTime = 0;

//attack
attackCooldown = 0;
attackRadius = 8;