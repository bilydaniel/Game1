/// @description Insert description here
// You can write your code in this editor

walk_speed = 1;
jump_cooldown = 100; //TODO use alerts??
climb_speed = 1;
gravity_strength = 0.3;
jump = 0;

player_x = 0;
player_y = 0;

horizontal_speed = 0;
vertical_speed = 0;

horizontal_movement = 0;
vertical_movement = 0;

tile_map = layer_tilemap_get_id("walls_tiles");

view_distance = 200;

jump_distance = 100;

distance_to_player = 0;