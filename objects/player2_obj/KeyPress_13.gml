/// @description Insert description here
// You can write your code in this editor



if (room == testMechanic_rm)

{

if (player2Ammo > 0)

{

var instance = instance_create_layer(player2_obj.x,player2_obj.y, "Instances", opponentCannon_obj);


instance_create_layer(player2_obj.x,player2_obj.y + 28, "Instances", cannonShotSmoke2_obj);

audio_play_sound(cannonFire1_snd,1,false);


player2Ammo -= 1;

}


}

