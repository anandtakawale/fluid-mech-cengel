WD=get_absolute_file_path('5-2_solution.sce');
datafile=WD+filesep()+'5-2_example.sci';
exec(datafile);
D_jet=D_jet*10^(-3); //converting jet dia into m
t=(sqrt(h_0)-sqrt(h_2))/sqrt(g/2)*(D_tank/D_jet)^2;
t=t/60; //converitng time from [s] to [min]
printf("Time required for water level to drop from %1.4f m to %1.4f m is %1.4f min",h_0,h_2,t);