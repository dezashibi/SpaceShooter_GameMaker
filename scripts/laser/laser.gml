function shoot_laser(_angle)
{
	var _distance = sprite_get_width(sprite_index) / 2;
	
	var _x = x + lengthdir_x(_distance, image_angle + _angle) + hspeed;
	var _y = y + lengthdir_y(_distance, image_angle + _angle) + vspeed;
	
	var _laser = instance_create_layer(_x, _y, "Instances", o_laser);
	_laser.direction = image_angle;
	_laser.speed = 8;
	_laser.image_angle = image_angle;
}

function create_laser_effect()
{
	var _effect = instance_create_layer(x, y, "Effects", o_explosion_particle);
	_effect.image_xscale = 1;
	_effect.image_yscale = 1;
}