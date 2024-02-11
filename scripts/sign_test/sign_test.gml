/// @function sign_test(_vertex_buffer, _ax, _ay, _bx, _by, _light_x, _light_y)
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

function sign_test(_vertex_buffer, _ax, _ay, _bx, _by, _light_x, _light_y)
{
	return ((_bx - _ax) * (_light_y - _ay) - (_by - _ay) * (_light_x - _ax));
}

