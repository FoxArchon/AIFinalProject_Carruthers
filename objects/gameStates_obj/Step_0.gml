/// @description Insert description here
// You can write your code in this editor



//if (room == testUpgrade_rm)

//{
	
	
	//cursor_sprite = wrenchCursor_spr;
	
	
//}



//else

//{
	
		//windows_set_cursor();
	
	
//}



//restore speeds 


if(room == testUpgrade_rm)
{
	
	
	
	
	modifiedAI_obj.modifiedAISpeed = modifiedAI_obj.modifiedAIMaxSpeed;
	
	//player2_obj.player2Speed = player2_obj.player2MaxSpeed;

	player_obj.playerSpeed = player_obj.playerMaxSpeed;
	
}




if (modifiedAIScore >= 5)

{
	
	
modifiedAIScore = 0;
	
	
room_goto(modifiedAIWins_rm);
	
	
	
}





//if (player2Score >= 5)

//{
	
	
//player2Score = 0;
	
	
//room_goto(player2Wins_rm);
	
	
	
//}


if (playerScore >= 5)

{
	
	
playerScore = 0;
	
room_goto(player1Wins_rm);	
	
	
}






















