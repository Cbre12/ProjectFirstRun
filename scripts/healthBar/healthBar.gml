function initHealth(max){
	maxHP = max;
	currentHP = max;
}

function drawHealth(){
	draw_healthbar(
	x + 10,
	y + 15,
	x - 10,
	y + 10,
	100 * (currentHP / maxHP),
	c_black,
	c_red,
	c_green,
	0,
	true,
	false
	)
}