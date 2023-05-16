funcprot(0);
L=10;
function phi=f(x,n)
    phi=(0.44721).*sin((n*%pi/L)*x)               //Wavefunction for Particle in a box
endfunction
      
function g=Integrand(x,k)            
       g=(1/sqrt(2*%pi)).*f(x,1).*exp(-%i*k.*x)   //Defining the Fourier Transform
endfunction

function g=fourier(x,k)                           //Calculating the Fourier Transform
    a=fft(Integrand(x,k))   
    g=abs(a)
endfunction  

X=integrate('f(x,1).*conj(f(x,1)).*x','x',0,L);      //Expectation Value of X
disp("<x>="+string(X))
X_2=integrate('f(x,1).*conj(f(x,1)).*x.*x','x',0,L); //Expectation value of X^2
disp("<x^2>="+string(X_2))
K=integrate('fourier(k).*conj(fourier(k)).*k','k',-5,5);      
disp("The expectation value of k:  "+string(K))

K_2=integrate('fourier(k).*conj(fourier(k)).*k.*k','k',-5,5);
disp("The expectation value of k^2: "+string(K_2))

delK=sqrt(K_2-K^2)
disp("Delta(k): "+string(delK))
delX=sqrt(X_2-X^2)
disp("Delta(x): "+string(delX))
disp("Delta(x)Delta(k)="+string(delK*delX))
