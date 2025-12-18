/// @description Insert description here
// You can write your code in this editor




if(room == testUpgrade_rm)
{
	
	
	
	instance_destroy();
	
	
}








if (stuck == true )
{
	
	modifiedAI_obj.player2Speed = 0;
	
	modifiedAI_obj.x = player_obj.x; //body change
	
	x = player_obj.x;
	
	hookShot_obj.isShooting = false;
	
	
	if(instance_exists(hookShot2_obj))
	
	{
	
	hookShot2_obj.canHook = false;
	
	}
	
}





if (pull == true)

{
	
	//stop player speed
	
	// player_obj.playerSpeed = 0;
	
	
	//play retraction sound on loop should end when pull is false
	
	player_obj.playerSpeed = 0;
	
	
	//getTargetID.speed = 3;
	//getTargetID.direction = point_direction(x,y,hookShot.x,hookShot.y);
	
	stuck = false;
	
	
	//also damages on retraction-tearing chunk of hull
	
	
	if (firstHookPull == false)
	
	{
	
	modifiedAI_obj.flashAlpha = 1;

	audio_play_sound(cannonHit1_snd,1,false);

	modifiedAI_obj.player2Health -= .5;
	
	firstHookPull = true;
	
	}
	
	
	
	speed = 3;
	
	direction = point_direction(x,y,hookShot_obj.x,hookShot_obj.y);
	
	
	if(place_meeting(x,y,hookShot_obj))
	{
		pull = false;	
		
		firstHookPull = false;
				
		instance_destroy();
		
		hookShot_obj.canShoot = true;
		
		modifiedAI_obj.firstHookCollision = false;
		
		
		if(instance_exists(hookShot2_obj))
		
		{
		
		hookShot2_obj.canHook = true;
		
		}
		
		
	}
	
	
	
	
}



//maybe use this for pull stuff?

if (stuck == false)
{
	

player_obj.playerSpeed = 0;

	
modifiedAI_obj.modifiedAISpeed = modifiedAI_obj.modifiedAIMaxSpeed;

	
chainLength = point_distance(x,y,hookShot_obj.x,hookShot_obj.y);


	if ( chainLength >= chainLengthMax )
	{
		
		//destroy for now, want to pull back later
		
		
		
		instance_destroy();
		
		
		
		//reset
		
		audio_stop_sound(chainAir_snd);
		
		player_obj.playerSpeed = player_obj.playerMaxSpeed;
		
		hookShot_obj.canShoot = true;
		//hookShot_obj.saveID = noone;
		
		
		
	}
	
	
	//maybe need a check for if chain length here if it is 0, then canshoot can be true
	
		
	
}