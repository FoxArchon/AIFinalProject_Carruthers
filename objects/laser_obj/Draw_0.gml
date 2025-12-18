/// @description Insert description here
// You can write your code in this editor


for(j = 0; j < laserLength; j++)


{


	draw_sprite_ext(laser_spr,image_index,x,y + lengthdir_y(j,direction) -95,.5,image_yscale,0,image_blend,image_alpha);


}



