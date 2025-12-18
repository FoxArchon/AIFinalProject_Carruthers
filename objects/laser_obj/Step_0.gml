/// @description Insert description here
// You can write your code in this editor






x = player_obj.x;





 var maxlength = 800;
 
 for(i = 0; i < maxlength; i++)
 
 {
	 
	 xEnd = x + lengthdir_x(i,direction);
	 
	 yEnd = y + lengthdir_y(i,direction);
	 
	 laserLength = i;
	 
	 
	 if(collision_point(x,yEnd - 95 ,modifiedAI_obj,true,true))
	 {
		 
		 
		 if(!audio_is_playing(cannonHit1_snd))

		{

			audio_play_sound(cannonHit1_snd,1,false);
	
			modifiedAI_obj.flashAlpha = 1;

		}


	    modifiedAI_obj.modifiedAIHealth -= .01;
		 
		 
		 part_particles_create(laserParticleManager_obj.laserParticleSystem,xEnd,yEnd -95,laserParticleManager_obj.laserParticleHit,1);
		 
		 break;
		 
	 }
	 
	 
 }








 if (laserAttatchment_obj.laserPressed == false)
 {
	 
	instance_destroy();
	 
	 
 }
 
 
 
   
