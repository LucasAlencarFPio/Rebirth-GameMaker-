var _margin = 10;
var _startX = _margin
var _startY = _margin;

var _size = sprite_get_height(spr_heart);
var _dist = _size + _margin;

with(obj_player){
	for(var i = 0; i < hp; i++){
		var _subImg = 0;
		
		if(hp - i <= 0.5){
			_subImg = 1;
		}
		
		draw_sprite(spr_heart, _subImg, _startX + _dist * i, _startY);
	}
}
