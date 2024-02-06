/// @description Insert description here
// You can write your code in this editor

x_min = 0;
x_max = room_width;

y_min = y;
y_max = y + sprite_height;


number_of_clouds = 20;
repeat (number_of_clouds) {
	show_debug_message(number_of_clouds);
	instance_create_layer(irandom_range(x_min, x_max), irandom_range(y_min, y_max), "clouds", obj_cloud);	
}



