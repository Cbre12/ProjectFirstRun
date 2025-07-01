///@description update enemies

with (obj_enemy_parent){

//sets direction towards player
direction = point_direction(x,y, obj_player.x, obj_player.y );
speed     = walkspeed;




//sets the enemy sprite to flip facing left or right depending on where the player is
if (obj_player.x > x){image_xscale = 1; }
	else {image_xscale = -1; }
	
	
	
//puts enemy sprites on top depending on y posistion
depth = -y;

}



//puts player sprite on top depending on y position
obj_player.depth = -obj_player.y;

// loop
alarm[0] = alarmtime;