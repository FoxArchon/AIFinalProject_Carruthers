/// @description Insert description here
// You can write your code in this editor




if (room == titleScreen_rm && !audio_is_playing(titleTheme_mx))

{
	
	
audio_stop_sound(Theme1_mx);
	
audio_play_sound(titleTheme_mx,1,true);
	
	
}







if (room == testMechanic_rm && !audio_is_playing(Theme1_mx))

{
	
audio_stop_sound(titleTheme_mx);
	
	
audio_play_sound(Theme1_mx,1,true);
	
	
}







if (room == player1Wins_rm || room == player2Wins_rm)

{
	audio_stop_sound(titleTheme_mx);
	audio_stop_sound(Theme1_mx);
	audio_stop_sound(laserFire1_snd);
	audio_stop_sound(laserFire2_snd);
	audio_stop_sound(boost_snd);
	audio_stop_sound(cannonFire1_snd)
	audio_stop_sound(cannonHit1_snd);
	audio_stop_sound(chainAir_snd);
	audio_stop_sound(chainAir2_snd);
	audio_stop_sound(hookRetract_snd);
	audio_stop_sound(hookRetract2_snd);
	audio_stop_sound(missleFly_snd);
	audio_stop_sound(missleFire1_snd);


	
}


if (room == testMechanic_rm && !audio_is_playing(Theme1_mx))

{
	
	
audio_play_sound(Theme1_mx,1,true);
	
	
}

if(room == testUpgrade_rm)

{
	
	
	audio_stop_sound(laserFire1_snd);
	audio_stop_sound(laserFire2_snd);
	

	audio_stop_sound(boost_snd);
	
	audio_stop_sound(cannonFire1_snd)
	audio_stop_sound(cannonHit1_snd);
	audio_stop_sound(chainAir_snd);
	audio_stop_sound(chainAir2_snd);
	audio_stop_sound(hookRetract_snd);
	audio_stop_sound(hookRetract2_snd);
	audio_stop_sound(missleFly_snd);
	audio_stop_sound(missleFire1_snd);
	
	
	
	
}