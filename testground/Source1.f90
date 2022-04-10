module ca
implicit none
private

type,public :: line
integer :: line_number
character(len=line_length) :: text
end type line

end module ca


program test
use ca 
implicit none

end program test