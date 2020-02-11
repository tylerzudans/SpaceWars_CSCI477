/// @description Insert description here
// You can write your code in this editor

//take angle input
if(keyboard_check(c_left)) dir+=turnspeed;
if(keyboard_check(c_right)) dir-=turnspeed;
dir%=360;

//reflect angle in image
image_angle = (dir)%360;//physics forward and sprite forward are off by 90

//check for thrust
if(keyboard_check(c_thrust))
{
	hspeed = hspeed-thrust*dsin(dir);	
	vspeed = vspeed-thrust*dcos(dir);	
	if(sprite_index!=sp_thrust) sprite_index=sp_thrust;
}
else sprite_index = sp_idle;

//apply gravity
delX= sun.x-x;
delY = sun.y-y;
r=power((power((sun.x-x),2)+power((sun.y-y),2)),0.5);//distance to sun sqrt of delx and dely squared
s_theta = darctan(delY/delX); //angle from sun to ship with x+ @0 
//correct angle
if(delY>=0)//Ship in top quadrants
{
	if(delX>=0)//left
	{
		s_theta = (90-s_theta)+90
	}
	else//right
	{
		s_theta*=-1.0;
	}
}
else// ship in bottom quadrant
{
	if(delX>=0)//left
	{
		s_theta = -(90+(90+s_theta))
	}
	else//right
	{
		s_theta*=-1.0;	
	}
}
s_theta%=360;
hspeed = hspeed - grv/power(r,2)*dcos(s_theta);
vspeed = vspeed + grv/power(r,2)*dsin(s_theta);

//shoot missiles
if(keyboard_check(c_shoot))
{
	muzz_x= x-dsin(dir)*muzz_distance //exit location x value
	muzz_y= y-dcos(dir)*muzz_distance //exit location y value
	muzz_hs = (muzz_x-x)*missile_speed;
	muzz_vs = (muzz_y-y)*missile_speed;
	miss1 = instance_create_depth(muzz_x,muzz_y,0,missile);
	miss1.hspeed = hspeed + muzz_hs;
	miss1.vspeed = vspeed + muzz_vs;
	miss1.image_angle = image_angle;
	
}

//wrap player around screen if out of bounds
if(x>camera_get_view_width(view_camera[0])) x = 0;
if(y>camera_get_view_height(view_camera[0])) y = 0;
if(x<0) x = camera_get_view_width(view_camera[0]);
if(y<0) y = camera_get_view_height(view_camera[0]);