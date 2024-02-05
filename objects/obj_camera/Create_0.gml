/// @description Insert description here
// You can write your code in this editor

camera_id = view_camera[0];
follow_object = obj_player;

view_width = camera_get_view_width(camera_id);
view_height = camera_get_view_height(camera_id);

view_width_half = view_width / 2;
view_height_half = view_height / 2;

x_goal = x;
y_goal = y;

camera_speed = 20; //higher == slower