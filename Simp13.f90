program simsons_rule
implicit none
real, external :: f
real :: a,b,h,integration,fodd,feven
integer :: i,n
print *,"Numeric Integration using Simpson's 1/3 rule"
print *,"Enter lower limit:"
read *,a
print *,"Enter Upper limit:"
read *,b
print *,"Enter the number of Sub-Intervals:"
read *,n
h = (b-a)/n
fodd = 0
do i=1,n-1,2
fodd = fodd+f(a+i*h)
enddo
feven=0
do i=2,n-2,2
feven = feven+f(a+i*h)
enddo
integration = (h/3.)*(f(a)+f(b)+ 4*fodd+2*feven)
print *,"The Value of Integration using Simson's 1/3 rule is:", integration
end
