/// @description Insert description here
// You can write your code in this editor






x = modifiedAI_obj.x;



 
 
 var maxlength = 800;
 
 for(i = 0; i < maxlength; i++)
 
 {
	 
	 
	 
	 xEnd = x + lengthdir_x(i,direction);
	 
	 yEnd = y + lengthdir_y(i,direction);
	 
	 laserLength = i;
	 
	 
	 
	 
	  if(collision_point(xEnd,yEnd +95 ,player_obj,true,true))
	 {
		 
		 
		 if(!audio_is_playing(cannonHit1_snd))

		{

			audio_play_sound(cannonHit1_snd,1,false);
	
			player_obj.flashAlpha = 1;

		}


		player_obj.playerHealth -= .01;
		 
		 
		 part_particles_create(laserParticleManager2_obj.laserParticleSystem2,xEnd,yEnd +95,laserParticleManager2_obj.laserParticleHit2,1);
		 
		 break;
		 
	 }
	 
	 
	 
	 
	 
 }
 
 
 
  if (laserAttatchment2_obj.laserPressed == false)
 {
	 
	instance_destroy();
	 
	 
 }
 
 
 
 
 
 
 
 
