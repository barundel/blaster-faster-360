instance_create_layer(x, y, "Effects", o_explosion_flash)

if (object_index != object_player_ship) {
	score += armor;
	if (score > global.highscore) {
		global.highscore = score;
		ini_open("Save.ini");
		ini_write_real("Scores", "HighScores", global.highscore);
		ini_close();
	}
}