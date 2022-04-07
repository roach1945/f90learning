module b
implicit none
private
public::print_the_numbers
real::n1=1.0,n2=2.0
contains
    subroutine print_the_numbers()
    !n1=1.0
    !n2=2.0
    print *, "The numbers, in ascending order, are:"
    print *, n1, n2
return
    print *, n1, n2
    end subroutine print_the_numbers
end module b
program a
use b 
implicit none
real::n1=3.0
call print_the_numbers()
print*,n1

end program a