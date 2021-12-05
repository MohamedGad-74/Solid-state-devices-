%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% auteher : mohamed ibrahim gad sad %%%%
%%%% solid assignment 2                %%%%
%%%% date    :28/11/2020               %%%%
%%%% 2nd year communication  lab 3     %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h = 6.626 * 10^-34 ; % balnc const
hb_r = h / (2*pi);
m = 9.31*10^-31 ; % mass of electron
a = 5.51 *10^-10;
q = 1.6e-19; % charge of electron
p = 4;
alpha= linspace((-4*pi/a),(4*pi/a),400);
LHS = (p*sin(alpha*a))./(alpha*a) +cos(alpha*a);
E = ((alpha .^2)* (hb_r^2))/(2*m*q);
k = acos(LHS) / a ;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
plot(alpha,LHS)
title 'relation between left hand side of the equation vs. ?'
grid on 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
title 'relation between k and E '
plot(-k,E,'k',k,E,'k')
text(3*10^9,.5,'forbidden')
text(0,1.5,'allowed')
text(2,3,'forbidden')
text(-4*10^9,3,'first band allowed')
text(0,4.5,'allowed')
text(0,7,'forbidden')
text(-4*10^9,7,'first band gap')
text(0,11,'allowed')
text(0,14,'forbidden')
text(0,18,'allowed')
text(3*10^9,19.5,'forbidden')
grid on 

%%%%%%%%%%%%%%%%%%% Modelling the effective mass %%%%%%%%%%%%%%%%%%%%%%%%%%
der1 = diff(E) ./ diff(k);
der1 = [0,der1] ;
der2= diff(der1) ./ diff(k);
der2= [0,der2]

mass =hb_r^2 ./ der2

figure(3) 
plot(-k,mass,k,mass)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
