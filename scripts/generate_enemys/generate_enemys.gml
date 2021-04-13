// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_enemys(){
	
///@arg number
///@arg enemy
	
var _number = argument0
var _enemy = argument1
	

show_debug_message("Start:GenerateEnemy");
var _center_x = room_width/2;
var _center_y = room_height/2;

repeat(_number) {
		
	var _direction = random(360);
	var _distance = random_range(room_width * 0.4, room_width * 1.05);

		
	var _x = _center_x + lengthdir_x(_distance, _direction);
	var _y = _center_y + lengthdir_y(_distance, _direction);
		
	instance_create_layer(_x, _y, "Instances", _enemy);
		
	}

}