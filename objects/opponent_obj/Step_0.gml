/// @description Insert description here
// You can write your code in this editor





opponentShootTime += 1;



if (opponentShootTime == 60)

{
	
audio_play_sound(cannonFire1_snd,1,false);

var instance = instance_create_layer(opponent_obj.x,opponent_obj.y, "Instances", opponentCannon_obj);


opponentShootTime -= 60;


}







if (opponent_obj.x > 1100)

{
	
	
	direction = 180;
	
	speed = 3;
	
	
}


if (opponent_obj.x < 250)

{
	
	
	direction = 0;

	speed = 3;
	
	
}



//damage smoke


if ( opponentHealth <= 2)
{
	
	
	
	
	if (isDamaged == false)
	
	{
	
	instance_create_layer(x + 30,y - 55,"AboveShipUpgrades",opponentSmoke_obj);
	
	isDamaged = true;
	
	}
	
	
}








