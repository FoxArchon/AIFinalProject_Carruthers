/// @description Insert description here
// You can write your code in this editor



if(gameStates_obj.player1IsPicking == true)

{

gameStates_obj.player.playerDamage += .5;

gameStates_obj.player1IsPicking = false;


//jump to middle of screen

player_obj.x = 672;

modifiedAI_obj.x = 672;

player_obj.playerHealth = player_obj.playerHealthMax;

modifiedAI_obj.modifiedAIHealth = modifiedAI_obj.modifiedAIHealthMax;

//play clank sound effect

audio_play_sound(upgradeClick_snd,1,0);


//start alarm for upgrade sound

//start alarm;

alarm_set(0,180);

//start other alarm

//alarm_set(1,2);


}


//else if (gameStates_obj.modifiedAIIsPicking == true)

//{
	
	
//gameStates_obj.modifiedAI.modifiedAIDamage += .5;

//gameStates_obj.modifiedAIIsPicking = false;


////jump to middle of screen

//player_obj.x = 672;


//modifiedAI_obj.x = 672;


//player_obj.playerHealth = player_obj.playerHealthMax;

//modifiedAI_obj.modifiedAIHealth = modifiedAI_obj.modifiedAIHealthMax;

////play clank sound effect

//audio_play_sound(upgradeClick_snd,1,0);


////start alarm for upgrade sound


//alarm_set(0,180);

////room_goto(testMechanic_rm);

	
//}