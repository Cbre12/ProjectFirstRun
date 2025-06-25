//get inputs
rightkey = keyboard_check(ord("D"));
leftkey = keyboard_check(ord("A"));
upkey = keyboard_check(ord("W"));
downkey = keyboard_check(ord("S"));



//getting the x and y speeds
xspd = (rightkey - leftkey) * movespd;
yspd = (downkey - upkey) * movespd;


//collisions
if place_meeting(x + xspd, y, obj_wall)
{
    xspd = 0;
}
if place_meeting(x, y + yspd, obj_wall)
{
    yspd = 0;
}


//move the player
x += xspd;
y += yspd;