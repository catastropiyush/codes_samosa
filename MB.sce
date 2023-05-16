clc
clf
Ta=500
Tb=300
mhe=6.6465*10^-27//Mass of helium
k=1.38e-23 //boltzmann constant
v=linspace(0,4500,1500)
w=1/2*mhe.*v.*v
fTa=2/sqrt(%pi)*(1/k*Ta)^(3/2).*w.*exp(-w/(k*Ta))
fTb=2/sqrt(%pi)*(1/k*Tb)^(3/2).*w.*exp(-w/(k*Tb))
plot(w,fTa,'b')
plot(w,fTb,'k')
title("Maxwell-Boltzmann Distribution")
xlabel("Kinetic Energy")
ylabel("Relative Frequency Density")
legend('At 500K','At 300K')
