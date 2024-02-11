/// @description Insert description here
// You can write your code in this editor




repeat (number_of_clouds) {
	instance_create_layer(irandom_range(x_min, x_max), irandom_range(y_min, y_max), "clouds", obj_cloud);	
	number_of_clouds--;
}