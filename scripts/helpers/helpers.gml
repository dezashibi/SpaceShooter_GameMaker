function fade(_fade_speed)
{
	if(image_alpha > 0)
	{
		image_alpha -= _fade_speed;
	}
	else
	{
		instance_destroy();
	}
}

function blend_mode_effect()
{
	gpu_set_blendmode(bm_add);
	draw_self();
	gpu_set_blendmode(bm_normal);
}

function move_enemy(_acceleration, _max_speed)
{
	var _player_ship = instance_find(o_player_ship, 0);
	if (_player_ship == noone) exit;

	var _player_direction = point_direction(x, y, _player_ship.x, _player_ship.y);
	image_angle = direction;
	motion_add(_player_direction, _acceleration);

	if (speed > _max_speed)
	{
		speed = _max_speed;
	}
}

function hit_enemy()
{
	instance_destroy();
	other.armor -= 1;
	
	audio_play_sound(a_hit, 2, false);
}

function spawn_enemies(_number, _enemy)
{
	var _center_x = room_width / 2;
	var _center_y = room_height / 2;

	repeat(_number)
	{
		var _direction = random(360);
		var _distance = random_range(room_width * 0.6, room_width * 0.9);
		var _x = _center_x + lengthdir_x(_distance, _direction);
		var _y = _center_y + lengthdir_y(_distance, _direction);
		instance_create_layer(_x, _y, "Instances", _enemy);
	}
}

function btn_start_click()
{
	room_goto(r_space);
}

function btn_quit_click()
{
	game_end();
}