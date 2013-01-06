//Solution 8-1
WD=get_absolute_file_path('8_01_solution.sce');
datafile=WD+filesep()+'8_01_example.sci';
exec(datafile);
R = D/2;
r = -R:R/100:R;
u = u_max * (1 - r**2 / R**2);
plot(u,r);
title("Velocity disribution", 'fontsize', 4, 'color', 'red');
xlabel("Velocity");
ylabel("Radial distance");
V = u_max / 2; //average velocity
Vdot = V * %pi * D**2 / 4;
Re = rho * V * D / mu; //Reynolds number
if Re < 2300 then
    f = 64 / Re;
end
h_L = f * L * V**2 / (2 * g * D);
deltaP = rho * g * (z_2 - z_1 + h_L); //from energy equation
printf("Pressure difference across pipe is %1.0f kPa", deltaP / 1000);
Wdot_pump = Vdot * deltaP;
printf("\nPumping power required is %1.2f kW", Wdot_pump / 1000);
//upward inclined pipe
deltaz = L * sin(%pi * theta_up / 180);
deltaP_up = rho * g * (deltaz + h_L);
Vdot_up = Wdot_pump / deltaP_up;
red = (Vdot - Vdot_up) / Vdot * 100;
printf("\nReduction in flow rate due to upward inclination of pipe is %1.2f percent", red);
//downward inclined pipe
deltaz = -L * sin(%pi * theta_down / 180);
deltaP_down = rho * g * (deltaz + h_L);
Vdot_down = Wdot_pump / deltaP_down;
inc = (Vdot_down - Vdot) / Vdot * 100;
printf("\nIncrement in flow rate due to downward inclination of pipe is %1.2f precent", inc);
