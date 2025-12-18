/// @description Insert description here
// You can write your code in this editor








//damage smoke


if ( playerHealth <= 2)
{
	
	if (isDamaged == false)
	
	{
	
	instance_create_layer(x + 30,y + 50,"AboveShipUpgrades",damageSmoke_obj);
	
	isDamaged = true;
	
	}
	
	
}




//boost


if(boostReady == true)

{
	
	
	if(keyboard_check(vk_control))
	{
		
		boostHappening = true;
		
		playerSpeed += 1;
		
		
		if ( boostSoundReady == true)
		
		{
		
		audio_play_sound(boost_snd,1,false);
		boostSoundReady = false;
		
		}
		
		//change sprite to boosting
		
		instance_create_layer(x,y + 80,"Instances",boost_obj);
			
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
	
	playerSpeed = playerMaxSpeed;
	
	//change sprite back
		
	instance_destroy(boost_obj);
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
	
	boostSoundReady = true;
	
	
	boostTime += 180;

   boostChargeTime += 300;
	
	
}





//basic attack loading 


reloadTime -= .01;


if (playerAmmo >= 6)

{
	
	
	playerAmmo -= 1;
	
	
}





if (reloadTime <= 0)

{
	
	
	playerAmmo += 1;
	
	
	reloadTime += 1;	
	
}


if (keyboard_check(ord("A")))
{
    x = x - playerSpeed;
}

if (keyboard_check(ord("D")))
{
    x = x + playerSpeed;
}



if (playerHealth <= 0)

{
	
	
	gameStates_obj.modifiedAIScore += 1;
	
	
	
	gameStates_obj.player1IsPicking = true;
	
	
	//refresh player ammo and health
	
	playerHealth = playerHealthMax;
	
	modifiedAI_obj.modifiedAIAmmo = 5;
	
	playerAmmo = 5;
	

	room_goto(testUpgrade_rm);

	
	
}




//Make Invivible for now, will find a differnt wat to deal with upgrades later


if (room == testUpgrade_rm)

{
	
	
self.speed = 0;
	

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





