/// @description Insert description here
// You can write your code in this editor

//ai gameplay stuff in step event intead of mouse 

if(modifiedAI_obj.aiWantsMissleLauncher == true)

{

if (gameStates_obj.modifiedAIIsPicking == true)

{
	

	
instance_create_layer(modifiedAI_obj.x,modifiedAI_obj.y,"AboveShipUpgrades",missleAttatchment2_obj);

gameStates_obj.modifiedAIIsPicking = false;


//jump to middle of screen

player_obj.x = 672;

modifiedAI_obj.x = 672;

player_obj.playerHealth =  player_obj.playerHealthMax;

modifiedAI_obj.modifiedAIHealth = modifiedAI_obj.modifiedAIHealthMax;

//play clank sound effect

audio_play_sound(upgradeClick_snd,1,0);


//start alarm;

alarm_set(0,180);

modifiedAI_obj.aiHasMissleLauncher = true;

modifiedAI_obj.aiWantsMissleLauncher = false;
	
}

}