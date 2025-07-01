var drop_chance = 0.5;


instance_create_layer(x,y, "Instances", obj_gold);

if (random(1) > drop_chance) {

instance_create_layer(x,y, "Instances", obj_soulxp);

}