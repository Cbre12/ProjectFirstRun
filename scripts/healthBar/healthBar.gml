function initHealth(max){
	maxHP = max;
	currentHP = max;
}

function drawHealth(){
	draw_healthbar(
	x,
	y -8,
	x + sprite_width,
	y -2,
	100 * (currentHP / maxHP),
	c_black,
	c_red,
	c_green,
	0,
	true,
	false
	)
}
