/// @description Insert description here
// You can write your code in this editor




if ( x >= 640)

{
	
	
	if(!instance_exists(sideBoost2_obj))
	{
	speed = 0;
	
	}
	
	if (done == false)

	{
	
		boostCountDown = true;

	}

	
}


if ( boostCountDown == true )

{

	boostTime -= 1;

}


if ( boostTime <= 0)
{
	
	
instance_create_layer(x,y,"BackBoostLayer",sideBoost2_obj);
	
boostTime = 180;
	
	
boostCountDown = false;

done = true;
	
}