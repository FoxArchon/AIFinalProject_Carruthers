/// @description Insert description here
// You can write your code in this editor




draw_self();


if (room == testUpgrade_rm)

{
	
	
self.visible = false;	
	
	
}



else if (room == player1Wins_rm)

{
	

instance_destroy(self);	
	
	
}


else if (room == player2Wins_rm)

{
	
	

instance_destroy(self);
	
}



else

{
	
	
self.visible = true;	
	
	
}