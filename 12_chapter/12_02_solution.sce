//Solution 12-2
WD=get_absolute_file_path('12_02_solution.sce');
datafile=WD+filesep()+'12_02_example.sci';
clc;
exec(datafile)
//unit conversions
P_1 = P_1 * 1000; //from [kPa] to [Pa]
P_2 = P_2 * 1000; //from [kPa] to [Pa]
R = R * 1000; //from [kJ/kg.k] to [J/kg.K]
c_p = c_p * 1000; //from [kJ/kg.K] to [J/kg/K]
T_1 = T_1 + 273; //from [C] to [K]
//As inlet velocity is low
T_0 = T_1;
P_0 = P_1;
for i = 1:1:1200
    P(i) = P_2 + i * 1000;
    T(i) = T_0 * (P(i)/P_0)**((k-1)/k);
    V(i) = sqrt(2 * c_p * (T_0 - T(i)));
    rho(i) = P(i) / (R * T(i));
    if V(i) ~= 0 then
        A(i) = mdot / (rho(i) * V(i));
    end
    c(i) = sqrt(k * R * T(i));
    Ma(i) = V(i) / c(i);
end
P = P / 1000; //from [Pa] to [kPa]
A = A * 10**4; //from [m^2] to [cm^2]
scf(0); //figure 0
plot(P,Ma);
a = gca()
a.axes_reverse=["on", "off"]; //reversing pressure axis
title("P vs Ma");
xlabel("Pressure [kPa]");
ylabel("Mach number");
scf(1); //figure 1
plot(P,V);
a = gca();
a.axes_reverse=["on", "off"];
title("P vs V");
xlabel("Pressure [kPa]");
ylabel("Velocity [m/s]");
scf(2); //figure 2
plot(P,T);
a = gca();
a.axes_reverse=["on", "off"];
title("P vs T");
xlabel("Pressure [kPa]");
ylabel("Temperature [K]");
scf(3); //figure 3
plot(P,rho);
a = gca();
a.axes_reverse=["on","off"];
title("P vs density");
xlabel("Pressure [kPa]");
ylabel("Density [kg/m^3]");
scf(4); //figure 4
plot(P(2:1200), A);
a = gca();
a.axes_reverse=["on", "off"];
title("P vs A");
xlabel("Pressure [kPa]");
ylabel("Area of nozzle [cm^2]");