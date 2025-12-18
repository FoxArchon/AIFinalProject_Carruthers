/// @description Insert description here
// You can write your code in this editor


//list for current upgrades in the room to access for ai decison makaing

 


currentUpgradesList = [ 0, 0, 0 ];

//randomize upgrade options


//Have to randomize seed manually or else will always be the same


randomize();


//produce random number where range is the number of possible combinations


randomUpgradeNumber = irandom_range(0,19);




// spawn upgrades depeding on number of combinations


if (randomUpgradeNumber == 0)

{
	
	
	instance_create_layer(425,100,"Instances",upgrade1_obj);
	
	instance_create_layer(675,100,"Instances",upgrade2_obj);

	instance_create_layer(925,100,"Instances",upgrade3_obj);
	
}


else if(randomUpgradeNumber == 1)

{
	
	instance_create_layer(425,100,"Instances",upgrade1_obj);
	
	instance_create_layer(675,100,"Instances",upgrade2_obj);
	
	instance_create_layer(925,100,"Instances",upgrade4_obj);
	
}



else if(randomUpgradeNumber == 2)

{
	
	instance_create_layer(425,100,"Instances",upgrade1_obj);
	
	instance_create_layer(675,100,"Instances",upgrade3_obj);
	
	instance_create_layer(925,100,"Instances",upgrade4_obj);
	
}
	
	

else if(randomUpgradeNumber == 3)

{
	
	instance_create_layer(425,200,"Instances",upgrade2_obj);
	
	instance_create_layer(675,200,"Instances",upgrade3_obj);
	
	instance_create_layer(925,200,"Instances",upgrade4_obj);
	
}	


else if(randomUpgradeNumber == 4)

{
	
	instance_create_layer(425,200,"Instances",upgrade1_obj);
	
	instance_create_layer(675,200,"Instances",upgrade2_obj);
	
	instance_create_layer(925,200,"Instances",upgrade5_obj);
	
}	


else if(randomUpgradeNumber == 5)

{
	
	instance_create_layer(425,200,"Instances",upgrade1_obj);
	
	instance_create_layer(675,200,"Instances",upgrade3_obj);
	
	instance_create_layer(925,200,"Instances",upgrade5_obj);
	
}	


else if(randomUpgradeNumber == 6)

{
	
	instance_create_layer(425,200,"Instances",upgrade2_obj);
	
	instance_create_layer(675,200,"Instances",upgrade3_obj);
	
	instance_create_layer(925,200,"Instances",upgrade5_obj);
	
}	


else if(randomUpgradeNumber == 7)

{
	
	instance_create_layer(425,200,"Instances",upgrade1_obj);
	
	instance_create_layer(675,200,"Instances",upgrade4_obj);
	
	instance_create_layer(925,200,"Instances",upgrade5_obj);
	
}	


else if(randomUpgradeNumber == 8)

{
	
	instance_create_layer(425,200,"Instances",upgrade2_obj);
	
	instance_create_layer(675,200,"Instances",upgrade4_obj);
	
	instance_create_layer(925,200,"Instances",upgrade5_obj);
	
}	


else if(randomUpgradeNumber == 9)

{
	
	instance_create_layer(425,200,"Instances",upgrade3_obj);
	
	instance_create_layer(675,200,"Instances",upgrade4_obj);
	
	instance_create_layer(925,200,"Instances",upgrade5_obj);
	
}	


else if ( randomUpgradeNumber == 10)
{
	
	instance_create_layer(425,200,"Instances",upgrade4_obj);
	
	instance_create_layer(675,200,"Instances",upgrade5_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
	
}


else if ( randomUpgradeNumber == 11)
{
	
	instance_create_layer(425,200,"Instances",upgrade1_obj);
	
	instance_create_layer(675,200,"Instances",upgrade2_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
	
}

else if ( randomUpgradeNumber == 12)
{
	instance_create_layer(425,200,"Instances",upgrade1_obj);
	
	instance_create_layer(675,200,"Instances",upgrade3_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
	
}

else if ( randomUpgradeNumber == 13)
{
	
	instance_create_layer(425,200,"Instances",upgrade2_obj);
	
	instance_create_layer(675,200,"Instances",upgrade3_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
	
}

else if ( randomUpgradeNumber == 14)
{
	
	instance_create_layer(425,200,"Instances",upgrade1_obj);
	
	instance_create_layer(675,200,"Instances",upgrade4_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
}

else if ( randomUpgradeNumber == 15)
{
	
	instance_create_layer(425,200,"Instances",upgrade1_obj);
	
	instance_create_layer(675,200,"Instances",upgrade5_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
	
}

else if ( randomUpgradeNumber == 16)
{
	
	instance_create_layer(425,200,"Instances",upgrade2_obj);
	
	instance_create_layer(675,200,"Instances",upgrade4_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
	
}

else if ( randomUpgradeNumber == 17)
{
	
	instance_create_layer(425,200,"Instances",upgrade2_obj);
	
	instance_create_layer(675,200,"Instances",upgrade5_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
	
}

else if ( randomUpgradeNumber == 18)
{
	
	instance_create_layer(425,200,"Instances",upgrade3_obj);
	
	instance_create_layer(675,200,"Instances",upgrade4_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
}

else if ( randomUpgradeNumber == 19)
{
	
	instance_create_layer(425,200,"Instances",upgrade3_obj);
	
	instance_create_layer(675,200,"Instances",upgrade5_obj);
	
	instance_create_layer(925,200,"Instances",upgrade6_obj);
	
	
}



//dsiplay to indicate who is picking


if( gameStates_obj.player1IsPicking == true  )


{
	
	
	instance_create_layer(700, 700,"Instances",player1PickText_obj);
	
	
	
}



if( gameStates_obj.modifiedAIIsPicking == true)

{
	
	
	instance_create_layer(700, 700,"Instances",player2PickText_obj);
	
	
}