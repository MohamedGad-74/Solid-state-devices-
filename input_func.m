syms k ;
prompt ='enter function in k '
E= input(prompt)
denomirator = diff(diff(E)) 
hpar =1.05*10^(-34);
m=(hpar^2)/denomirator
figure(4)
fplot (k,m)