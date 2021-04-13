// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bounce_off_object(){
	
	// The vars that are set to arguments need to be passed in when calling the function.
	
	
	// the /// with @arg lets you name the arguments for the function
	var _object = argument0; ///@arg object
	var _acceleration = argument1; ///@arg acceleration
	var _max_speed = argument2; ///@arg max_speed

	var _bounce_direction = point_direction(_object.x, _object.y, x, y);
	motion_add(_bounce_direction, _acceleration);
	
	if speed > _max_speed {
	
		speed = _max_speed;
	
	}

}