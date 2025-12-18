/// @description Insert description here
// You can write your code in this editor



saveID = noone;

canShoot = true;

isShooting = false;

isRetracting = false;

canHook = true;


 if (instance_number(hookShot_obj) > 1) {
    instance_destroy(); // Prevent duplicate players
} else {
    persistent = true; // Keep the player across rooms
}