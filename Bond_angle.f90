program Boondi
implicit none 
real :: x1,y1,x2,y2,x3,y3
real :: d1,d2 ! distance
real :: angle,var
print*,"Enter the value of x1,y1"
read*,x1,y1 
print*,'Enter the value of x2,y2'
read*,x2,y2 
print*,'Enter the value of x3,y3'
read*,x3,y3 
d1 = sqrt((x1-x2)**2+(y1-y2)**2)
d2 = sqrt((x1-x3)**2+(y1-y3)**2)
print*,"d1 =", d1,"1E-10 m"
print*,"d2 =", d2,"1E-10 m"
var=(((x2-x1)*(x3-x1))+((y2-y1)*(y3-y1)))/(d1*d2)
!var=(-(x2)**2+(y2)**2)/(d1*d2)
angle = ACOS(var)
write (*,*)"Bond angle=",angle*(180/3.14)
end program Boondi

program Boondi 
implicit none 
real,allocatable ::x(:),y(:),z(:),d(:),var(:)
character,allocatable:: a(:)
real::angle
integer::N,i
print *,'Enter the value of number of atoms'
read *,N
allocate (x(N), y(N), z(N), d(N), a(N), var(N))
open (unit = 1, file = 'FORTR.txt', status = 'old')
do i = 1,N 
     read (1,*) a(i),x(i),y(i),z(i) 
end do
close (2)
do i = 1,N
     print*,i
	 d(i)=sqrt((x(i)-x(i+1))**2+(y(i+1)-y(i))**2 +(z(i+1)-z(i))**2) 
end do
print*,"x4",x(4)
print*,"atom","d" 
do i = 1, N
print *,i, d(i), "1E-10 m"
end do
print*,((x(2)-x(1))*(x(3)-x(1)))**2
print*,((y(2)-y(1))*(y(3)-y(1)))**2
angle= ACOS((((x(2)-x(1))*(x(3)-x(1)))+((y(2)-y(1))*(y(3)-y(1))))/(d(1)*d(3)))
write (*,*)"Bond angle=",angle*(180/3.14)
end program Boondi



