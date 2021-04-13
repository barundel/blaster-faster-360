gpu_set_blendmode(bm_add);
draw_self();
//Needs to set it back to normal as this is a global function
gpu_set_blendmode(bm_normal);