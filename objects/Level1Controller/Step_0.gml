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
}