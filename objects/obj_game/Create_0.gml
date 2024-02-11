base_resolution_x = 640;
base_resolution_y = 360;

target_resolution_x = 640 * 2;
target_resolution_y = 360 * 2;


view_set_wport(0, target_resolution_x);
view_set_hport(0, target_resolution_y);
window_set_size(target_resolution_x, target_resolution_y);

//SET IMPORTANT VARIABLES AS GLOBAL
global.base_resolution_x = base_resolution_x;
global.base_resolution_y = base_resolution_y;
global.target_resolution_x = target_resolution_x;
global.target_resolution_y = target_resolution_y;
global.is_day = false;

