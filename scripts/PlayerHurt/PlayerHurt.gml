// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//trigger temp invinc and take damage
function PlayerHurt()
{
	if(!oPlayer.isInvincible)
	{
	oPlayer.isInvincible = true;
	oPlayer.hp --;
		if(oPlayer.hp < 1)
		{
			PlayerDeath();
		}
	}
}
//restart level
function PlayerDeath()
{
	room_restart()
}