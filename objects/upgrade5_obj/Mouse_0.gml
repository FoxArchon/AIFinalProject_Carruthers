/// @description Insert description here
// You can write your code in this editor



if(gameStates_obj.player1IsPicking == true)

{


instance_create_layer(player_obj.x,player_obj.y,"AboveShipUpgrades",missleAttatchment_obj);

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
	
	
//instance_create_layer(modifiedAI_obj.x,modifiedAI_obj.y,"AboveShipUpgrades",missleAttatchment2_obj);

//gameStates_obj.modifiedAIIsPicking = false;


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