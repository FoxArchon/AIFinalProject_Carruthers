/// @description Insert description here
// You can write your code in this editor











 
 //play chain sound here
 
 if(isShooting == true)
 
 {
	 
	  
	
	if (canShoot == false)
	
	{
		
		
	 player_obj.playerSpeed = 0;
		
	 //sound while chain is in the air 
	 

	 
	 audio_play_sound(chainAir_snd,1,false);
	 
	}
	 
 }
 
 else
 {
	 
	 //stop chain in air sound
 }
 
 
 if (room == testUpgrade_rm)
 {
 canShoot = true;

 isShooting = false;

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
	 
   //check if chain exist to swwap back to unused sprite
 
 

 if(isShooting == false)
 {
	 
	 //lets player move while enemy is hooked
	player_obj.playerSpeed = player_obj.playerMaxSpeed;
	 

	 
 }
 
 
 if(isRetracting == true)
 {
	 
	 player_obj.playerSpeed = 0;
	
	 //sound while chain is in the air 
	 
	 if(!audio_is_playing(hookRetract_snd))
	 {
		 
	 audio_play_sound(hookRetract_snd,1,false);
	 
	 }
	 
 }
 
 
 
 
 
 if( !instance_exists(hook_obj))
 
 {
	 //Crashes the game if attatchment 2 isnt spawned
	 //if(hookShot2_obj.isRetracting == false and hookShot_obj.isShooting == false)
	// {
	 
	// player2_obj.player2Speed = player2_obj.player2MaxSpeed;
	 
	//}
	 
	 
	 isRetracting = false;
	 sprite_index = hookShot_spr;
	 
 }
 
 
 
 
 

 
if (canShoot == false)

{
	
	sprite_index = hookShotUsed_spr;
	
	
	
	if (keyboard_check(vk_rshift) and hook_obj.stuck == true)
	{
		
		
		
		
		
		
		hook_obj.pull = true;
		isRetracting = true;
		
		
		
		
		
	}
	
	
	
	
}
 
	 
	 
	 
	 if(canShoot ==true)
	 
	 {

	    
	 
		 if(keyboard_check(vk_rshift))
	 
		{
			
			
		if(canHook == true)
		
		{
			
		 audio_play_sound(hookFire_snd,1,false);
		 
		 isShooting = true;
		 
		 var hook = instance_create_layer(x,y,"BelowShipUpgrades",hook_obj);
		 
		 hook.direction = 90;
		 
		 hook.speed = 5;
		
		 
		 canShoot = false;
		 
		 //saveID = hook;
		 
		}
		 
		 
		}
		
		
		
		//if(canShoot == false and keyboard_check(vk_alt) and saveID != noone and saveID.getTargetID != noone)
		//{
			
			//saveID.pull = true;
			
			
			
		//}


	 }
	 
	 
 }