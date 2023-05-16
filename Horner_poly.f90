program hornerpoly
implicit none 
real,allocatable ::coeff(:),y(:)
integer::N,i,num
real :: x=7
!counter gin bhai
N = 0
OPEN (1, file = 'data.txt')
DO
    READ (1,*, END=10)
    N = N + 1
END DO
10 CLOSE (1)
print*,N
allocate (coeff(N),y(N))
!Reading the coefficients from the file
open (unit = 1, file ='data.txt', status ='old')
do i = 1,N 
     read (1,*) coeff(i)
end do
close (1)

num = SIZE(coeff) 
y(1)=coeff(n)
do i = 2,num
    y(i)=coeff(num-i+1)+x*y(i-1)
end do
print*,y(num)
end program hornerpoly
