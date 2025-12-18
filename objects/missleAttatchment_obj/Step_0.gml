/// @description Insert description here
// You can write your code in this editor



;
 
 

 
 if(misslesAmountShots <= 0)
 {
	 
	 sprite_index = missleAttatchment_spr;
	 misslesReady = false;
	
	 misslesAmountShots += 3;


 }
 
 
 
 
 if(missleReloadTime <= 0 )
 {
	 
	 
		

        sprite_index = missleAttatchmentLoaded_spr 
	 
		missleReloadTime += 5;
		
		misslesReady = true;
 }
 
 
 
 
 if (room == testMechanic_rm)
 
 {
	 
	 
	 if(misslesReady = false)
	 {
		 
		 missleReloadTime -= .01;
		 	 
	 }
	 
	 
	 
	 if (misslesReady = true)
	 
	 {
		 
		 
		 if(keyboard_check_pressed(vk_enter))
		 {
			 
			 
			 
			 audio_play_sound(missleFire1_snd,1,0);
			
			 
			 
			 
			 instance_create_layer(missleAttatchment_obj.x  -20 ,missleAttatchment_obj.y + 5 ,"AboveShipUpgrades",missle1_obj);
			 			 
			 instance_create_layer(missleAttatchment_obj.x + 20 ,missleAttatchment_obj.y + 5 ,"AboveShipUpgrades",missle1_obj);			 
			 
			 instance_create_layer(missleAttatchment_obj.x + 30 ,missleAttatchment_obj.y + 5 ,"AboveShipUpgrades",missle1_obj);
			 
			 instance_create_layer(missleAttatchment_obj.x  -30 ,missleAttatchment_obj.y + 5 ,"AboveShipUpgrades",missle1_obj);
			 
			 
			 
			 
			
			 
			 			 
			 instance_create_layer(missleAttatchment_obj.x  -20 ,missleAttatchment_obj.y ,"AboveShipUpgrades",missle1_obj);
			 			 		
			 instance_create_layer(missleAttatchment_obj.x + 20 ,missleAttatchment_obj.y ,"AboveShipUpgrades",missle1_obj);
			 			 			 			 				 
			 instance_create_layer(missleAttatchment_obj.x  -30 ,missleAttatchment_obj.y ,"AboveShipUpgrades",missle1_obj);		 			
			 
			 instance_create_layer(missleAttatchment_obj.x + 30 ,missleAttatchment_obj.y ,"AboveShipUpgrades",missle1_obj);
			   
			
			 misslesAmountShots -= 1;
			 
			 
		 }
		 
		 	
		 
		 
	 }
	 
	 
 }
 
 
 //Make Invivible for now, will find a differnt wat to deal with upgrades later


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
