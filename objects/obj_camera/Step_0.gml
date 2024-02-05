
if (instance_exists(follow_object))
{
	x_goal = follow_object.x;
	y_goal = follow_object.y;
}

x += (x_goal - x) / camera_speed;
y += (y_goal - y) / camera_speed;

camera_set_view_pos(camera_id, x - view_width_half, y - view_height_half);