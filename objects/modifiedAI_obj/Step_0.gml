/// @description Insert description here
// You can write your code in this editor



//AI tactic that traps player in corner 

//variables for corner trapping tactic for AI

distXWallPlayer = abs(invisWall_obj.x - player_obj.x);

distXWall2Player = abs(invisWall2_obj.x - player_obj.x);



//only try to trap if aggresive

if(modifiedAIHealth >= player_obj.playerHealth)

{


//check if player is near left corner
if(distXWallPlayer < 20)

{
	
	isTrappingPlayer = true;
	
	if(isTrappingPlayer == true)
	
	{
	
	//if yes, move a little farther off in the opposite x direction
	
	move_towards_point(player_obj.x + 20 ,y,modifiedAISpeed)
	
	//make sure to stop when arriving at point
	
	if(x == player_obj.x + 20)
	{
		
		speed = 0;
		
		//fire half as many shots that you currently have
		
		shotsToTrap = (modifiedAIAmmo % 2);
		
		shotCount = 0;
		
		if(shotCount < shotsToTrap)
		{
			
			//actual fire
			var instance = instance_create_layer(modifiedAI_obj.x,modifiedAI_obj.y, "Instances", opponentCannon_obj);
			instance_create_layer(modifiedAI_obj.x,modifiedAI_obj.y + 28, "Instances", cannonShotSmoke_obj);
			audio_play_sound(cannonFire1_snd,1,false);
			modifiedAIAmmo -= 1;
			
			
			shotCount += 1;
			
			//check if enoguh fired
			if(shotCount = shotsToTrap)
			{
				
				//move directlly across from the player
	
				move_towards_point(player_obj.x,y,modifiedAISpeed)
				
				if(x == player_obj.x)
				
				{
	
				//fire any remainding ammmo
				
				var instance = instance_create_layer(modifiedAI_obj.x,modifiedAI_obj.y, "Instances", opponentCannon_obj);
				instance_create_layer(modifiedAI_obj.x,modifiedAI_obj.y + 28, "Instances", cannonShotSmoke_obj);
				audio_play_sound(cannonFire1_snd,1,false);
				modifiedAIAmmo -= 1;
	
	
					if(modifiedAmmo <=0)
					{
		
						isTrappingPlayer = false;
		
					}
				
				
				}
				
				
			}
			
			
		}
		
		
	}
		
		
}
	
}	
	
	
	
}



// This segment is the same code used for player2
//It allows for an ammo system with a max of 5 shots and reloads
//1 shot every few seconds


modifiedAIReloadTime -= .01;


if (modifiedAIAmmo >= 6)

{
	
	
	modifiedAIAmmo -= 1;
	
	
}




if (modifiedAIReloadTime <= 0)

{
	
	
	modifiedAIAmmo += 1;
	
	
	modifiedAIReloadTime += 1;	
	
}



if(timer < 10)

{

	timer += 1;

}



//check if player is across from ai then fire a basic attack

//check if in the main level

if (room == testMechanic_rm)

{
	
	//this checks 3 locations because the way the AI follows the player while it is an aggresive state
	//does not follow accurately and is always off by 3.5 units this allows for a proper check 
	//of vertical adjacency 
	
	if(x ==  player_obj.x -3.5 || x == player_obj.x +3.5 || x = player_obj.x )
	{
	
	
	//checks if has at least 1 ammo
	if (modifiedAIAmmo > 0)

	{
		
	//checks to make sure ammo is not spammed every frame faster than a human can shoot
	if(timer >= 10)
	
	{
		
	//creates a cannon that fires

	var instance = instance_create_layer(modifiedAI_obj.x,modifiedAI_obj.y, "Instances", opponentCannon_obj);


	//creates a little smoke cloud to give flare to a shot

	instance_create_layer(modifiedAI_obj.x,modifiedAI_obj.y + 28, "Instances", cannonShotSmoke_obj);

	//cannon sound effect

	audio_play_sound(cannonFire1_snd,1,false);
	
	//resets bool so AI can shoot again
	
	timer -= 10;
	
	//reduce ammo by 1

	modifiedAIAmmo -= 1;
	
	}

	}

	

}
	
	
}




