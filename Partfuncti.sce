clc
clear
clf
k=8.617e-5
U=5.78e-5
B=1
E1=-U*B
E2=U*B 
t=linspace(1,10,1000) 
T=linspace(0.1,10,1000) 

for i=1:1000
    u(i)=k*t(i)
    b(i)=1/u(i) 
    z(i)=2*cosh((U*B)/u(i)) // partition function 
    x(i)=(1/z(i))*exp(-b(i)*E1) //x=N1/N // occupation number
    y(i)=(1/z(i))*exp(-b(i)*E2) //y=N1/N // occupation number
    m(i)=U*tanh((U*B)/k*t(i)) //magnetisation
    g(i)=-m(i) //internal energy
    cb=(((U*B/T(i))^2)/k)*(sech(U*B/(k*T(i))))^2 // specific heat
    s(i)=-B*U/T(i)*tanh(U*B)/(k*T(i))+k*log(2*cosh(U*B/(k*T(i)))) //Entropy 
end

scf(0) //partition function 
plot(t,z,'r')
xlabel('temp-->','fontsize',3) 
ylabel('z-->','fontsize',3)
title('partition function','fontsize',3) 
xgrid
scf(1) // occupation number
plot(t,x,'b')
plot(t,y,'b')
xlabel('temp-->','fontsize',3)
ylabel('occupation no.','fontsize',3) 
title('OCCUPATION NUMBER vs temp','fontsize',3) 
xgrid
disp(x(i)) 
disp(y(i))
scf(2) // magnetisation 
plot(t,m,'g') 
xlabel('temp-->','fontsize',3) 
ylabel('magnetisation','fontsize',3) 
title('magnetisation vs temp','fontsize',3) 
xgrid
scf(3) //internal energy 
plot(t,g,'k')
xlabel('temp-->','fontsize',3) 
ylabel('internal energy','fontsize',3) 
title('internal energy vs temp','fontsize',3) 
xgrid
scf(4) // specific Heat 
plot(T,cb,'r') 
xlabel('temp-->','fontsize',3) 
ylabel('specific heat','fontsize',3)
// Entropy              
title('specific Heat vs temp','fontsize',3) 
xgrid
scf(5) //Entropy 
plot(t,s,'r') 
xlabel('temp-->','fontsize',3) 
ylabel('Entropy','fontsize',3) 
title('Entropy vs temp','fontsize',3) 
xgrid
