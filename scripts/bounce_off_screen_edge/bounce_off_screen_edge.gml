function bounce_off_screen_edge(m_loss){
	var _half_width = sprite_get_width(sprite_index) / 2;
	var _half_height = sprite_get_height(sprite_index) / 2;

	if (x < _half_width or x > room_width - _half_width)
	{
		x = xprevious;
		// reverse our horizontal speed
		// like bounce from the edge of the screen
		hspeed = -hspeed * m_loss;
	}

	if (y < _half_height or y > room_height - _half_height)
	{
		y = yprevious;
		vspeed = -vspeed * m_loss;
	}
}