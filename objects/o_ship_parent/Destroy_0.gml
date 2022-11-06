instance_create_layer(x, y, "Effects", o_explosion_flash);

if (object_index != o_player_ship)
{
	score += hit_score;
	
	// update high score
	if (score > global.high_score)
	{
		global.high_score = score;
		ini_open("shooter.ini");
		ini_write_real("scores", "high_score", global.high_score);
		ini_close();
	}
}