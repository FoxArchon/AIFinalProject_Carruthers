/// @description Insert description here
// You can write your code in this editor



if(room == testUpgrade_rm)
{
	
	
	instance_destroy();
	
	
	
}






if (stuck == true )
{
	
	
	player_obj.playerSpeed = 0;
	
	player_obj.x = modifiedAI_obj.x; //body change 
	
	
	x = modifiedAI_obj.x;
	
	
	hookShot2_obj.isShooting = false;
	
	
	if(instance_exists(hookShot_obj))
	
	{
	
	
	hookShot_obj.canHook = false;
	
	
	}
	
	
}






if (pull == true)

{
	
	//stop player speed
	
	 //player_obj.playerSpeed = 0;
	
	
	//play retraction sound on loop should end wwhen pull is false
	
	modifiedAI_obj.modifiedAISpeed = 0;
	
	
	//getTargetID.speed = 3;
	//getTargetID.direction = point_direction(x,y,hookShot.x,hookShot.y);
	
	stuck = false;
	
	
	//also damages on retraction-tearing chunk of hull
	
	
	if (firstHookPull == false)
	
	{
	
	player_obj.flashAlpha = 1;

	audio_play_sound(cannonHit1_snd,1,false);

	player_obj.playerHealth -= .5;
	
	firstHookPull = true;
	
	}
	
	
	
	speed = 3;
	
	direction = point_direction(x,y,hookShot2_obj.x,hookShot2_obj.y);
	
	
	if(place_meeting(x,y,hookShot2_obj))
	{
		pull = false;	
		
		firstHookPull = false;
				
		instance_destroy();
		
		hookShot2_obj.canShoot = true;
		
		player_obj.firstHookCollision = false;
		
		
		
		
		if(instance_exists(hookShot_obj))
		
		{
		
		hookShot_obj.canHook = true;
		
		
		}
		
		
		
		
	}
	
	
	
	
}



//maybe use this for pull stuff?

if (stuck == false)
{
	

modifiedAI_obj.modifiedAISpeed = 0;

	
player_obj.playerSpeed = player_obj.playerMaxSpeed;

	
chainLength = point_distance(x,y,hookShot2_obj.x,hookShot2_obj.y);


	if ( chainLength >= chainLengthMax )
	{
		
		//destroy for now, want to pull back later
		
		
		
		instance_destroy();
			
		
		//reset
		
		audio_stop_sound(chainAir_snd);
		
		modifiedAI_obj.modifiedAISpeed = modifiedAI_obj.modifiedAIMaxSpeed;
		
		hookShot2_obj.canShoot = true;
		
		gameStates_obj.isShooting = false;
		
		
		
		
	}
	
	
	//maybe need a check for if chain length here if it is 0, then canshoot can be true
	
		
	
}