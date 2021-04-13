// Gets the number of enemies in a room
var _enemy_number = instance_number(o_ship_parent) -1;

if (_enemy_number ==0) {
	
	//Div is like a division but with no decimal return value
	
	var _enemies_to_spawn = 3 + score div 10;

	generate_enemys(_enemies_to_spawn, o_enemy_ship_one);
	
	var _enemies_to_spawn = 1 + score div 20;
	generate_enemys(_enemies_to_spawn, o_enemy_ship_2);
	
}