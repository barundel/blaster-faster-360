display_set_gui_size(640, 360);
draw_set_font(f_1);


//Setting the score vars. 
score = 0;
global.highscore = 0;


//Bigger number have priority
//music object, priority, and iff to loop
if (not audio_is_playing(a_music)) {
	audio_play_sound(a_music, 1, true);
}