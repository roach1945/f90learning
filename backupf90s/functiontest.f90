module f_function
implicit none
private
public::f
contains
function f(a) result (b)
real,intent(in)::a
real::b
b=a**2
end function f

end module f_function


program aa
use f_function 
implicit none
real::x=2.0

print*,f(x)
end program aa