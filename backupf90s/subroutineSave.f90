module a
implicit none
private

public::subr

contains
subroutine subr()
integer,save::timesused=0
timesused=timesused+1
print*,timesused
end subroutine subr


end module a


program test
use a
implicit none

call subr
call subr

end program test