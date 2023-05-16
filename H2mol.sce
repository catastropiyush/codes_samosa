clc
m=940*10^6   //mass
hbar=197.3;          //reduced planck constant
e=3.795;           //electron charge
rmin=1e-5;   //Making a grid of point
rmax=20;
points=100;
D=0.755501;
w=1.44		
r=linspace(rmin,rmax,points);
step=r(2)-r(1);
kinetic=zeros(points,points);
potential=zeros(points,points);

for i=1:points
     kinetic(i,i)=2;                //building the kinetic matrix 
    if i>1
	kinetic(i,i-1)=-1;
    kinetic(i-1,i)=-1;
	end
end

    for i = 1:points                         //building the potential matrix
    ro(i)=(r(i)-0.131349)/r(i)                     
    potential(i,i)=D*(exp(-2*w*(1-((0.131349)/r(i)))-exp(-w*(1-(0.131349/r(i))))))
    end
   
kinetic=kinetic*(hbar^2/(2*m*step^2));  //complete kinetic matrix
hamiltonian=kinetic+potential;      //Hamiltonian matrix

[a,b]=spec(hamiltonian);
disp(spec(hamiltonian),"The Eigen-values of Hamiltonian are:");        //Energies
disp("The corresponding Eigen-vectors of Hamiltonian is:"+string(a));  //Wavefunction
E=diag(b);
wavefunction =a(:,2);
wavefunction1=a(:,3);                //Wavefunction is an Eigenvector 
                           
disp("E1="+string(b(1,1)));   //Energy of E1 
disp("E2="+string(b(2,2)));   //Energy of E2 
disp("E3="+string(b(3,3)));   //Energy of E3
disp("E1="+string(E(1)));
xlabel('x')
ylabel('$\Psi(x))$')

plot(r,wavefunction,'r-','LineWidth',2)
plot(r,wavefunction1,'b-','LineWidth',2)
legend(['$\Psi_{2}$','$\Psi_{1}$']);
 
 
 
 

 
 

