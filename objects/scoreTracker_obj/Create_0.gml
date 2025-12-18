/// @description Insert description here
// You can write your code in this editor









scoreFont = font_add_sprite_ext(scoreFont2_spr,"<>*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ",true,0);


draw_set_font(scoreFont);


 if (instance_number(scoreTracker_obj) > 1) {
    instance_destroy(); // Prevent duplicate players
} else {
    persistent = true; // Keep the player across rooms
}