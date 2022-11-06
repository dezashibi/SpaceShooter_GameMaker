image_angle = random(360);
image_xscale = scale;
image_yscale = scale;

// creating some chunks
repeat (60)
{
	instance_create_layer(x + random_range(-8, 8), y + random_range(-8, 8), "Effects", o_explosion_chunk);
}

// play sound
audio_play_sound(a_explode, 4, false);

// shake screen
instance_create_layer(x, y, "Instances", o_screen_shake);