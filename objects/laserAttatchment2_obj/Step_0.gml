/// @description Insert description here
// You can write your code in this editor




 
 

 
if (room == testMechanic_rm)

{

//Firing support

if (laserReady == true)

{
	
	
	//triple check since AI movment is not 100% accurate
	
	if(x ==  player_obj.x -3.5 || x == player_obj.x +3.5 || modifiedAI_obj.x == player_obj.x)
	{
	
	
		laserPressed = true;
	
		if(!instance_exists(laser2_obj))
		{
			
		instance_create_layer(laserAttatchment2_obj.x,laserAttatchment2_obj.y +10,"AboveShipUpgrades",laser2_obj);
	
		audio_play_sound(laserFire2_snd,1,true);
	
	
		}
		
	
	}
	
	//if not firing can stop things for ai
	else
	{
		
		laserPressed = false;
	
		audio_stop_sound(laserFire2_snd);
		
	}
	
	
	
	
}





}


if (room == testUpgrade_rm)

{
	
	
self.visible = false;	
	
	
}



else if (room == player1Wins_rm)

{
	

instance_destroy(self);	
	
	
}


else if (room == modifiedAIWins_rm)

{
	
	

instance_destroy(self);
	
}



else

{
	
	
self.visible = true;	
	
	
}












