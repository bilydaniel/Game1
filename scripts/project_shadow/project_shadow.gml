/// @function project_shadow (_vertex_buffer, _ax, _ay, _bx, _by, _light_x, _light_y)
/// @param {VertexBuffer} _vertex_buffer vertex buffer
/// @param _ax x1
/// @param _ay y1
/// @param _bx x2
/// @param _by y2
/// @param _light_x light_x
/// @param _light_y light_y


/*
var _vertex_buffer = argument0;
var _ax = argument1;
var _ay = argument2;
var _bx = argument3;
var _by = argument4;
var _light_x = argument5;
var _light_y = argument6;
*/

//TODO ADD TILESET AND TILEMAP
function project_shadow(_vertex_buffer, _ax, _ay, _bx, _by, _light_x, _light_y)
{
	var _shadow_length = 20000;
	var _adx, _ady, _bdx, _bdy, _length;
	
	_adx = _ax - _light_x;
	_ady = _ay - _light_y;
	_length = (1.0 * _shadow_length) / sqrt((_adx * _adx) + (_ady * _ady))
	_adx = _ax + _adx * _length;
	_ady = _ay + _ady * _length;
	
	_bdx = _bx - _light_x;
	_bdy = _by - _light_y;
	_length = (1.0 * _shadow_length) / sqrt((_bdx * _bdx) + (_bdy * _bdy))
	_bdx = _bx + _bdx * _length;
	_bdy = _by + _bdy * _length;
	
	
	vertex_position(_vertex_buffer, _ax,_ay);
	vertex_argb(_vertex_buffer, $ff000000);
	vertex_position(_vertex_buffer, _bx,_by);
	vertex_argb(_vertex_buffer, $ff000000);
	vertex_position(_vertex_buffer, _adx, _ady);
	vertex_argb(_vertex_buffer, $ff000000);

	vertex_position(_vertex_buffer, _bx,_by);
	vertex_argb(_vertex_buffer, $ff000000);
	vertex_position(_vertex_buffer, _adx, _ady);
	vertex_argb(_vertex_buffer, $ff000000);
	vertex_position(_vertex_buffer, _bdx,_bdy);
	vertex_argb(_vertex_buffer, $ff000000);
	
}

