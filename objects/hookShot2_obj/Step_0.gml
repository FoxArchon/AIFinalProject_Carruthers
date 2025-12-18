/// @description Insert description here
// You can write your code in this editor





 
 
 //play chain sound here
 
 if(gameStates_obj.isShooting == true)
 
 {
	 
	
	if (canShoot == false)
	
	{
		
	 modifiedAI_obj.modifiedAISpeed = 0;	
		
		
	 //sound while chain is in the air 
	 
	 audio_play_sound(chainAir2_snd,1,false);
	 
	}
	 
 }
 
 else
 {
	 
	 //stop chain in air sound
 }
 
 
 if (room == testUpgrade_rm)
 {
 canShoot = true;

 gameStates_obj.isShooting = false;
	 
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

 


 
 
 
 
 if(room == testMechanic_rm)
 {
	 
   //check if chain exist to swap back to unused sprite
 
 

 if(gameStates_obj.isShooting == false)
 {
	 
	 
	modifiedAI_obj.modifiedAISpeed = modifiedAI_obj.modifiedAIMaxSpeed;
	 

	 
 }
 
 
 if(gameStates_obj.isRetracting == true)
 {
	 
	 modifiedAI_obj.modifiedAISpeed = 0;
	
	 //sound while chain is in the air 
	 
	 if(!audio_is_playing(hookRetract2_snd))
	 {
		 
	 audio_play_sound(hookRetract2_snd,1,false);
	 
	 }
	 
 }
 
 
 
 
 
 if( !instance_exists(hook2_obj))
 
 {
	 

	 
	 gameStates_obj.isRetracting = false;
	 sprite_index = hookShot_spr_2;
	 
 }
 
 
 
 
 

 
if (canShoot == false)

{
	
	sprite_index = hookShotUsed_spr;
	
	//if AI is on retreat, it will want to unhook, because it does not want to be near the player
	//when it is lower health
	
	if ((modifiedAI_obj.modifiedAIHealth < player_obj.playerHealth) and hook2_obj.stuck == true)
	{
		
		
		hook2_obj.pull = true;
		gameStates_obj.isRetracting = true;
		
		
		
	}
	
	
	
	
}
 
	 
	 
	 
	 if(canShoot == true)
	 
	 {

	    
	 
		if(x ==  player_obj.x -3.5 || x == player_obj.x +3.5 || modifiedAI_obj.x == player_obj.x)
	 
		{
			
		
		
		
		if(canHook == true)
		
		{
			
		//AI only fires if aggresive, since the hooshot allows 
		//the opponent to not move and the x values of the player and opponet will be locked
			
		if(modifiedAI_obj.modifiedAIHealth >= player_obj.playerHealth)
		
		{
			
		 audio_play_sound(hookFire2_snd,1,false);
		 
		 gameStates_obj.isShooting = true;
		 
		 var hook = instance_create_layer(x,y,"BelowShipUpgrades",hook2_obj);
		 
		 hook.direction = 270;
		 
		 hook.speed = 5;
		
		 
		 canShoot = false;
		 
		 //saveID = hook;
		 
		}
		 
		}
		 
		 
		}
		
		
		


	 }
	 
	 
 }