/// @description Insert description here
// You can write your code in this editor




 

 
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
		 
		 //triple check since AI movment is not 100% accurate 
		 
		 if(x ==  player_obj.x -3.5 || x == player_obj.x +3.5 || modifiedAI_obj.x == player_obj.x)
		 {
			 
			 
			 
			 audio_play_sound(missleFire1_snd,1,0);
			
			 
			 
			 
			 instance_create_layer(missleAttatchment2_obj.x  -20 ,missleAttatchment2_obj.y + 5 ,"AboveShipUpgrades",missle2_obj);
			 			 
			 instance_create_layer(missleAttatchment2_obj.x + 20 ,missleAttatchment2_obj.y + 5 ,"AboveShipUpgrades",missle2_obj);			 
			 
			 instance_create_layer(missleAttatchment2_obj.x + 30 ,missleAttatchment2_obj.y + 5 ,"AboveShipUpgrades",missle2_obj);
			 
			 instance_create_layer(missleAttatchment2_obj.x  -30 ,missleAttatchment2_obj.y + 5 ,"AboveShipUpgrades",missle2_obj);
			 
			 
			 
			 
			
			 
			 			 
			 instance_create_layer(missleAttatchment2_obj.x  -20 ,missleAttatchment2_obj.y ,"AboveShipUpgrades",missle2_obj);
			 			 		
			 instance_create_layer(missleAttatchment2_obj.x + 20 ,missleAttatchment2_obj.y ,"AboveShipUpgrades",missle2_obj);
			 			 			 			 				 
			 instance_create_layer(missleAttatchment2_obj.x  -30 ,missleAttatchment2_obj.y ,"AboveShipUpgrades",missle2_obj);		 			
			 
			 instance_create_layer(missleAttatchment2_obj.x + 30 ,missleAttatchment2_obj.y ,"AboveShipUpgrades",missle2_obj);
			   
			
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
