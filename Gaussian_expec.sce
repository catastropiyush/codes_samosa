//Piyush Ranjan Maharana 1807021
   function g=gaussian(x)                                       //Defining the Gaussian
     g=((2/h)^(1/4))*exp(-%pi*(x^2)/h)
   endfunction
   function f=fourier(k)                                       //Defining the Fourier
     f=sqrt(h).*exp((-h.*(k.^2))/(4*%pi))
   endfunction
   x1=integrate('gaussian(x)*gaussian(x)*x','x',-8,8)          //Expectation value of x
   x2=integrate('gaussian(x)*gaussian(x)*x*x','x',-8,8)       //Expectation value of x^2
   k =integrate('fourier(x)*fourier(x)*k','k',-8,8)           //Expectation value of k
   k2=integrate('fourier(x)*fourier(x)*k*k','k',-8,8)        //Expectation value of k^2
 
   delx=sqrt(x2-x1.^2)            //Delta x
   delk=sqrt(k2-k.^2)             //Delta k
 disp("<x>   ="+string(x1));             
 disp("<x^2> ="+string(x2));
 disp("<k>   ="+string(k));
 disp("<k^2> ="+string(k2));
 disp("Delta x="+string(delx));
 disp("Delta k="+string(delk)); 
 disp("(Delx)(Delk)"+string(delx*delk));//Heisenberg Uncertainty relation
 x=linspace(-10,10,100);
 plot(x,gaussian(x),'r-','LineWidth',2)   //Plotting the Gaussian Function
 plot(x,fourier(x),'b','LineWidth',2)    //Plotting the Fourier Transform
 l=legend(['Gaussian'],['Fourier transform'])
 
 
