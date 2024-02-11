/// @description Insert description here
// You can write your code in this editor


draw_self();
if(!global.is_day)
{
	if( !surface_exists(surface) )
	{
	    surface = surface_create(room_width,room_height);
	}

	tilemap = layer_tilemap_get_id("walls_tiles");

	var _start_x = floor((light_x - radius) / tile_size);
	var _end_x = floor((light_x + radius) / tile_size);
	var _start_y = floor((light_y - radius) / tile_size);
	var _end_y = floor((light_y + radius) / tile_size);

	//DEBUG
	draw_set_color(c_yellow);
	draw_rectangle(_start_x * tile_size, _start_y * tile_size, _end_x * tile_size, _end_y * tile_size, true);


	surface_set_target(surface);
	draw_clear_alpha(0,0);

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
			
				if(!sign_test(vertex_buffer, _px1, _py1, _px2, _py1, light_x, light_y))
				{
					 project_shadow(vertex_buffer, _px1, _py1, _px2, _py1, light_x, light_y);
				}
				if(!sign_test(vertex_buffer, _px2, _py1, _px2, _py2, light_x, light_y))
				{
					project_shadow(vertex_buffer, _px2, _py1, _px2, _py2, light_x, light_y);
				}
				if(!sign_test(vertex_buffer, _px2, _py2, _px1, _py2, light_x, light_y))
				{
					project_shadow(vertex_buffer, _px2, _py2, _px1, _py2, light_x, light_y);
				}
				if(!sign_test(vertex_buffer, _px1, _py2, _px1, _py1, light_x, light_y))
				{
					project_shadow(vertex_buffer, _px1, _py2, _px1, _py1, light_x, light_y);
				}
			
			}
		}
	}

	vertex_end(vertex_buffer);
	vertex_submit(vertex_buffer, pr_trianglelist, -1);

	surface_reset_target();

	shader_set(sh_shader0);
	shader_set_uniform_f( light_pos_radius, light_x, light_y, radius, 0.7 );
	draw_surface_ext(surface, 0, 0, 1, 1, 0, image_blend, 0.5);
	shader_reset();
}

