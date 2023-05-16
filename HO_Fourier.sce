clc;clear;
function f=gauss(x)
    f=((2/h)^(1/4))*exp(-%pi*(x^2)/h)    
endfunction
h=6.62607015;
x=linspace(-10,10,100);
y=gauss(x);
plot(x,y,'b-')            //Position Space
xlabel('x',"fontsize",4);
ylabel('Wavefunction',"fontsize",4); xgrid;
function g=Integrand(x,b)
    c=1/sqrt(2*%pi)
    g=c.*gauss(x).*exp(%i*b.*x)
endfunction
y2=zeros(1,length(x))
// Calculating the Fourier Transform for the values of x defined above
for i=1:length(x)
    b=x(1,i)
    y2(1,i)=intg(-400,400,Integrand,1d-13)
end
function h=ft(x)
    h=(1/sqrt(2)).*(exp(-x**2/4))
endfunction
y3=ft(x)
plot(x,y3,'r-')
legend(['Position space','Momentum space'])
