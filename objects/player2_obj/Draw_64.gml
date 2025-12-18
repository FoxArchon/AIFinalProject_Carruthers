/// @description Insert description here
// You can write your code in this editor


draw_sprite(health_spr,0,player2HealthBarX,player2HealthBarY);

draw_sprite_stretched(health_spr,0,player2HealthBarX,player2HealthBarY,(player2Health/player2HealthMax) * player2HealthBarWidth,player2HealthBarHeight);

draw_sprite(healthBorder_spr,0,player2HealthBarX,player2HealthBarY);
