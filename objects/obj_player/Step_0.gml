//get inputs
var right = keyboard_check(ord("D"));
var left  = keyboard_check(ord("A"));
var up    = keyboard_check(ord("W"));
var down  = keyboard_check(ord("S"));



//movement, combined
var hor  = (right - left);
var vert = (down - up);


//collisions
if place_meeting(x + hor, y, obj_wall)
{
    hor = 0;
}
if place_meeting(x, y + vert, obj_wall)
{
    vert = 0;
}


//apply
x += hor  * movespd;
y += vert * movespd;

	//flips players sprite to face correct direction
	if (hor > 0) {image_xscale =  1;}
	if (hor < 0) {image_xscale = -1;}