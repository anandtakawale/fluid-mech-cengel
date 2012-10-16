//Solution 8-1
WD=get_absolute_file_path('8-1_solution.sce');
datafile=WD+filesep()+'8-1_example.sci';
exec(datafile);
deltaP=P_1-P_2; //pressure drop in kPa
A_c=%pi*D^2/4; //cross sectional area of pipe in m^2
theta=theta*%pi/180; //converting theta into radians
for i = 1:1:3
    V = (deltaP * 1000 - rho * g * L * sin(theta(i))) * %pi * D^4 / (128 * mu * L); //flow rate for pipe inclined at an angle theta
    printf("\nFlow rate of oil for theta=%1.0f is %1.5f m^3/s", theta(i) * 180 / %pi, V);
end
V_avg = V / A_c; //Maximum average velocity(Downhill case)
Re = rho * V_avg * D / mu //Reynolds number
printf("\nReynolds number is %1.2f", Re);
if(Re < 2300) then
    printf("\nHence flow is laminar");
end
