//TODO IMPROVE MOVEMENT, INPUT, COLLISIONS???

//TODO add ledge grab

left_button = keyboard_check(vk_left) or keyboard_check(ord("A"));
right_button = keyboard_check(vk_right)or keyboard_check(ord("D"));
up_button = keyboard_check(vk_up) or keyboard_check(ord("W"));
down_button = keyboard_check(vk_down) or keyboard_check(ord("S"));
jump_button = keyboard_check(vk_space);

var _horizontal_movement = right_button - left_button;
var _vertical_movement = jump_button; //TODO ladders

horizontal_speed = _horizontal_movement * walk_speed;
vertical_speed += gravity_strength;

var _on_ground = place_meeting(x, y+1, tile_map); //todo use instead of checking again

//TODO ladder is kinda clunky but fun as a mechanic, keep it??
//ladder 
if(up_button)
{
	var _on_ladder = place_meeting(x, y, obj_ladder);
	if(_on_ladder)
	{
		vertical_speed = -climb_speed;
		jump_timer = 10;
	}
}



//jumping
jump_timer--;
if(_on_ground)
{
	jump_timer = 10;
	jump_counter = max_jumps;
}
if((jump_timer > 0) && jump_button && jump_counter > 0)
{
	vertical_speed -= (_vertical_movement * jump_speed);
	jump_counter--;
}

//Horizontal collision
if(place_meeting(x + horizontal_speed, y, tile_map))
{
	while(!place_meeting(x + sign(horizontal_speed), y, tile_map)){
		x += sign(horizontal_speed);
	}
	horizontal_speed = 0;
	
}
x += horizontal_speed;

//Vertical collision
if(place_meeting(x, y + vertical_speed, tile_map))
{
	while(!place_meeting(x, y + sign(vertical_speed), tile_map)){
		y += sign(vertical_speed);
	}
	vertical_speed = 0;
	
}
y += vertical_speed;










	