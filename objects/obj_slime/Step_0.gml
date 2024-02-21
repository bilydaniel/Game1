//TODO AI

player_x = obj_player.x;
player_y = obj_player.y;

distance_to_player = point_distance(x, y, player_x, player_y);

if(distance_to_player < view_distance)
{
	horizontal_movement = sign(player_x - other.x);
}

jump = 0;
if(jump_cooldown < 0 && (distance_to_player < jump_distance))
{
	jump = 10;
	jump_cooldown = 100;
	vertical_speed -= jump;
}



horizontal_speed = horizontal_movement * walk_speed;
vertical_speed += gravity_strength;


var _on_ground = place_meeting(x, y+1, tile_map); //todo use instead of checking again

//TODO ladder is kinda clunky but fun as a mechanic, keep it??
//ladder 
if(vertical_movement)
{
	var _on_ladder = place_meeting(x, y, obj_ladder);
	if(_on_ladder)
	{
		vertical_speed = -climb_speed;
	}
}



//jumping
if(_on_ground)
{
	jump_cooldown--;
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










	
