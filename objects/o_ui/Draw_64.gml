
if (room == r_space) {

#region This grabs the player ships armor and drawrs then updates it on screen. 

var _player_ship = instance_find(object_player_ship, 0);
var _armor_amount = 0;

if (_player_ship != noone) {
	_armor_amount = _player_ship.armor;

}

var _armor_x = 8;
var _armor_y = 8;

draw_sprite(s_armor, _armor_amount, _armor_x, _armor_y)

#endregion

#region Draw the player score

// Setting font alignment but this is global
draw_set_halign(fa_right);

var _score_width = sprite_get_width(s_score);
var _score_x = room_width - 8 - _score_width;
var _score_y = 8;

draw_sprite(s_score, 0, _score_x, _score_y);
draw_text(_score_x + _score_width-4, _score_y+1, score)

// Setting font alignment back to normal
draw_set_halign(fa_left);

#endregion

} else {

#region

var _score_x = room_width - 8;
var _score_y = 8;

draw_set_halign(fa_right);
draw_text(_score_x, _score_y, "Highscore: " + string(global.highscore));
draw_set_halign(fa_left);

#endregion

}