module factorial_module
implicit none
public :: factorial
contains
recursive function factorial(n) result(factorial_result)
integer, intent(in) :: n
integer :: factorial_result
if (n <= 0) then
factorial_result = 1
else
factorial_result = n * factorial(n - 1)
end if
end function factorial
end module factorial_module

program t
use factorial_module
implicit none
integer::a
read*,a
print*,factorial(a)
end program t
