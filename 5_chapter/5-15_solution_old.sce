//Solution 5-15
pathname=get_absolute_file_path('5-15_solution_old.sce');
filename=pathname+filesep()+'5-15_example_old.sci';
clc;
exec(filename)
Wdot_pump=Wdot_pump*1000; //conversion from [kW] to [W]
mdot=rho*Vdot; //mass flow rate of water
Edot_mechloss=Wdot_pump-mdot*g*z_2; //energy equation
h_L=Edot_mechloss/(mdot*g); //frictional head loss
Edot_mechloss=Edot_mechloss/1000; //conversion to [kW]
printf("Lost mechanical power due to frction is %1.4f kW",Edot_mechloss)
printf("\nThe irreversible head loss of the system %1.4f m",h_L);