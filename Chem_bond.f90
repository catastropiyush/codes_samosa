program chembond
implicit none 
!Piyush R.Maharana 21msphcp02
!Variables
real,allocatable ::x(:),y(:),z(:),d(:),var(:)
character,allocatable:: a(:)
real::angle
integer::N,i

print *,'Enter the value of number of atoms'
read *,N
allocate (x(N), y(N), z (N), d (N), a (N), var (N))
!Reading the Z matrix from the file
open (unit = 1, file ='FORTR.txt', status ='old')
do i = 1,N 
     read (1,*) a(i),x(i),y(i),z(i) 
end do
close (1)

do i = 1,N
     !calculating bond lengths
	 d(i)=sqrt((x(i)-x(i+1))**2+(y(i+1)-y(i))**2 +(z(i+1)-z(i))**2) 
end do

do i = 1, N
print *,i, d(i), "1E-10 m"
end do
!calculating bond angles
angle= ACOS((((x(2)-x(1))*(x(3)-x(1)))+((y(2)-y(1))*(y(3)-y(1))))/(d(1)*d(3)))
write (*,*)"Bond angle=",angle*(180/3.14)
end program chembond

!H20 matrix
  O  0.0000   0.0000  0.0000
  H  0.7907   0.6122  0.0000
  H  -0.7907  0.6122  0.0000
    
!CH4 matrix
C     0.000000     0.000000     0.000000
H     0.000000     0.000000     1.089000
H     1.026719     0.000000    -0.363000
H    -0.513360    -0.889165    -0.363000
H    -0.513360     0.889165    -0.363000
