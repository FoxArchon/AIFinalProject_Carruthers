/// @description Insert description here
// You can write your code in this editor



//Instantiate laser attatchment at player location for testing

//instance_create_layer(player2_obj.x,player2_obj.y - 27,"AboveShipUpgrades",laserAttatchment2_obj);



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


player2Ammo = 5;

player2ReloadTime = 3.5;


player2Health = 5;


player2HealthMax = 5;

player2HealthBarWidth = 100;

player2HealthBarHeight = 12;

player2HealthBarX = (1150) + (player2HealthBarWidth / 2 );

player2HealthBarY = (20) + (player2HealthBarHeight);


player2MaxSpeed = 3.5;

player2Speed = 3.5;




player2Speed = 3.5

player2Damage = 1;


if (instance_number(player2_obj) > 1) {
    instance_destroy(); // Prevent duplicate players
} else {
    persistent = true; // Keep the player across rooms
}










