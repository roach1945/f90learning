program aa
implicit none

print*,p(1.0,2.0,3.0)

contains
function p(a,b,c) result (t)
real,intent(in)::a,b,c
real::t
t=a+b+c
end function p


end program aa