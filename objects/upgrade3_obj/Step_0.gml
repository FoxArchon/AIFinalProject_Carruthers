/// @description Insert description here
// You can write your code in this editor


//ai gameplay stuff in step event intead of mouse 

if(modifiedAI_obj.aiWantsHealth == true)

{

if (gameStates_obj.modifiedAIIsPicking == true)

{
	
	

modifiedAI_obj.modifiedAIHealthMax += 1;


gameStates_obj.modifiedAIIsPicking = false;


//jump to middle of screen

player_obj.x = 672;

modifiedAI_obj.x = 672;


player_obj.playerHealth = player_obj.playerHealthMax;

modifiedAI_obj.modifiedAIHealth = modifiedAI_obj.modifiedAIHealthMax;

modifiedAI_obj.modifiedAIHealth += 1;

//play clank sound effect

audio_play_sound(upgradeClick_snd,1,0);

//start alarm;

alarm_set(0,180);

modifiedAI_obj.aiHasOneHealth = true;

modifiedAI_obj.aiWantsHealth = false;
	
}

}