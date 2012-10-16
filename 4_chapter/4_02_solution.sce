//Soultion 4-02
WD=get_absolute_file_path('4_02_solution.sce');
datafile=WD+filesep()+'4_02_example.sci';
clc;
exec(datafile)
//unit conversion
Vdot = Vdot / 10**3; //[L/s] to [m^3/s]
D_inlet = D_inlet / 100; //[cm] to [m]
D_outlet = D_outlet / 100; //[cm] to [m]
deltax = deltax / 100; //[cm] to [m]
//solution
u_inlet = 4 * Vdot / (%pi * D_inlet**2); //average inlet velocity
u_outlet = 4 * Vdot / (%pi * D_outlet**2); //average outlet velocity
a_x = (u_outlet**2 - u_inlet**2) / (2 * deltax);
//results
printf("\nInlet velocity at the nozzle is %1.3f m/s", u_inlet);
printf("\nOutlet velocity at the nozzle is %1.2f m/s", u_outlet)
printf("\nThe acceleration of a fluid particle moving down the centerline of nozzle is %1.1f m/s^2",a_x);