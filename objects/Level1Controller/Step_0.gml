/// @description check for winner
// You can write your code in this editor

if(!done){
	if(!instance_exists(p1)){
		DebugController.win_text = "Player 2 Wins";
		done = true;
		//instance_destroy()
	}
	if(!instance_exists(p2)){
		DebugController.win_text = "Player 1 Wins";
		done = true;
		//instance_destroy()
	}
	if(done)//when 1 player dies for the first time
	{
		rp =instance_create_depth(camera_get_view_width(view_camera[0])/2,camera_get_view_height(view_camera[0])/2,-1,replayButton);
		rp.image_xscale = 2.0;
		rp.image_yscale = 2.0;
		w_instance = instance_create_depth(camera_get_view_width(view_camera[0])/2,150,-1,FloatingText)
		if(DebugController.win_text == "Player 1 Wins")
		{
			w_instance.sprite_index = p1wins;
		}
		else
		{
			w_instance.sprite_index = p2wins;	
		}
		w_instance.image_xscale = 2.0;
		w_instance.image_yscale = 2.0;
	}
}