//this section avoids corners by checking if a wall is near, 
//then moving away a certain distance before reverting behaviors

//these are to be able to know the distance between a given wall

distXWall = abs(invisWall_obj.x - x);

distXWall2 = abs(invisWall2_obj.x - x);


//avoiding left wall

if(isTrappingPlayer == false)

{


if(distXWall < 150)
{
	
	avoidRightTarget = x +100;
	
	isAvoidingLeftWall = true;
	
	if(isAvoidingLeftWall == true)
	{
		
		
		//shouldn't move if hook is firing or retracting

		if(gameStates_obj.isShooting == false && gameStates_obj.isRetracting == false)

		{
	
			move_towards_point(avoidRightTarget,y,modifiedAISpeed);
		}
		
		
						
		
	}
	

}


if(distXWall > 500 && isAvoidingLeftWall == true)
{
			
							
	speed = 0;
			
	isAvoidingLeftWall = false;
									
			
}


}

//avoiding right wall

if(isTrappingPlayer == false)

{

if(distXWall2 < 150)
{
	
	
	avoidLeftTarget = x -100;
	
	isAvoidingRightWall = true;
	
	if(isAvoidingRightWall == true)
	{
		
		
		//shouldn't move if hook is firing or retracting

		if(gameStates_obj.isShooting == false && gameStates_obj.isRetracting == false)

		{
		
			move_towards_point(avoidLeftTarget,y,modifiedAISpeed);
		
		}
				
		
	}

		
}


if(distXWall2 > 500 && isAvoidingRightWall == true)
{
			
	
			
	speed = 0;
			
	isAvoidingRightWall = false;
			
								
}


}


//AI decision tree for picking an upgrade


//checks if the option even exists, as the options given are randomized,
//checks if the AI already has the upgrade amd of it doesnt want any others,
//in priority,then if not, it wants it

//tried to make it so it has a priority list at first but it seems to
//be a random pick right excpet for the missle launcher maybe, but it works so im keeping it

//I found a goofy way of making it work by adding conditoons that it does not want any 
//upgrades above it in the hierchy. It is is goofy because health will require 5 checks in the if
//statement to make sure it does not want anything else

if(object_exists(upgrade5_obj))
{
	
	if(aiHasMissleLauncher == false)
	
	{
	
		aiWantsMissleLauncher = true;
	
	}
	
}



if(object_exists(upgrade6_obj))
{
	
	
	if(aiHasHook == false )
	{
		
		aiWantsHook = true;
	
	}
	
}


if(object_exists(upgrade4_obj))
{
	
	
	if(aiHasLaser == false)
	
	{
	
		aiWantsLaser = true;
	
	}
	
}


if(object_exists(upgrade2_obj))
{
	
	
	if(aiHasOneSpeed == false)
	
	{
	
		aiWantsSpeed = true;
	
	}
	
}

if(object_exists(upgrade1_obj))
{
	
	
	if(aiHasOneDamage == false)
	
	{
	
		aiWantsDamage = true;
	
	}
		
	
}


if(object_exists(upgrade3_obj))
{
	
	if(aiHasOneHealth == false)
	
	{
	
		aiWantsHealth = true;
	
	}
	
}



// AI movement, follow player if greater health, avoid if lower


//avoiding the walls has priority over avoiding the player or chasing the player

if(isAvoidingLeftWall == false && isAvoidingRightWall == false)

