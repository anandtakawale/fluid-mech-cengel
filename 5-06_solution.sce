//Solution 5-06
WD=get_absolute_file_path('5-06_solution.sce');
datafile=WD+filesep()+'5-06_example.sci';
clc;
exec(datafile)
V_2=sqrt(2*g*z_1); //Toricelli equation
printf("Water leaves the tank with initial velocity of %1.2f m/s",V_2);