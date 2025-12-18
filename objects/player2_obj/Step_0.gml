/// @description Insert description here
// You can write your code in this editor








//damage smoke


if ( player2Health <= 2)
{
	
	if (isDamaged == false)
	
	{
	
	instance_create_layer(x + 30,y - 55,"AboveShipUpgrades",damageSmoke2_obj);
	
	isDamaged = true;
	
	}
	
	
}










//boost


if(boostReady == true)

{
	
	
	if(keyboard_check(vk_f9))
	{
		
		boostHappening = true;
		
		
		player2Speed += 1;
		
		
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
	
	player2Speed = player2MaxSpeed;
	
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


















player2ReloadTime -= .01;


if (player2Ammo >= 6)

{
	
	
	player2Ammo -= 1;
	
	
}





if (player2ReloadTime <= 0)

{
	
	
	player2Ammo += 1;
	
	
	player2ReloadTime += 1;	
	
}


if (keyboard_check((vk_left)))
{
    x = x - player2Speed;
}

if (keyboard_check((vk_right)))
{
    x = x + player2Speed;
}



if (player2Health <= 0)

{
	
	
	gameStates_obj.playerScore += 1;
	


	gameStates_obj.player2IsPicking = true;
	
	
	//refresh player health and ammo, find better way later
	
	player2Health = player2HealthMax;
	
	
	player_obj.playerAmmo = 5;
	
	player2Ammo = 5;

	room_goto(testUpgrade_rm);
	


	
	
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


else if (room == player2Wins_rm)

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








