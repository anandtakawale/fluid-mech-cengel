//Solution 6-5
WD=get_absolute_file_path('6_05_solution.sce');
datafile=WD+filesep()+'6_05_example.sci';
clc;
exec(datafile)
//unit conversion
V_1 = V_1 * 1000 / 3600 //from [km/hr] to [m/s]
Wdot_act = Wdot_act * 1000 //from [kW] to [W]
//(a)
A_1 = %pi / 4 * D**2 //cross-sectional area of turbine blade span
mdot = rho * V_1 * A_1
Wdot_max = mdot * V_1**2 / 2
eta_turbine = Wdot_act / Wdot_max
printf("The efficiency of wind turbine generator is %1.2f percent", eta_turbine * 100)
//(b)
V_2 = V_1 * sqrt(1 - eta_turbine)
F_R = mdot * (V_2 - V_1) //momentum equation in x direction
printf("The Horizontal force exerted by wind in positive x direction on the supporting mast of wind turbine is %1.0f N", F_R)
