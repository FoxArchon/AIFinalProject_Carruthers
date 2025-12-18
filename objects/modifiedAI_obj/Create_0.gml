/// @description Insert description here
// You can write your code in this editor


// this is an addition for the AI so speed does not increase every frame for
//when the AI is boosting

aiHasBoost = false;


//this allows it so so irandom will not be a fake seed 
//normally gamemaker has the same seed for randomness so you have to add this variable to test properly
randomize();


//variables for AI 

//this timer variable is to help with a check to make sure the AI cannot spam shots in
//a manner that is unrealistic and is faster than a human can shoot

timer = 10;



//these are bools for corner avoidance behavior

isAvoidingLeftWall = false;

isAvoidingRightWall = false;


//these are bools for the AI decision making when it is its turn to pick in the upgrade room
//some of these are not used as they would be for more inteelligent AI that regards the number
//instances of health,damage, or speed, which I may add later

aiHasMissleLauncher = false;

aiHasLaser = false;

aiHasHook = false;

aiHasOneHealth = false;

aiHasTwoHealth = false;

aiHasThreeHealth = false;

aiHasOneDamage = false;

aiHasTwoDamage = false;

aiHasThreeDamage = false;

aiHasOneSpeed = false;

aiHasTwoSpeed = false;

aiHasThreeSpeed = false;

aiWantsToBoost = false;

aiWantsDamage = false;

aiWantsHealth = false;

aiWantsSpeed = false;

aiWantsMissleLauncher = false;

aiWantsLaser = false;

aiWantsHook = false;




//variables copied from player 2 object that are not unique to the AI but renamed to fit

isDamaged = false;

boostCharging = false

boostReady = true;

boostHappening = false;

boostTime = 180;

boostChargeTime = 300;

boostSoundReady = true;



image_angle += 90;

image_xscale = 0.75;

image_yscale = 0.75;


firstHookCollision = false;


flashAlpha = 0;

flashColor = c_red;


modifiedAIAmmo = 5;

modifiedAIReloadTime = 3.5;


modifiedAIHealth = 5;


modifiedAIHealthMax = 5;

modifiedAIHealthBarWidth = 100;

modifiedAIHealthBarHeight = 12;

modifiedAIHealthBarX = (1150) + (modifiedAIHealthBarWidth / 2 );

modifiedAIHealthBarY = (20) + (modifiedAIHealthBarHeight);


modifiedAIMaxSpeed = 3.5;

modifiedAISpeed = 3.5;

modifiedAIDamage = 1;


if (instance_number(modifiedAI_obj) > 1) {
    instance_destroy(); // Prevent duplicate players
} else {
    persistent = true; // Keep the player across rooms
}










