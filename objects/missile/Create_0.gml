/// @description Insert description here
// You can write your code in this editor

//controls and constants
thrust = 0.0;
turnspeed = 2;
lifetime = 600;


//initial conditions
v0 = 0; //initial velocity
theta0 = 0; //initial angle pointing up is 0, left is +, right is -
dir = theta0; //current angle of ship

//set initial speed
hspeed += -v0*dsin(dir);
vspeed += -v0*dcos(dir);

//Gravity 
grv = 300; //F=Gmm/(r*r). We replace Gmm with grv our constant
sun = Sun; //our sun object where we calculate gravity from



