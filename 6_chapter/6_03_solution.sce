//Solution 6-3
WD=get_absolute_file_path('6_03_solution.sce');
datafile=WD+filesep()+'6_02_example.sci';
clc;
exec(datafile)
datafile=WD+filesep()+'6_03_example.sci';
exec(datafile)
//unit conversions
theta = theta * %pi / 180 //from [degrees] to [radians]
z_1 = z_1 / 100 //from [cm] to [m]
z_2 = z_2 / 100 //from [cm] to [m]
A_1 = A_1 * 10**-4 //from [cm^2] to [m^2]
A_2 = A_2 * 10**-4 //from [cm^2] to [m^2]
//(a)
V_1 = mdot / (rho * A_1) //continuity equation at inlet
V_2 = mdot / (rho * A_2) //continuity equation at outlet
P_1_gauge = rho * g *((V_2**2 - V_1**2)/(2 * g) + z_2 - z_1) //from bernoulli equation
F_Rx = -beta1 * mdot * (V_2 + V_1) - P_1_gauge * A_1
printf("Force in positive X direction required to hold a reversing elbow is %1.0f", F_Rx)