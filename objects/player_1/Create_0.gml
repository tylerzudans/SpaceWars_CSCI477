/// @description Insert description here
// You can write your code in this editor

//controls and constants
thrust = 0.05;
missile_speed = 0.125;
turnspeed = 2;
muzz_distance = 16;

//Sprites
sp_idle = s1_idle;
sp_thrust = s1_thrust;

//initial conditions
v0 = 1.3; //initial velocity
theta0 = 0; //initial angle pointing up is 0, left is +, right is -
dir = theta0; //current angle of ship

//set initial speed
hspeed = -v0*dsin(dir);
vspeed = -v0*dcos(dir);

//Gravity 
grv = 200; //F=Gmm/(r*r). We replace Gmm with grv our constant
sun = Sun; //our sun object where we calculate gravity from



