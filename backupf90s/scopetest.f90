module m
implicit none
public :: s
integer, private :: a=1, b=2
contains
subroutine s()
real :: b=3.0
print *, a, b
end subroutine s
end module

program test
use m
implicit none
call s
end program test



