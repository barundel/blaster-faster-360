// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function hit_enemy(){
	
	///@arg score_amount
	var _score_amount = argument0;
	
	instance_destroy();
	other.armor -= 1;
	
	if (other.armor <= 0) {
		score += _score_amount;
	}
	
	audio_play_sound(a_hit, 8, false);

}