//code runs every frame
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);
down = keyboard_check_pressed(vk_down)
//what direction player goin
if(isInvincible)
{
invTimer -=1/room_speed;
	if(invTimer<=0)
	{invTimer=2;
	isInvincible=false;}
}
//horizontal move
xDirection = right - left;
xVector = xDirection * xSpeed;

//wall detect
if(place_meeting(x + xVector, y, oWall))	
	{//! meant not
		while(!place_meeting(x + xVector, y, oWall))
		//only move 1 pxl til hit wall
		{
		x = x + xDirection;
		}
	    xVector = 0;
		
	} 
x = x + xVector;

//vertical movement
yVector = yVector + grv;

if(place_meeting(x, y + yVector, oWall))	
	{//! meant not
		while(!place_meeting(x, y + sign(yVector), oWall))
		{//only move 1 pxl til hit wall
		y = y + sign(yVector);
		}
	    yVector = 0;
		
	} 
y = y + yVector;

        //if we are touching oWall and we press the jump key jump
if (place_meeting(x, y + 1, oWall) and (jump)) 
{
  yVector = jumpForce; 
} 

//die in a pit and reset
if (y >= room_height)

{ 
   PlayerDeath();
}
