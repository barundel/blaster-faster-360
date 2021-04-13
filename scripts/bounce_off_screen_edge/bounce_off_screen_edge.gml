function bounce_off_screen_edge(){

//This gets the width of the current sprite
var _half_width = sprite_get_width(sprite_index) / 2;
var _half_height = sprite_get_height(sprite_index) / 2;

//This makes the bounce from the room corners softer
var _momentum_loss = 0.5;

//This prevents the player ship from 
if (x < _half_width or x > room_width - _half_width) {

	x = xprevious;
	hspeed = -hspeed * _momentum_loss;
	}

if (y < _half_height or y > room_height - _half_height) {

	y = yprevious;
	vspeed = -vspeed * _momentum_loss;

	}
}

