/// @description Insert description here
// You can write your code in this editor


lifetime-=1;
if(lifetime<=0) instance_destroy();


//thrust
hspeed = hspeed-thrust*dsin(dir);	
vspeed = vspeed-thrust*dcos(dir);	

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

//draw_text(10,10,s_theta);
image_angle = darctan2(-vspeed,hspeed) - 90;
