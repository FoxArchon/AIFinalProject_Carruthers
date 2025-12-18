/// @description Insert description here
// You can write your code in this editor






laserParticleSystem = part_system_create_layer("AboveShipUpgrades",0);


laserParticleHit = part_type_create();

part_type_sprite(laserParticleHit,laserExplode_spr,1,0,0);

part_type_size(laserParticleHit,.75,1,.01,0)

part_type_life(laserParticleHit,5,15);

part_type_alpha3(laserParticleHit,1,0.6,0.2);

part_type_size_y(laserParticleHit,.4,.4,0,0);

part_type_orientation(laserParticleHit,180,180,0,0,0);







