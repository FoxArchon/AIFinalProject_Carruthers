/// @description Insert description here
// You can write your code in this editor



if (room == testMechanic_rm)

{



if (playerAmmo > 0)

{

var instance = instance_create_layer(player_obj.x,player_obj.y, "Instances", playerCannon_obj);


instance_create_layer(player_obj.x,player_obj.y - 28, "Instances", cannonShotSmoke_obj);

audio_play_sound(cannonFire1_snd,1,false);


playerAmmo -= 1;

}



}