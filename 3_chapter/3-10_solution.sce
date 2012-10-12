//Solution 3-10
pathname=get_absolute_file_path('3-10_solution.sce');
filename=pathname+filesep()+'3-10_example.sci';
clc;
exec(filename)
R=D/2/100; //radius of cylinder [m]
h=h/100;
m=rho*(%pi*R^2*h);
printf("The mass of lead required for hydrostat to attain depth of 10cm is %1.5f kg",m);