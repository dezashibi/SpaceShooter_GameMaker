// enemy number is all the children of o_ship_parent - 1 which is the player ship
var _enemy_number = instance_number(o_ship_parent) - 1;

if (_enemy_number == 0)
{
	var _enemies_to_spawn = random_range(2, 4) + score div 10;
	spawn_enemies(_enemies_to_spawn, o_enemy_1);
	
	if (score > 25)
	{
		_enemies_to_spawn = random_range(1, 3) + score div 20;
		spawn_enemies(_enemies_to_spawn, o_enemy_2);
	}	
}