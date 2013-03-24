//Solution 6-8
WD=get_absolute_file_path('6_08_solution.sce');
datafile=WD+filesep()+'6_08_example.sci';
clc;
exec(datafile)
//unit conversions
D = D / 100; //from [cm] to [m]
//determination of bending moment
A_c = %pi / 4 * D**2;
mdot = rho * A_c * V //continuity equation
W = m * g
r_1 = l_h / 2; //moment arm for weight [m]
r_2 = l_v; //moment arm for horizontal force due to change in momentum [m]
//using angular momentum equation
M_A = r_1 * W - r_2 * mdot * V
//determination of horizontal length
L = sqrt(2* r_2 * mdot * V / (W / l_h));
printf("Bending moment acting at the base of the pipe is %1.1f N.m", M_A);
if(M_A > 0)
    printf("\nIts acting in counter clockwise direction.");
else
    printf("\nIts acting in clockwise direction as seen from negative sign");
printf("\nThe length of horizontal section of pipe to make bending moment at the bottom of pipe zero is %1.2f m", L);