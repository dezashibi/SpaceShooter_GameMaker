// set sprite direction by facing toward the mouse pointer
var _mouse_direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = _mouse_direction;

// check if ship should run based on right click
// movement code by mouse right click
var _thrust = mouse_check_button(mb_right) or keyboard_check(ord("A"));
image_index = _thrust; // true or false are actually 1 or 0

if (_thrust) 
{
	// change direction of movement toward the mouse pointer
	motion_add(image_angle, acceleration);
	if (speed > max_speed)
	{
		speed = max_speed;
	}
	// adding particle effect
	repeat (4)
	{
		var _offset = random_range(-4, 4);
		var _length = -14;
		var _x = x + lengthdir_x(_length, image_angle) + _offset;
		var _y = y + lengthdir_y(_length, image_angle) + _offset;
		instance_create_layer(_x, _y, "Effects", o_explosion_particle);
	}
}
else 
{
	// stop slowly
	friction = friction_amount;
}

var _fire_laser = mouse_check_button_pressed(mb_left) or keyboard_check_pressed(ord("S"));

if (_fire_laser)
{
	// shoot 2 lasers 1 from left and 1 from right
	shoot_laser(60);
	shoot_laser(-60);
}