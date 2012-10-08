//Soultion 3-02
WD=get_absolute_file_path('3-02_solution.sce');
datafile=WD+filesep()+'3-02_example.sci';
clc;
exec(datafile)
h=h/1000; //converting height of Hg column from [mm] to [m]
P=rho*g*h; //Basic pressure eqaution [Pa]
P=P/1000;
printf("Atmospheric pressure is %1.2f kPa",P);