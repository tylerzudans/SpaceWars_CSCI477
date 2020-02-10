/// @description Insert description here
// You can write your code in this editor


output_text = "\nPlayer x: "+string(player.x)+"y: " +string(player.y)+" d: "+string(player.dir);
//output_text+= "\nx: "+string(player.sun.x)+"y: " +string(player.sun.y);
//output_text+= "\ndx: "+


draw_set_color(c_white);
draw_text(x, y, output_text);