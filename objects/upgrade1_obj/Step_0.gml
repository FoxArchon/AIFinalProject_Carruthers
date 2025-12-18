/// @description Insert description here
// You can write your code in this editor

//ai gameplay stuff in step event intead of mouse 


if(modifiedAI_obj.aiWantsDamage == true)
{


if (gameStates_obj.modifiedAIIsPicking == true)

{
	

	
modifiedAI_obj.modifiedAIDamage += .5;

gameStates_obj.modifiedAIIsPicking = false;


//jump to middle of screen

player_obj.x = 672;


modifiedAI_obj.x = 672;


player_obj.playerHealth = player_obj.playerHealthMax;

modifiedAI_obj.modifiedAIHealth = modifiedAI_obj.modifiedAIHealthMax;

//play clank sound effect

audio_play_sound(upgradeClick_snd,1,0);


//start alarm for upgrade sound


alarm_set(0,180);

modifiedAI_obj.aiHasOneDamage = true;


modifiedAI_obj.aiWantsDamage = false;
	
}

}