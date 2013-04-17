//Solution 12-3
WD=get_absolute_file_path('12_03_solution.sce');
datafile=WD+filesep()+'12_03_example.sci';
clc;
exec(datafile)
T_critical = 2 / (k + 1) * T_0;
P_critical = (2 / (k + 1))**(k / (k - 1)) * P_0;
printf("Critical temperature for the flow is %1.0f K\n", T_critical);
printf("Critical pressure for the flow is %1.0f kPa\n", P_critical * 1000);