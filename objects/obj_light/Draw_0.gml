/// @description Insert description here
// You can write your code in this editor

tilemap = layer_tilemap_get_id("walls");
show_debug_message(tilemap);
light_x = mouse_x;
light_y = mouse_y;

draw_self();

var _start_x = floor((light_x - radius) / tile_size);
var _end_x = floor((light_x + radius) / tile_size);
var _start_y = floor((light_y - radius) / tile_size);
var _end_y = floor((light_y + radius) / tile_size);

//DEBUG
draw_set_color(c_yellow);
draw_rectangle(_start_x * tile_size, _start_y * tile_size, _end_x * tile_size, _end_y * tile_size, true);

vertex_begin(vertex_buffer, vertex_format);
for (var _current_y = _start_y; _current_y <= _end_y; _current_y++) {
    for(var _current_x = _start_x; _current_x <= _end_x; _current_x++)
	{
		var _current_tile = tilemap_get(tilemap, _current_x, _current_y);
		if(_current_tile != 0)
		{
			var _px1 = _current_x * tile_size;		// top left
            var _py1 = _current_y * tile_size;
            var _px2 = _px1 + tile_size;			//bottom right
            var _py2 = _py1 + tile_size;


            project_shadow(vertex_buffer, _px1, _py1, _px2, _py1, light_x, light_y);
			project_shadow(vertex_buffer, _px2, _py1, _px2, _py2, light_x, light_y);
			project_shadow(vertex_buffer, _px2, _py2, _px1, _py2, light_x, light_y);
			project_shadow(vertex_buffer, _px1, _py2, _px1, _py1, light_x, light_y);
		}
	}
}

vertex_end(vertex_buffer);
vertex_submit(vertex_buffer, pr_trianglelist, -1);
