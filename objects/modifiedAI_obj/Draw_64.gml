/// @description Insert description here
// You can write your code in this editor


draw_sprite(health_spr,0,modifiedAIHealthBarX,modifiedAIHealthBarY);

draw_sprite_stretched(health_spr,0,modifiedAIHealthBarX,modifiedAIHealthBarY,(modifiedAIHealth/modifiedAIHealthMax) * modifiedAIHealthBarWidth,modifiedAIHealthBarHeight);

draw_sprite(healthBorder_spr,0,modifiedAIHealthBarX,modifiedAIHealthBarY);
