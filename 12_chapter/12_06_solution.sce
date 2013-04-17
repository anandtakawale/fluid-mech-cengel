//Solution 12-5
WD=get_absolute_file_path('12_06_solution.sce');
datafile=WD+filesep()+'12_06_example.sci';
clc;
exec(datafile)
rho_0 = P_0 * 10**6 / (R * T_0); //stagnation density using ideal gas relation
//(a) & (b)
for i = 1:1:2
    Ma_t = Ma(i) * sqrt((k + 1) / (2 + (k - 1) * Ma(i)**2))
    A = 1 / Ma(i) * (2 / (k + 1) * (1 + (k - 1)/ 2 * Ma(i)**2))**(0.5 * (k + 1) / (k - 1)) * A_t;
    P_t = (1 + (k - 1) / 2 * Ma(i)**2)**(-k / (k - 1)) * P_0; //presure
    rho_t = (1 + (k - 1) / 2 * Ma(i)**2)**(-1 / (k - 1)) * rho_0; //density
    T_t = (1 + (k - 1) / 2 * Ma(i)**2)**-1 * T_0; //temperature
    V = Ma(i) * sqrt(k * R * T_t); //velocity
    printf("\nThe flow conditions for problem %d are\n", i);
    printf("Mach number = %1.2f\n", Ma_t);
    printf("Area = %1.4f cm^2 \n", A);
    printf("Pressure = %1.4f Ma\n", P_t);
    printf("Temperature = %1.2f K\n", T_t);
    printf("Density = %1.3f kg/m^3\n", rho_t);
    printf("Velocity = %1.2f m/s\n", V);
end
//(c)
mdot = rho_t * A * V * 10**-4; //mass flow rate
printf("\nMass flow rate of air through the nozzle is %1.2f kg/s", mdot);