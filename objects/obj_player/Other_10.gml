///@description Slash



//var slash = instance_create_layer(x,y, "Instances", obj_weapon_slash );
   // slash.image_xscale = image_xscale;
		//if (image_xscale ==  1)  {slash.addX =  15;  }
		//if (image_xscale == -1)  {slash.addX = -15; }
			
// Get direction from player to mouse
var dir = point_direction(x, y, mouse_x, mouse_y);

// Distance to offset the slash from the player
var distance = 15;

// Calculate offset position
var spawn_x = x + lengthdir_x(distance, dir);
var spawn_y = y + lengthdir_y(distance, dir);

// Create the slash instance at the offset position
var slash = instance_create_layer(spawn_x, spawn_y, "Instances", obj_weapon_slash);

// Maintain the player's image_xscale for the slash
slash.image_angle = dir;
//slash.image_xscale = image_xscale;

