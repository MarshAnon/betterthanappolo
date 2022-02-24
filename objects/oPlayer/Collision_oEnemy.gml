/// @description enemy collision


//check to see if there is a collision between player and top of o enemy
if (y <= other.y - other.sprite_height*0.9)

	{
		//bounce in air 
		yVector = jumpForce;
		EnemyHurt();
	}
	//otherwise restart
else
{
	PlayerHurt();
		
}