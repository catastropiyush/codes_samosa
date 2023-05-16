//Piyush Ranjan Maharana
//1807021
//Physics 2nd Year
clc;
clear;
funcprot(0);
function y1= eq(x,y)
       y1=x^2-y
endfunction

x(1)=0;
y(1)=1;
h=0.01;
a=0;
b=10;
n=((b-a)/h)
for i=1:n
    y(i+1)=y(i)+h*eq(x(i),y(i));
    x(i+1)=x(i)+h;
end

y(n)=y(i+1)
x(n)=x(i+1)
for i=1:n
    x(i+1)=x(i)+h;
    y(i+1)=y(1)+h*(eq(x(1),y(1))+eq(x(n),y(n)))/2;
    disp(y(i+1));
end
plot(x,eq(x,y),'r','LineWidth',3)
plot(x,y,'LineWidth','4')
title('Modified Euler Method')
xlabel('Input(x)')
ylabel('Output(y)')
set(gca(),"grid",[1 1])

