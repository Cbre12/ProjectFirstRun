///@description collecting

var _list = ds_list_create();
var _num = collision_circle_list(obj_player.x, obj_player.y,obj_player.collectRadius,obj_soulxp, false, true, _list, false);
var _num = collision_circle_list(obj_player.x, obj_player.y,obj_player.collectRadius,obj_gold, false, true, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
       _list[| i].canFly = true;
    }
}
ds_list_destroy(_list);


alarm[2] = alarmtime2;