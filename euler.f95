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

  real :: x, y, h, df,fa
  real :: i, n, xi, xf, error
  character(len=100) :: fmt

  write(*,*)""
  write(*,*)"---------------------------------"
  write(*,*)"EULER METHOD - INTEGRATION"
  write(*,*)"---------------------------------"
  write(*,*) ""
  write(*,"(a)",advance='no') "INSERT INITIAL BOUNDARY:"
  read *, xi
  write(*,"(a)",advance='no') "INSERT FINAL BOUNDARY:"
  read *, xf
  write(*,"(a)",advance='no') "INSERT STEP OF DATA (EX:0.1):"
  read*, h

  n = abs(xf - xi)/h

  x = xi
  y = 1
  i = 1
  fmt = "(a12,a13,a22,a19,a15)"
  write(*,*)""
  write(*,fmt)"X DATA","dF(X)","Analytic Int","Numeric Int","Error(%)"
  open (1, file='euler.txt', status='replace')
  do while (i <= n)
    ! first differential equation
    df = 2 - (exp(-4*x)) - (2*y)

    ! analytic integral (original function)
    fa = 1 + (0.5*exp(-4*x)) - (0.5*exp(-2*x))

    ! Error calculation
    error = (abs(fa-y)/fa)*100

    write(1,*) x,df,fa,y,error
    write(*,*) x,df,fa,y,error
    ! Euler calculation
    y = y + (df*h)

    x = x + h
    i = i + 1
  end do
  close(1)
end program
