!删除之前备份之后  app大小为7.94gb

module afunction
implicit none
private
public::f
contains
function f(a,b,c,d) result (k)
real,optional,intent(in)::a
real,intent(in)::b,c,d
real::k
if(present(a))then
k=a+b+c+d
else
k=b+c+d
end if

end function f
end module afunction


program a
use afunction
implicit none

print*,f(b=2.0,c=3.0,d=4.0)

end program a