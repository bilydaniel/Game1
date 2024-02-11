/// @description Insert description here
// You can write your code in this editor

light_x = x;
light_y = y;

radius = 128; //radius in pixels 
tile_size = 16;
tilemap = -1;

vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
vertex_format = vertex_format_end();
vertex_buffer = vertex_create_buffer();

surface = -1;

light_pos_radius = shader_get_uniform(sh_shader0,"u_fLightPositionRadius");


