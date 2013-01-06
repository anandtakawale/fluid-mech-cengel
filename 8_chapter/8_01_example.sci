//Example 8-1 Flow Rates in Horizontal and Inclined Pipes
clc;
rho=1252 //density in [kg/m^3]
mu=0.3073 //dynamic viscosity in [kg/m.s]
g=9.81 //gravitational acceleration in [m/s^2]
D=0.04 //diameter of pipe in [m]
L=70 //length of pipe in [m]
u_max = 6 //centerline velocity [m/s]
z_2 = 0
z_1 = 0
//inclination of pipe in degrees
theta_up = 15
theta_down = 15