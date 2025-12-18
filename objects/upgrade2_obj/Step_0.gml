/// @description Insert description here
// You can write your code in this editor

//ai gameplay stuff in step event intead of mouse 

if(modifiedAI_obj.aiWantsSpeed == true)

{

if (gameStates_obj.modifiedAIIsPicking == true)

{
	

	
modifiedAI_obj.modifiedAISpeed += 1;

modifiedAI_obj.modifiedAIMaxSpeed += 1;

gameStates_obj.modifiedAIIsPicking = false;



//jump to middle of screen

player_obj.x = 672;

modifiedAI_obj.x = 672;


player_obj.playerHealth = player_obj.playerHealthMax;

player_obj.modifiedAIHealth = modifiedAI_obj.modifiedAIHealthMax;


//play clank sound effect

audio_play_sound(upgradeClick_snd,1,0);

//start alarm;

alarm_set(0,180);

modifiedAI_obj.aiHasOneSpeed = true;


modifiedAI_obj.aiWantsSpeed = false;
	
}

}