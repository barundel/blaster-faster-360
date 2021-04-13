// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_left_lazer(){
	
	var _distance = sprite_get_width(sprite_index) / 2;
	var _angle = 60;
	
	var _x = x + lengthdir_x(_distance, image_angle + _angle) + hspeed;
	var _y = y + lengthdir_y(_distance, image_angle + _angle) + vspeed;
	
	//Creating a layer and setting the layer ID as the var
	var _lazer = instance_create_layer(_x, _y, "Instances", o_lazer); //This returns an ID value which were storing in a var _lazer
	
	// image_angle references the image angle of the object that is calling this script 
	_lazer.direction = image_angle;
	_lazer.speed = 8;
	//Setting the image angle of the lazor object to the the same as the object calling this script 
	_lazer.image_angle = image_angle;
}