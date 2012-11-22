//Solution 6-1
WD=get_absolute_file_path('6_01_solution.sce');
datafile=WD+filesep()+'6_01_example.sci';
clc;
exec(datafile)
beta1 = -4*integrate('y**2','y',1,0) //integrating to obtain beta
printf("Momentum-Flux Correction Factor for Laminar pipe flow is %1.2f",beta1)