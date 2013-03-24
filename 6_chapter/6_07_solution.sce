//Solution 6-7
WD=get_absolute_file_path('6_07_solution.sce');
datafile=WD+filesep()+'6_07_example.sci';
clc;
exec(datafile)
//conversions
D = D / 100; //from [cm] to [m]
Vdot = Vdot / 1000 / 60; //from [L/s] to [m^3/s]
P_1gauge = P_1gauge * 1000; //from [kPa] to [Pa]
A_c = %pi / 4 * D**2; //cross-sectional area
V_1 = Vdot / A_c; //as water is incompressible
V_2 = V_1; //area at inlet = area at outlet
mdot = rho_water * Vdot;
//From momentum equation for steady flow
F_Rx = -mdot * V_1 - P_1gauge * A_c; //force on flage in positive x direction
F_Rz = -mdot * V_2 + W_faucetwater;
printf("Force of flage on control volume is %1.1f i + %1.1f k", F_Rx, F_Rz);
printf("\nHence Net force acting on flange is %1.1f i  %1.1f k", -F_Rx, -F_Rz);