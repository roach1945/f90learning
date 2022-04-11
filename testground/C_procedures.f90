module type_def
use, intrinsic :: iso_c_binding
implicit none
private
type, public, bind(c) :: t_type
integer(kind=c_int) :: count
real(kind=c_float) :: data
end type t_type
end module type_def
program fortran_calls_c
use type_def
use, intrinsic :: iso_c_binding
implicit none
type(t_type) :: t
real(kind=c_float) :: x, y
integer(kind=c_int), dimension(0:1, 0:2) :: a
interface
subroutine c(tp, arr, a, b, m) bind(c)
import :: c_float, c_int, c_char, t_type
type(t_type) :: tp
integer(kind=c_int), dimension(0:1, 0:2) :: arr
real(kind=c_float) :: a, b
character(kind=c_char), dimension(*) :: m
end subroutine c
end interface
t = t_type(count=99, data=9.9)
x = 1.1
a = reshape([1, 2, 3, 4, 5, 6], shape(a))
call c(t, a, x, y, "doubling x" // c_null_char)
print *, x, y
print *, t
print *, a
end program fortran_calls_c