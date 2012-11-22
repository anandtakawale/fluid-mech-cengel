//Example 8-1 Flow Rates in Horizontal and Inclined Pipes
clc;
//Properties of oil at 20 degree celcius
rho=888 //density in kg/m^3
mu=0.8 //dynamic viscosity in kg/m.s
g=9.81 //gravitational acceleration in m/s^2
D=0.05 //diameter of pipe in m
L=40 //length of pipe in m
P_1=745 //inlet pressure in kPa
P_2=97 //outlet pressure in kPa
//inclination of pipe in degrees
theta=[0 15 -15]