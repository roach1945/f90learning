module a
implicit none
private
integer::n1,n2

public::subr,for1

contains


subroutine subr(timesused)
integer,save::timesused
timesused=timesused+1
end subroutine subr

subroutine for1()
n1=subr(n1)

end subroutine for1


end module a


program test
use a
implicit none

!call subr()
!print*,timesused
end program test