//Solution 6-9
WD=get_absolute_file_path('6_09_solution.sce');
datafile=WD+filesep()+'6_09_example.sci';
clc;
exec(datafile)
//unit conversions
Vdot = Vdot / 1000; //from [L/s] to [m^3/s]
D = D / 100; //from [cm] to [m]
A_jet = %pi / 4 * D**2;
V_jetr = Vdot / 4 / A_jet; //jet velocity relative to rotating nozzle
omega = 2 * %pi * N / 60; //angular velocity of nozzle [rad/s]
V_nozzle = l * omega; //tangential velocity of nozzle
V_jet = V_jetr - V_nozzle; //absolute velocity of jet
mdot = rho * Vdot; //mass flow rate of water
//using angular momentum equation about axis of rotation
T_shaft = l * mdot * V_jet;
Wdot = omega * T_shaft;
printf("The sprinkler has a potential to produce %1.1f kW of power", Wdot / 1000);