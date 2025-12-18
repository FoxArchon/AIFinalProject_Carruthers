/// @description Insert description here
// You can write your code in this editor







//direction += 3 * sign(angle_difference(point_direction(x,y,player2_obj.x,player2_obj.y),direction));


if(noHeat = false)

{

direction = (point_direction(x,y,modifiedAI_obj.x,modifiedAI_obj.y));


}

image_angle = direction -90;








lifeSpan -= 1;

heatSeekLifeSpan -=1;


if(noHeat = false)

{


if(heatSeekLifeSpan <= 0)
{
	
	direction = point_direction(x,y,modifiedAI_obj.xprevious,modifiedAI_obj.yprevious);
	noHeat = true;

}



}


if(lifeSpan <= 2)

{
	
	speed -= 1;
	
	
}





if(lifeSpan <= 0)

{
	
instance_create_layer(x,y,"AboveShipUpgrades",missleExplode_obj);
instance_destroy();
	
	
}