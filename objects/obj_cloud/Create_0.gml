/// @description Insert description here
// You can write your code in this editor

//object_set_prite(1,spr_cloud_1);
//TOOD keep all of them?
clouds = [
/*
	spr_cloud_1, 
	spr_cloud_2,
	spr_cloud_3,
	spr_cloud_4,
	spr_cloud_5,
	spr_cloud_6,
	spr_cloud_7
	*/
	spr_cloud_8
	];
//sprite_index = choose(clouds);

sprite_index = clouds[irandom_range(0, array_length(clouds) - 1)];


random_value = irandom_range(0.5, 3);
image_xscale = random_value;
image_yscale = random_value;
speed = random(1);
depth = 400 - speed*10;

