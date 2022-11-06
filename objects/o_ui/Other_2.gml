ini_open("shooter.ini");
global.high_score = ini_read_real("scores", "high_score", 0);
var _fullscreen = ini_read_string("settings", "fullscreen", "false");
global.full_screen = false;
if (_fullscreen == "true")
{
	global.full_screen = true;
}
show_debug_message("loaded: " + string(global.full_screen));
window_set_fullscreen(global.full_screen);
ini_close();