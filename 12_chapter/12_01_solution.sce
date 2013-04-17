//Solution 12-1
WD=get_absolute_file_path('12_01_solution.sce');
datafile=WD+filesep()+'12_01_example.sci';
clc;
exec(datafile)
//unit conversions
c_p = c_p * 1000; //from [kJ/kg.K] to [J/kg.k]
//(a)
T_01 = T_1 + V_1**2 / (2 * c_p); //staganation temperature
P_01 = P_1 * (T_01 / T_1)**(k/(k - 1)); //staganation pressure
printf("The stagnation pressure at the compressor inlet is %1.2f kPa\n", P_01);
printf("Increase in temperature due to decelerating air from %1.2f m/s to 0 is %1.2f K while increase in temperature due to same is %1.2f kPa\n", V_1, T_01 - T_1, P_01 - P_1);
//(b)
//staganation temperation at the exit of compressor
T_02 = T_01 * (P_ratio)**((k-1) / k);
//using energy equation
w_in = c_p * (T_02 - T_01);
printf("The required compressor work is %1.1f kJ/kg.K\n", w_in / 1000);