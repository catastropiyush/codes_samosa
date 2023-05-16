clc;clear;
length= 1;       %pendulum length                              
g=9.8;           %surface acceleration                           
n = 250;               
dt = 0.04;   
%q=0.5                   
omega = zeros(n,1); 
theta = zeros(n,1);  
time = zeros(n,1);    
theta(1)=0.2; 
for step = 1:n-1 % loop over timesteps              
%omega(step+1) = omega(step) - (g/length)*theta(step)*dt;  %Euler
omega(step+1) = omega(step) - (g/length)*theta(step)*dt-q*omega(step)*dt; %Damped
theta(step+1) = theta(step)+omega(step+1)*dt                              %Euler Cromer
time(step+1) = time(step) + dt;        
end  
plot(time,theta,'r' ); 
xlabel('time (seconds) '); 
ylabel('theta (radians)');   
