/// @description Insert description here
// You can write your code in this editor

modifiedAIScore = 0;

player2Score = 0;


playerScore = 0;

modifiedAIIsPicking = false;


player1IsPicking = false;



isShooting = false;

isRetracting = false;



//player2IsPicking = true;


//player2 = instance_create_layer(672,122,"Instances",player2_obj);


player = instance_create_layer(672,650,"Instances",player_obj);

//aiOpponent = instance_create_layer(672,122,"Instances",aiOpponent1_obj);

mediumAIOpponent = instance_create_layer(672,122,"Instances",modifiedAI_obj);


if(room == testMechanic_rm)

{

alarm_set(0,720);

alarm_set(1,1200);

alarm_set(2,1800);

alarm_set(3,1100);


}


