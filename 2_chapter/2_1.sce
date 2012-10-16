pathname=get_absolute_file_path('2-1.sce')
filename=pathname+filesep()+'2-1_data.sci'
exec(filename)
rho=P/(R*(T+273)) //ideal gas relation
printf("Density of air is %1.2f kg/m^3",rho)
SG=rho/rho_water //definition specific gravity
printf("\nSpecific gravity of air is %f",SG)
V=l*b*w //Volume in m^3
printf("\nVolume of air is %1.2f m^3",V)
m=rho*V //Mass in kg
printf("\nMass of air is %1.2f kg",m)