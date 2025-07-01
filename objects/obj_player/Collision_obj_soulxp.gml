//xp system

xp += 1;
//if (xp>= xpNext){
	//xp = 0;
	//xpNext++;
	
	var _vx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
	var _vy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);
	
	//var a = instance_create_depth(_vx, _vy, -2000, obj_upgrade);
		//a.destinationY = _vy;
		//a.image_alpha = 1;
		//a.sprite_index = spr_upgrade_slash;
		
	//var a = instance_create_depth(_vx, _vy, -2000, obj_upgrade);
		//a.destinationY = _vy -35;
		//a.image_alpha = 1;
		//a.sprite_index = spr_upgrade_magnet;
		
	//var a = instance_create_depth(_vx, _vy, -2000, obj_upgrade);
		//a.destinationY = _vy + 35;
		//a.image_alpha = 1;
		//a.sprite_index = spr_upgrade_hammer;
}








instance_destroy(other.id);