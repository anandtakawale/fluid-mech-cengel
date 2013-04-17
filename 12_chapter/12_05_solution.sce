//Solution 12-5
WD=get_absolute_file_path('12_05_solution.sce');
datafile=WD+filesep()+'12_05_example.sci';
clc;
exec(datafile)
//unit conversions
R = R * 1000; //from [kJ/kg.k] to [J/kg.K]
P_gage = P_gage * 10**3; //from [kPa] to [Pa]
P_atm = P_atm * 10**3; // from [kPa] to [Pa]
d = d * 10**-3 // from [mm] to [m]
T = T + 273; //from [C] to [K]
P = P_gage + P_atm; //absolute pressure of air [Pa]
A = %pi / 4 * d**2;
P_crit = 0.5283 * P; //critical pressure using table 12-2
if P_atm >= P_crit then
    printf("Flow is not chocked\n");
    Ma_t = sqrt(((1 / P_back)**((k -1) / k) - 1) * 2 / ( k - 1)); //Mach number
    T_t = (1 + (k - 1) / 2 * Ma**2)**-1 * T_0; //Temperature at throat of nozzle
    rho_t = P_t / (R * T_t);    //from ideal gas equation
    V_t = Ma_t * sqrt(k * R  * T_t); //air velocity
    mdot = rho_t * A * V_t;
else
    printf("Flow is chocked\n");
    mdot = A * P * sqrt(k / (R * T)) * (2 / (k + 1))**((k+1) / (2*(k - 1)));
    mdot = mdot * 60; //from [kg/s] to [kg/min]
end
printf("Mass flow rate of air through the tire is %1.3f kg/min\n", mdot);