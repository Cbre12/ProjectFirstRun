var _list = ds_list_create(); 
var _num = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_enemy_parent, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
		
		//this is the code for knockback that currently is bugged so it will be commented out until debug.
		//var dir = point_direction(x,y, _list[| i].x, _list.y)
		 //_list[| i].x = _list[| i].x + lengthdir_x(5, dir );
		 //_list[| i].y = _list[| i].y + lengthdir_x(5, dir );
		
		
		_list[| i].hp -= dmg;
		if(_list[| i].hp <= 0){
        instance_destroy(_list[| i]);}
    }
}
ds_list_destroy(_list);