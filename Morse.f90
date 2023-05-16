c MORSE POTENTIAL vibrational energy levels for the hydrogen molecule
c http://community.middlebury.edu/~chem/chemistry/class/physical
c /quantum/help/morse/morse.html
c http://www.ch.ic.ac.uk/harrison/Teaching/L3_Series_Expansions.pdf
c mu is reduced mass of H2 molecule mp/(2me) = 917.
real mu
dimension psi(0:10000) ,psinf(300),energy(300)
data niter,nstep/70,4000/
data mu , D, alfa ,a/917.0,0.176,1.02,1.40 /
V(x) = D*(1.-exp(-alfa*(x-a)) )**2
c ei=.001
ei=1.E-3
c ef= 55.*ei
ef=.06
de=(ef-ei)/float(niter)
e=ei
do 20 it=1,niter
energy(it)=e
xi=0.08
xf=2.5
dx=(xf-xi)/float(nstep)
psi(0) =0.
psi(1)=psi(0)+dx
do 10 i=2,nstep
x=xi + dx*float(i)
psi(i)=2.*psi(i-1)-psi(i-2)+dx**2*(-2.*mu*(E- v(x-dx))*psi(i-1) )
c print*,'x,g,psi=',x , g(x-dx,i-1) , psi(i)
10 continue
psinf(it)=psi(nstep)
e=e+de
20 continue
do 100 i=1,niter
print 120,energy(i),psinf(i)
100 continue
120 format(3x,'e(au),psinf=',2(3x,e11.4))
if(niter.eq.1)call plotwave(psi,xi,xf,dx,nstep,60)
stop
end


subroutine plotwave(psi,x1,x2,dx,nstep,ns)
dimension psi(0:10000)
print*,'x1,x2=',x1 , x2
print*,' '
do 10 i=0,nstep,int(float(nstep)/float(ns))
x=x1+dx*float(i)
if(i.gt.1)deriv=(psi(i)-psi(i-1))/dx
print 100, x , psi(i) ,deriv
10 continue
100 format(2x,'x,psi,deriv=',3(3x,e11.4))
return
end

 
