program deriv
  implicit none
  ! declare variables
  integer            :: i
  integer, parameter :: N = 20
  real, dimension(N) :: x, y, dy 
  
  ! assign data
  x = (/ 0.10,0.20,0.30,0.40,0.50,0.60,0.70,0.80,0.90,1.00,1.10,1.20,1.30,1.40,1.50,1.60,1.70,1.80,1.90,2.00 /)    !Array constructor
  y = (/ 0.00,0.00,0.00,0.00,1.00,1.00,1.00,1.00,1.00,1.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00 /)

  ! compute derivation
  do i = 2, N-1
     dy(i) = (y(i+1) - y(i-1)) / (x(i+1) - x(i-1))  !derivative
  end do
  ! compute first and last derivation using linear extrapolation
  dy(1) = dy(2) + (dy(3)-dy(2))/(x(3)-x(2))*(x(1)-x(2))
  dy(N) = dy(N-1) + (dy(N-1)-dy(N-2))/(x(N-1)-x(N-2))*(x(N)-x(N-1))
  ! print the results 
  write (*,'(3a10)') 'x', 'y=f(x)', 'dy/dx'
  do i = 1, N
    write(*,'(3f10.2)') x(i), y(i), dy(i) 
  end do
end program deriv
