WD=get_absolute_file_path('5-8_solution.sce');
datafile=WD+filesep()+'5-8_example.sci';
exec(datafile);
h_3=h_3/100; //conversion from [cm] to [m]
V_1=sqrt(2*g*h_3);
printf("Velocity of water in pipe is %1.2f m/s",V_1);