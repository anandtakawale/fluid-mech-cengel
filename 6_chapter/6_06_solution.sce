//Solution 6-6
WD=get_absolute_file_path('6_06_solution.sce');
datafile=WD+filesep()+'6_06_example.sci';
clc;
exec(datafile)
//(a)
a_spacecraft = - m_gas / m_spacecraft * V_gas; //conservation of momentum
//(b)
dV_spacecraft = a_spacecraft * deltat; //
//(c)
F_thrust = 0 - m_gas * V_gas //force = change in momentum
printf("The deceleration of spacecraft is %1.f m/s^2", -a_spacecraft);
printf("\nChange in the velocity of the spcaecraft is %1.2f m/s", dV_spacecraft);
printf("\nThe thrust exerted on spacecraft is %1.2f kN", F_thrust / 1000);