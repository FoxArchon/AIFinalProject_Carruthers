/// @description Insert description here
// You can write your code in this editor



//Instantiate laser attatchment at player location for testing

//instance_create_layer(player_obj.x,player_obj.y + 27,"AboveShipUpgrades",laserAttatchment_obj);



isDamaged = false;


boostCharging = false

boostReady = true;

boostHappening = false;

boostTime = 180;

boostChargeTime = 300;

boostSoundReady = true;


firstHookCollision = false;

flashAlpha = 0;

flashColor = c_red;


image_angle -= 90;

image_xscale = 0.75;

image_yscale = 0.75;

playerAmmo = 5;

reloadTime = 3.5;


playerHealth = 5;

playerHealthMax = 5;

player1HealthBarWidth = 100;

player1HealthBarHeight = 12;

player1HealthBarX = (20) + (player1HealthBarWidth / 2 );

player1HealthBarY = (20) + (player1HealthBarHeight);


playerMaxSpeed = 3.5;

playerSpeed = 3.5;



playerDamage = 1;




if (instance_number(player_obj) > 1) {
    instance_destroy(); // Prevent duplicate players
} else {
    persistent = true; // Keep the player across rooms
}




