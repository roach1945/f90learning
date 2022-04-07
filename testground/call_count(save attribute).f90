


module m
implicit none
public :: s
integer, private :: a=1, b=2
contains

subroutine s()
integer, save :: call_count = 0
call_count = call_count + 1
print *, "This is execution #", call_count, &
"of subroutine s."
print *, a, b
end subroutine s
end module
program test
use m
implicit none
call s
call s
end program test



