module fe
implicit none
private
public::f

contains
function f(x) result(a)
integer,intent(in)::x
integer::i
integer::a
a=1
do i=1,x
a=i*a
print*,a
end do



end function f
end module fe


program t
use fe
implicit none
integer::a
print*,'input integer a:'
read*,a

print*,f(a)
pause
end program t