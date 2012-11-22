//Solution 8-2
WD=get_absolute_file_path('8-2_solution.sce');
datafile=WD+filesep()+'8-2_example.sci';
exec(datafile);
//(a)Head loss
Re=rho*V_avg*D/mu; //Reynolds number
if(Re<2300)
    f=64/Re //friction factor
    printf("Frction factor is %1.4f",f);
    h_L=f*L/D*V_avg^2/(2*g); //head loss
    printf("\nHead loss is %1.2f",h_L);
end
//(b) Assuming pressure drop entirely due to frction
deltaP=rho*g*h_L;
printf("\nPressure drop is %1.3f lbf/ft^3",deltaP);
//(c) Volume flow rate and pumping power
Vdot=V_avg*%pi*D^2/4; //volume flow rate
printf("\nFlow rate of water is %f ft^3/s",Vdot);
Wdot_pump=Vdot*deltaP; //pumping power
printf("\nPumping power required to overcome frictional losses is %1.4f",Wdot_pump);
