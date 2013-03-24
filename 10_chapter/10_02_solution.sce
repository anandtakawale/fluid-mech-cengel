//Solution 10-2
WD=get_absolute_file_path('10_02_solution.sce');
datafile=WD+filesep()+'10_02_example.sci';
clc;
exec(datafile)
//unit conversions
P = P * 10^3; //from [kPa] to [Pa]
D = D * 10^-6; //from [micro m] to [m]
T = T + 273; //from [C] to [K]
rho_air = P / (R * T); //from ideal gas equation
F_down = %pi * D**3 / 6 * rho * g; //weight of particle
V = D**2 / (18 * mu) * (rho - rho_air) * g; //equating upward and downward force
Re = rho_air * V * D / mu;
printf("The terminal velocity of particle is %1.3f m/s", V);
printf("\nThe Reynolds number is %1.3                      f", Re);