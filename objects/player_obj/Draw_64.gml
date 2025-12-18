/// @description Insert description here




draw_sprite(health_spr,0,player1HealthBarX,player1HealthBarY);

draw_sprite_stretched(health_spr,0,player1HealthBarX,player1HealthBarY,(playerHealth/playerHealthMax) * player1HealthBarWidth,player1HealthBarHeight) ;

draw_sprite(healthBorder_spr,0,player1HealthBarX,player1HealthBarY);

