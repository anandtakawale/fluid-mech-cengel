//Solution 6-2
WD=get_absolute_file_path('6_02_solution.sce');
datafile=WD+filesep()+'6_02_example.sci';
clc;
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
printf("The guage pressure at the centre of inlet is %1.2f kPa", P_1_gauge / 1000)
//(b)
F_Rx = beta1 * mdot * (V_2 * cos(theta) - V_1) - P_1_gauge * A_1 //from momentum equation in X direction
F_Rz = beta1 * mdot * V_2 * sin(theta) //from momentum equation in Z direction
printf("\nThe anchoring force needed to hold the elbow is given by")
printf("\n1.In positive X direction = %1.0f N", F_Rx)
printf("\n2.In positive Z direction = %1.0f N", F_Rz)