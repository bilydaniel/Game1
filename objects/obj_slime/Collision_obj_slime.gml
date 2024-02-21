/// @description Insert description here
// You can write your code in this editor


var dir = point_direction(x,y,other.x,other.y);
var len = lerp(2,0,point_distance(x,y,other.x,other.y)/sprite_width)
    
other.x += lengthdir_x(len,dir)
other.y += lengthdir_y(len,dir)
 