//Solution 3-11
pathname=get_absolute_file_path('3-11_solution.sce');
filename=pathname+filesep()+'3-11_example.sci';
clc;
exec(filename)
//(a)
F_Tair=rho_block*V*g;
printf("Tension of the rope of crane \n1.block suspended in air= %1.2f N",F_Tair/1000);
//(b)
F_B=rho_seawater*g*V; //bouyancy force
F_Twater=F_Tair-F_B; //net force in downward diretion
printf("\n2.block suspended in seawater= %1.2f kN",F_Twater/1000);