{
	
	
//AI will chase the player aggrsivvley if equal or greate health then the player

if(modifiedAIHealth >= player_obj.playerHealthMax)
{
	

	
// move towards player 
	
	xDistBetween = abs(player_obj.x - x);

	if (xDistBetween <= modifiedAISpeed)
	{
		
		//stop if at player x
		speed = 0; 
	}

	else
	{
		
		
		//shouldn't move if hook is firing or retracting
		
		if(gameStates_obj.isShooting == false && gameStates_obj.isRetracting == false)

		{
		
			move_towards_point(player_obj.x, y, modifiedAISpeed);
			
		}
		
			
		
	}
		
	
}


//avoid player if low health

if (modifiedAIHealth < player_obj.playerHealth)
{
	
	xDistBetween = abs(player_obj.x - x);
	
	
	if(x == player_obj.x)
	{
		
		//randomly go right or left
		
		randNum = irandom(1);
		
		if(randNum == 0)
		{
			//go right
			
			
			//shouldn't move if hook is firing

			if(gameStates_obj.isShooting == false && gameStates_obj.isRetracting == false)

			{
			
			speed = modifiedAISpeed;
			
			direction = 0;
			
			}
			
		}
		
		
		if (randNum == 1)
		{
			
			//go left
			
			//shouldn't move if hook is firing

			if(gameStates_obj.isShooting == false && gameStates_obj.isRetracting == false)

			{
			
			speed = modifiedAISpeed;
			
			direction = 180;
			
			}
			
		}
		
		
		
	}
	
	//check if far enough away to feel safe
	
	if( xDistBetween < 300 && xDistBetween != 0)
	{
		
	
		if(x > player_obj.x)
		{
			//go right
			
			
			//shouldn't move if hook is firing

			if(gameStates_obj.isShooting == false && gameStates_obj.isRetracting == false)

			{
			
			speed = modifiedAISpeed;
			
			direction = 0;
			
			}
		}
	
		if(x < player_obj.x)
		{
			
			//go left
			
			//shouldn't move if hook is firing

			if(gameStates_obj.isShooting == false && gameStates_obj.isRetracting == false)

			{
			
			speed = modifiedAISpeed;
			
			direction = 180;
			
			}
			
		}
	
		
	}
	
	if(xDistBetween > 300)
	{
		
		speed = 0;
		
	}
	
			
}

}





//damage smoke


if (modifiedAIHealth <= 2)
{
	
	if (isDamaged == false)
	
	{
	
	instance_create_layer(x + 30,y - 55,"AboveShipUpgrades",damageSmoke2_obj);
	
	isDamaged = true;
	
	}
	
	
}



//AI check for wanting to boost



if(modifiedAIHealth < 3 and (x ==  player_obj.x -3.5 || x == player_obj.x +3.5 || x = player_obj.x ))
{
	
	aiWantsToBoost = true;
	
	
}



//boost copied from player2

if(boostReady == true)

{
	
	
	
	if(aiWantsToBoost == true)
	{
		
		boostHappening = true;
		
		
		if(aiHasBoost == false)
		
		{
		
			modifiedAISpeed += 3;
			
			aiHasBoost = true;
		
		}
		
		
		if(boostSoundReady == true)
		{
			
			audio_play_sound(boost_snd,1,false);
			boostSoundReady = false;
			
		}
		
		//change sprite to boosting
		
		instance_create_layer(x,y - 80,"Instances",boost2_obj);
			
	}
	
				
}



if (boostHappening == true)
{
	
	boostTime -= 1;
	
	
}


if (boostTime <= 0)
{
	
	boostHappening = false;
	
	boostReady = false;
	
	modifiedAISpeed = modifiedAIMaxSpeed;
	
	aiHasBoost = false;
	
	//reset AI wanting to boost to false
	
	aiWantsToBoost = false;
	
	//change sprite back
		
	instance_destroy(boost2_obj);
}


if (boostReady == false)
{
	
	boostChargeTime -= 1;
	
	
}


if(boostChargeTime <= 0)
{
	
	boostReady = true;
	
	boostCharging = false
	
	boostHappening = false;
	
	
	boostTime += 180;

    boostChargeTime += 300;
   
    boostSoundReady = true;
	
}




//copied from player2

if (modifiedAIHealth <= 0)

{
	
	
	gameStates_obj.playerScore += 1;
	

	gameStates_obj.modifiedAIIsPicking = true;
	
	
	//refresh player health and ammo, find better way later
	
	modifiedAIHealth = modifiedAIHealthMax;
	
	
	player_obj.playerAmmo = 5;
	
	modifiedAIAmmo = 5;

	room_goto(testUpgrade_rm);
	


	
	
}


//copied from player2

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




// Reduce Damage Flash

if (flashAlpha > 0 )
{
	
	
flashAlpha -= .5;
	
	
}








