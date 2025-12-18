/// @description Insert description here
// You can write your code in this editor







image_yscale = .6;

image_xscale = .7;



misslesReady = true;

misslesFired = false;

misslesAmountShots = 3;

missleReloadTime = 5;


 if (instance_number(missleAttatchment_obj) > 1) {
    instance_destroy(); // Prevent duplicate players
} else {
    persistent = true; // Keep the player across rooms
}