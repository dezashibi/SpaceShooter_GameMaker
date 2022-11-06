global.full_screen = !window_get_fullscreen();
ini_open("shooter.ini");
if (global.full_screen)
{
	ini_write_string("settings", "fullscreen", "true");
}
else
{
	ini_write_string("settings", "fullscreen", "false");
}
ini_close();

// apply full screen
show_debug_message(string(global.full_screen));
window_set_fullscreen(global.full_screen);