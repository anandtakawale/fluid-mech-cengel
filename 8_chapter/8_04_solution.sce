//Solution 8-04
WD=get_absolute_file_path('8_04_solution.sce');
datafile=WD+filesep()+'8_04_example.sci';
clc;
exec(datafile)
//simultaneous equations method
//raise notImplementedError

//Swamee-Jain method
epsilon = 0
D = 0.66* ( epsilon^1.25 * (L * Vdot**2 / g / h_L)**4.75 + nu * Vdot**9.4 * (L / g / h_L)**5.2)**0.04
printf("Diameter of the pipe should be %1.3f", D) 