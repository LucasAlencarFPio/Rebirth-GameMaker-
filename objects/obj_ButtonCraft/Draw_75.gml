if(hover){
	var _size = 60;
	var _margin = 30;
	var _cellSize = _size + _margin * 2;
	
	var _x = device_mouse_x_to_gui(0) + 4;
	var _y = device_mouse_y_to_gui(0);
	
	//receita
	var _recipe = global.itemRecipe[item];
	var _recipeSize = array_length(_recipe);
	
	//background
	draw_set_color(c_dkgray);
	draw_rectangle(_x, _y, _x + _cellSize * _recipeSize, _y + _cellSize, 0);
	draw_set_color(c_white);
	
	//loop e itens
	for(var i = 0; i < _recipeSize; i++){
		//posição
		var _dx = _x + _cellSize * i;
		var _dy = _y;
		
		//ingredient data
		var _ingr = _recipe[i];
		var _item = _ingr[0];
		var _count = _ingr[1];
		
		var _spr = global.itemSprite[_item];

var _spr = global.itemSprite[_item];

// Defina a escala padrão (por exemplo, 2x maior)
var _scale = 4;  // Valor padrão

// Se o item é o que não está correto, ajuste a escala ou a posição
if (_item == "madeira" or _item == "recipiente") {  // Substitua pelo nome do item problemático
    _scale = 1.5;  // Ajuste a escala conforme necessário
}

// Pega a largura e altura do sprite original
var _spr_width = sprite_get_width(_spr);
var _spr_height = sprite_get_height(_spr);

if (_item == "recipiente" or _item == "vidro") {  
    // Calcula a posição específica para "recipiente" ou "vidro"
    var _sprite_x = _dx + (_cellSize - (_spr_width * _scale)) / 4;
    var _sprite_y = _dy + (_cellSize - (_spr_height * _scale)) / 4;
} else {
    // Calcula a posição centralizada padrão para outros itens
    var _sprite_x = _dx + (_cellSize - (_spr_width * _scale)) / 2;
    var _sprite_y = _dy + (_cellSize - (_spr_height * _scale)) / 2;
}

// Desenha o sprite com a escala ajustada
draw_sprite_ext(_spr, 0, _sprite_x, _sprite_y, _scale, _scale, 0, c_white, 1);
		
		//draw count
		draw_set_font(ftUI);
		draw_text(_dx + _cellSize * 0.8, _dy + _cellSize * 0.7, _count);		
	}
}
