/// @description Insert description here
// You can write your code in this editor

draw_self();




//get distance 


var distance = distance_to_point(hook2_obj.x,hookShot2_obj.y);



//get updated direction


var directionToPlayer = point_direction(hookShot2_obj.x,hookShot2_obj.y,x,y);


for (var i = 0; i < 18; i++)

{
	         
			 
			 
			 
	draw_sprite(chainLinkBackup_spr,-1,hookShot2_obj.x + lengthdir_x((distance/16) * i,directionToPlayer),hookShot2_obj.y + lengthdir_y((distance/16) * i, directionToPlayer) +3);
	
	
}


