//code runs every frame
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//what direction player goin


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

                                        