//Solution 8-10
WD=get_absolute_file_path('8_10_solution.sce');
datafile=WD+filesep()+'8_10_example.sci';
clc;
exec(datafile)
//unit conversions
D = D / 100; //from [cm] to [m]
d = d / 100; //from [cm] to [m]
h = h / 100; //from [cm] to [m]
beta1 = d / D; //diameter ratio
A_0 = %pi / 4 * d**2; //area of orifice
deltaP = (rho_Hg - rho_met) * g * h;
Vdot = A_0 * C_d * sqrt(2 * deltaP / rho_met / (1 - beta1**4));
V_avg = Vdot / (%pi / 4 * D**2);
Re = rho_met * V_avg * D / mu;
printf("Flow rate of methanol is %1.2f L/s", Vdot * 10**3);
printf("\nAverage velocity of methanol is %1.2f m/s", V_avg);
printf("\nReynolds number of flow is %1.5e", Re);