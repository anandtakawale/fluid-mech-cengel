//Solution 6-4
WD=get_absolute_file_path('6_04_solution.sce');
datafile=WD+filesep()+'6_04_example.sci';
clc;
exec(datafile)
F_R = beta1 * mdot * V_1 //momentum equation in direction of jet
printf("The force needed to prevent the plate from moving horizontally due to water stream is %1.0f N", F_R)