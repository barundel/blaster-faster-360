// Creates the image slightly different every time.
image_angle = random(360);
image_xscale = scale;
image_yscale = scale;


// Repeat basicaly repeats the code X times 
repeat (24) {
instance_create_layer(x+random_range(-8, 8), y+random_range(-8, 8), "Effects", o_explosion_chunk)
}

audio_play_sound(a_explode, 10, false);