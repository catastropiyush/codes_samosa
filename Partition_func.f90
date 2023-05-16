//Piyush Ranjan Maharana
//1807021
//Maxwell Boltzmann Partition Function
clc
clear
//Energy Levels
k=1      //Kb*eV
E1=0     //Kb*eV
E2=20    //Kb*ev
T=[0.1:0.1:500]         //Temperature Range
T1=T; T1(length(T))=[]
T2=T1; T2(length(T1))=[]
dT=0.1
N=100                  
for i=1:length(T)
    z1(i)=exp(-E1/(k*T(i)))     
    z2(i)=exp(-E2/(k*T(i)))
    z(i)=z1(i)+z2(i)         //Partition Function
    Z(i)=z(i)^(N)
    p1(i)=z1(i)/z(i)
    p2(i)=z2(i)/z(i)
end
lnZ=log(Z)
U=k.*T1'.*T1'.*diff(lnZ,1)./dT   //Average Energy
Cv=diff(U,1)./dT                 //Heat Capacity
delE2=k.*T2'.*T2'.*Cv            //Energy Fluctuation
F=-k.*T'.*lnZ                    //Hemholtz Free Energy
S=-diff(F,1)/dT                  //Entropy
subplot(2,3,1)
plot(T,Z,'r','linewidth',3)
xlabel("$T$",'fontsize',3)
ylabel("$Z(T)$",'fontsize',3)
subplot(2,3,2)
plot(T1,U,'g','linewidth',3)
xlabel("$T$",'fontsize',3)
ylabel("$<E>$",'fontsize',3)
subplot(2,3,3)
plot(T2,Cv,'y','linewidth',3)
xlabel("$T$",'fontsize',3)
ylabel("$C_v$",'fontsize',3)
subplot(2,3,4)
plot(T2,delE2,'m','linewidth',3)
xlabel("$T$",'fontsize',3)
ylabel("$\Delta E $",'fontsize',3)
subplot(2,3,5)
plot(T1,S,'b','linewidth',3)
xlabel("$T$",'fontsize',3)
ylabel("$S$",'fontsize',3)
subplot(2,3,6)
plot(T,F,'c','linewidth',3)
xlabel("$T$",'fontsize',3)
ylabel("$F$",'fontsize',3)

