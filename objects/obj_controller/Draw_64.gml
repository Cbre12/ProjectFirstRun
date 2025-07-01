draw_text_ext_transformed(50,50, instance_number(obj_enemy_parent), 0, 500,4,4,0);
draw_text_ext_transformed(1300,50, "Gold:" + string(obj_player.gold), 0, 500,4,4,0);
draw_text_ext_transformed(1300,100, "Xp:" + string(obj_player.xp), 0, 500,4,4,0);











// ------------------------SOUL METER----------------------------------
//position
var x_pos = 10;
var y_pos = 10;
var margin = 20;



//calculate souls
var fill = clamp(souls / souls_max,0,1);
var soul_display = clamp(souls, 0, souls_max);

//drawing
draw_set_color(c_black);
draw_rectangle(x_pos,y_pos, x_pos + bar_width,y_pos + bar_height, false );

//draw soul fill
draw_set_color(c_blue);
draw_rectangle(x_pos,y_pos, x_pos + (bar_width * fill),y_pos + bar_height, false );

draw_set_color(c_white);
draw_text(x_pos + bar_width / 2, y_pos, string(soul_display) + "/" + string(souls_max));
