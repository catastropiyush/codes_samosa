program quadRAT
    implicit none
    real::a,b,c,root1,root2,
    print*,'enter the value of a,b,c'
    read*,a,b,c
    d=b**2-4.0*a*c    !discriminant
    if(d>0) then
        root1=(-b+sqrt(d))/(2.*a)
        root2=(-b-sqrt(d))/(2.*a)
        WRITE *,'root one is=',root1
        WRITE *,'root two is=',root2
    else (d<0) then
		real_part = (-b)/(2.*a)
        imag_part = sqrt (abs(d))/(2.*a)
        WRITE *, 'x1 = ', real_part, ' +i ', imag_part
        WRITE *, 'x2 = ', real_part, ' -i ', imag_part

    else if  (d==0)  then
	    root 1 = (-b)/(2.*a)
		WRITE *, 'x1 =',x1
	    WRITE *, 'x2 =',x1
	
end program quadRAT
