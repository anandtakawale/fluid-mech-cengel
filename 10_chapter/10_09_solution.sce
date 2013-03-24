//Solution 10-9
WD=get_absolute_file_path('10_09_solution.sce');
datafile=WD+filesep()+'10_09_example.sci';
clc;
exec(datafile)
//unit conversions
V = V * 1000 / 3600; //from [km/hr] to [m/s]
nu = mu / rho_water;
Re = V * c / nu;
printf("Reynolds number is %1.2e", Re);
if Re < Re_cr then
    printf("\nHence the flow is laminar");
elseif Re >= Re_cr & Re < Re_tran
    printf("\nHence the flow is transitional");
else
    printf("\nHence the flow is turbulent");
end
