/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

//pegar array da lista
var _list = obj_controller.invList;
var _arr = _list[| slotID];

//desenhar item
// Desenhar item
if (is_array(_arr)) {
    var _item = _arr[0];
    var _spr = global.itemSprite[_item];
    
    // Defina o fator de escala
    var _scale = 4.5;  // Escala 3x m 
 
    // Desenhar o sprite com escala aumentada
	
    draw_sprite_ext(_spr, 0, x + width / 3, y + height / 3, _scale,     
        _scale,  0, c_white, 1);
	var _count = _arr[1];
	
	
  
	
	draw_set_font(ftUI);
	draw_text(x + 2, y + 4, _count);
}