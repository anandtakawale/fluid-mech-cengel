WD=get_absolute_file_path('5-1_solution.sce');
datafile=WD+filesep()+'5-1_example.sci';
exec(datafile);
//(a)
Vdot=V/dt*3.7854; //volume flow rate in L/s
printf("\nVolume flow rate is %1.4f L/s",Vdot);
mdot=rho*Vdot;
printf("\nMass flow rate is %1.4f kg/s",mdot);
//(b)
A_e=%pi*(d_e*10^-2/2)^2; //cross-sectional area of nozzle at exit
V_e=Vdot/A_e/1000; //from continuity equation
printf("\nAverage velocity of nozzle is %1.2f m/s",V_e);