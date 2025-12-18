/// @description Insert description here
// You can write your code in this editor






laserParticleSystem2 = part_system_create_layer("AboveShipUpgrades",0);


laserParticleHit2 = part_type_create();

part_type_sprite(laserParticleHit2,laserExplode_spr,1,0,0);

part_type_size(laserParticleHit2,.75,1,.01,0)

part_type_life(laserParticleHit2,5,15);

part_type_alpha3(laserParticleHit2,1,0.6,0.2);

part_type_size_y(laserParticleHit2,.4,.4,0,0);







