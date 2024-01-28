/// @description Insert description here
// You can write your code in this editor


left_button = keyboard_check(vk_left);
right_button = keyboard_check(vk_right);
up_button = keyboard_check(vk_up);
down_button = keyboard_check(vk_down);
jump_button = keyboard_check(vk_space);


horizontal_movement = right_button - left_button;
vertical_movement = jump_button;

x += horizontal_movement * walk_speed;
//y += vertical_movement * jump_speed;








	if(place_meeting(x, y+1, obj_wall))
	{
		gravity = 0;
		vspeed = 0;
	}
	else
	{
		gravity = gravity_strength;
	}
	
	
	if(jump_button)
	{
		vspeed = -20;
	}