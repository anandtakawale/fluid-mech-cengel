//Solution 12-2
WD=get_absolute_file_path('12_09_solution.sce');
datafile=WD+filesep()+'12_09_example.sci';
clc;
exec(datafile)
//unit conversions
mu = mu * %pi / 180; //from [degrees] to [rad]
Ma = 1 / sin(mu);
printf("Estimated Mach number is %1.2f", Ma);