// Set the sprite to face the mouse
var _mouse_direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = _mouse_direction;


var _thrust = mouse_check_button(mb_right);
image_index = _thrust

if (_thrust) {
	motion_add(image_angle, acceleration);
	if (speed > max_speed) {
		speed = max_speed;
	}
	
	repeat (4) {
	
		// This area is dealing the explosion particle from the thruster 
		var _offset = random_range(-4, 4);
		var _length = -16;
		// This i placing the explosion particle 
		var _x = x + lengthdir_x(_length, image_angle) + _offset;
		var _y = y + lengthdir_y(_length, image_angle) + _offset;
	
		//Calling the explosion particle
		instance_create_layer(_x, _y, "Effects", o_expo_particle);
	}
	
} else {
	friction = friction_amount;
}

// Grabbing if the left mouse has been clicked
var _fire_lazer = mouse_check_button_pressed(mb_left);

// If the mouse is presed as above call the create laxor function
if (_fire_lazer) {

	fire_lazer();

}