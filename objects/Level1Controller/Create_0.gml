/// @description Insert description here
// You can write your code in this editor
offset = 140
p1 = instance_create_depth(x+offset,y,0,player_1);
p1.image_xscale=3;
p1.image_yscale=3;
p2 = instance_create_depth(x-offset,y,0,player_1);
p2.image_xscale=3;
p2.image_yscale=3;
p2.sp_idle = s2_idle;
p2.sp_thrust = s2_thrust;
p2.c_shoot=ord("W")
p2.c_left=ord("A")
p2.c_right=ord("D")
p2.c_thrust=ord("S")
p2.vspeed = p2.v0;
