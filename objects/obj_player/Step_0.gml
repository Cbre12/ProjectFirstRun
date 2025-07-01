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
	
///rotation code
//var angle_to_mouse = point_direction(x, y, mouse_x, mouse_y)
//image_angle = angle_to_mouse;



if (attack_cooldown > 0) {
    attack_cooldown--;
}

// Check if player is holding mouse and ready to attack
if (mouse_check_button(mb_left) && attack_cooldown <= 0) {
    switch (slot[0]) {
        case "slash":
            event_user(0);
            attack_cooldown = alarmtime[0];
            break;
        case "hammer":
            event_user(1);
            attack_cooldown = alarmtime[1];
            break;
        case "fireball":
            event_user(2);
            attack_cooldown = alarmtime[2];
            break;
    }
}