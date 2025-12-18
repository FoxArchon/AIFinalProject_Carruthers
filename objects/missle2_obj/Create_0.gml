/// @description Insert description here
// You can write your code in this editor



image_xscale = .4;

image_yscale = .4;


noHeat = false;

speed = random_range(2.5,3);



audio_play_sound(missleFly_snd,1,0);


instance_create_layer(x,y - 5,"HighestSmokeLayer",missleLaunchSmoke_obj);


lifeSpan = 400;

heatSeekLifeSpan = 275;