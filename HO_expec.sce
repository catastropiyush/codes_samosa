clc;funcprot(0);h=6.626;
function f=wavefunc(x)
    f=((2/h)^(1/4))*exp(-%pi*(x^2)/h)
endfunction
x0=-10;x1=10;x=1;
N=integrate('wavefunc(x).*conj(wavefunc(x))','x',x0,x1)         //Normalisation Constant
disp("Normalisation Constant N=",sqrt(N))
R=integrate('wavefunc(x).*conj(wavefunc(x)).*x/N','x',x0,x1)        //Expectation Values of x
disp("<x>=",R)
R2=integrate('wavefunc(x).*conj(wavefunc(x)).*x.*x/N','x',x0,x1)    //Expectation Values of x2
disp("<x^2>=",R2)
dR=sqrt(R2-(R^2));                                              //Uncertainty in position
disp("Uncertainty in position is: ",dR);
function g=wavefunc(k)
    g=((2/%pi)^(1/4)).*exp(-%pi.*(x.^2)/h).*exp(-%i*k.*x)
endfunction
k0=-5;k1=5;
N=integrate('wavefunc(k).*conj(wavefunc(k))','k',k0,k1)         //Normalisation Constant
K=integrate('wavefunc(k).*conj(wavefunc(k)).*k/N','k',k0,k1)        //Expectation Values of k
disp("<k>=",K)
K2=integrate('wavefunc(k).*conj(wavefunc(k)).*k/N^2.*k','k',k0,k1)    //Expectation Values of k2
disp("<k^2>=",K2)
dK=sqrt(K2-(K^2));                                              //Uncertainty in momentum
disp("Uncertainty in momentum is: ",dK);
U=dR.*dK;                                                       //Heisenberg's Uncertainty relation
disp("Uncertainty relation is: ",U);

