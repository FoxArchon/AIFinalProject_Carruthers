/// @description Insert description here
// You can write your code in this editor

draw_self();




//get distance 


var distance = distance_to_point(hook_obj.x,hookShot_obj.y);



//get updated direction


var directionToPlayer = point_direction(hookShot_obj.x,hookShot_obj.y,x,y);


for (var i = 0; i < 18; i++)

{
	         
			 
			 
			 
	
	draw_sprite(chainLinkBackup_spr,-1,hookShot_obj.x + lengthdir_x((distance/16) * i,directionToPlayer),hookShot_obj.y + lengthdir_y((distance/16) * i, directionToPlayer)+70);
	
	
}


