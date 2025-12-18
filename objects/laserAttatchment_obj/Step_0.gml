/// @description Insert description here
// You can write your code in this editor





 
 

 
if(room == testMechanic_rm)

{

//Firing support

if (laserReady == true)

{
	
	
	if(keyboard_check(vk_lshift))
	{
	
	
	laserPressed = true;
	
		if(!instance_exists(laser_obj))
		{
		
		instance_create_layer(laserAttatchment_obj.x,laserAttatchment_obj.y - 10 ,"AboveShipUpgrades",laser_obj);
		
		
	
	    audio_play_sound(laserFire1_snd,1,true);
				
			
	
		}
		

	}
	
	
	
	
}



if (! keyboard_check(vk_shift))
{
	
	
	laserPressed = false;
	
	audio_stop_sound(laserFire1_snd);
	
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






