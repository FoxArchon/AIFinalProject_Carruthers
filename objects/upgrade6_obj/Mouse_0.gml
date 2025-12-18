/// @description Insert description here
// You can write your code in this editor



if(gameStates_obj.player1IsPicking == true)

{


instance_create_layer(player_obj.x,player_obj.y,"BelowShipUpgrades",hookShot_obj);

gameStates_obj.player1IsPicking = false;



//jump to middle of screen

player_obj.x = 672;

modifiedAI_obj.x = 672;

player_obj.playerHealth =  player_obj.playerHealthMax;

modifiedAI_obj.modifiedAIHealth = modifiedAI_obj.modifiedAIHealthMax;

//play clank sound effect

audio_play_sound(upgradeClick_snd,1,0);

//start alarm;

alarm_set(0,180);

}


//else if (gameStates_obj.modifiedAIIsPicking == true)

//{
	
	
//instance_create_layer(modifiedAI_obj.x,modifiedAI_obj.y,"BelowShipUpgrades",hookShot2_obj);

//gameStates_obj.modifidAIIsPicking = false;



////jump to middle of screen

//player_obj.x = 672;

//modifiedAI_obj.x = 672;


//player_obj.playerHealth =  player_obj.playerHealthMax;

//modifiedAI_obj.modifiedAIHealth = modifiedAI_obj.modifiedAIHealthMax;



////play clank sound effect

//audio_play_sound(upgradeClick_snd,1,0);


////start alarm;

//alarm_set(0,180);
	
//}