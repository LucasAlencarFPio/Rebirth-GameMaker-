/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if(craftAnim > 0){
	draw_rectangle(x, y, x + width * craftAnim, y + height, 0)
}

var _margin = 50;

var _size = 3;
var _sizeNew = (height / 2.2 )-( _margin );
var _scale = (_sizeNew / _size);

//item
var _spr = global.itemSprite[item];

draw_sprite_ext(_spr, 0, x + _margin + _sizeNew / 2, y + (_margin + 55) + (_sizeNew / 3), _scale, _scale, 0, c_white, 1);
	
//nome
var _name = global.itemName[item];

draw_set_font(ftUI);

draw_text(x + _margin * 2 + _sizeNew, y + _margin + 2, _name);