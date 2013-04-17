//Solution 12-4
WD=get_absolute_file_path('12_04_solution.sce');
datafile=WD+filesep()+'12_04_example.sci';
clc;
exec(datafile)
//unit conversions
P_i = P_i * 10**6; //from [MPa] to [Pa]
c_p = c_p * 10**3; //from [kJ/kg.K] to [J/kg.K]
T_i = T_i + 273; //from [C] to [K]
A = A * 10**-4; //from [cm^2] to [m^2]
R = R * 10**3; //from [kJ/kg.K] to [J/kg.K]
P_b = P_b * 10**6 //from [MPa] to [Pa]
T_0i = T_i + V_i**2 / (2 * c_p); //stagnation temperature
P_0i = P_i * (T_0i / T_i)**(k / (k-1)); //stagnation pressure
//As flow is assumed isentropic
T_0 = T_0i;
P_0 = P_0i;
P_crit = 0.5283; //critical pressure ratio for air from table 12-2
//(a)
for i=1:1:2
    P_back = P_b(i) / P_0; //back pressure ratio
    printf("\nFor back pressure of %1.2f Pa\n", P_b(i));
    if P_back >= P_crit then
        P_t = P_b(i); //exit pressure equals back pressure
        printf("The flow is not chocked\n");
        Ma_t = sqrt(((1 / P_back)**((k -1) / k) - 1) * 2 / ( k - 1)); //Mach number
        T_t = (1 + (k - 1) / 2 * Ma**2)**-1 * T_0; //Temperature at throat of nozzle
        rho_t = P_t / (R * T_t);    //from ideal gas equation
        V_t = Ma_t * sqrt(k * R  * T_t); //air velocity
        mdot = rho_t * A * V_t;
    else
        printf("The flow is chocked\n");
        Ma = 1;
        mdot = A * P_0 * sqrt(k / (R * T_0)) * (2 / (k + 1))**((k+1) / (2*(k - 1)));
    end
    printf("The mass flow rate of air through the nozzle is %1.2f kg/s", mdot);
end