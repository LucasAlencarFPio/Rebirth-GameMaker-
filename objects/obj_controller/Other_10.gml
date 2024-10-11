/// @description creat user inv UI
#region inv
//dimensões
var _margin = 70;
var _sep = 18;
var _cellSize = 150;

// itens
var _sizeX = 6;
var _sizeY = 3;

//cordenadas
var _invX = _margin;
var _invY = RES.HEIGHT - (_margin + _sep + _cellSize * _sizeY);

//criar botões
var _x = 0;
var _y = 0;

for(var i = 0; i<INV_SIZE; i++){
	//button cordinates
	var _buttonX = _invX + (_sep + _cellSize) * _x;
	var _buttonY = _invY + (_sep + _cellSize) * _y;
	
	//criar botão
	var _button = instance_create_depth(_buttonX, _buttonY, 0, obj_ButtonInv);
	
	//propriedades
	with(_button){
		slotID = i;
		
		width = _cellSize;
		height = _cellSize;
	}
	// mover position
	_x ++;
	
	if(_x == _sizeX){
		_x = 0;
		_y ++;
	}
}
#endregion

#region craft
//propriedades
var _w = 755;
var _h = 160;
var _x = RES.WIDTH - (_w + (_margin - 10));
var _y = _sep;

var _titleH = 45;

//criar botoes
var _arr = global.craftingMenu;
var _size = array_length(_arr);

for(var i = 0; i < _size; i++){
	var _item = _arr[i];
	
	//titulo
	if(is_string(_item)){
		creatButtonTitle(_x, _y, _w, _titleH, _item);
		
		
		_y += (_titleH + (_sep + 20));
	}
	//botão do craft
	else{
		creatButtonCraft(_x, _y, _w, _h, _item);
		
		_y += ((_h+20) + _sep + 3);
	}
}

cMenuHeight = _y - RES.HEIGHT;
#endregion