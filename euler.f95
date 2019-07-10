! HOW TO COMPILE THROUGH COMMAND LINE (CMD OR TERMINAL)
! gfortran -c euler.f95
! gfortran -o euler euler.o
!
! The program is open source and can use to numeric study purpose.
! The program was build by Aulia Khalqillah,S.Si
!
! email: auliakhalqillah.mail@gmail.com
! ==============================================================================

program euler
implicit none

real :: x, y, h, f,fa
real :: i, n, xi, xf

 write(*,"(a)",advance='no') "INSERT INITIAL BOUNDARY:"
 read *, xi
 write(*,"(a)",advance='no') "INSERT FINAL BOUNDARY:"
 read *, xf
 write(*,"(a)",advance='no') "INSERT STEP DATA POINT (EX:0.1):"
 read*, h

n = abs(xf - xi)/h

x = xi
y = 0
i = 1
write(*,*) ""
write(*,*) "FIRST COLUMN: INDEX"
write(*,*) "SECOND COLUMN: ORIGINAL FUNCTION"
write(*,*) "THIRD COLUMN: ANALYTIC INTEGRATION OF FUNCTION"
write(*,*) "FOURTH COLUM: NUMERIC INTEGRATION (EULER) OF FUNCTION"
write(*,*) ""
open (1, file='euler.txt', status='replace')
do while (i <= n)
! original function
f = (25*(x**3))-(12*(x**2))+(16*x)-10
! analytic integral
fa = ((25/4)*(x**4))-(4*(x**3))+(8*(x**2))-(10*x)
! end of analytic integral
y = y + (f*h)
x = x + h
i = i + 1
write(1,*) x,f,fa,y
write(*,*) x,f,fa,y
end do
close(1)

end program
