/// @description Insert description here
// You can write your code in this editor




//timer for ai





//Scale down sprite to fit on ship

image_xscale = .5;

image_yscale = .5;

image_angle += 180;


laserDuration = 5;

laserCoolDown = 5;

laserReady = true;

laserPressed = false;
 
 
 
 if (instance_number(laserAttatchment2_obj) > 1) {
    instance_destroy(); // Prevent duplicate players
} else {
    persistent = true; // Keep the player across rooms
}