module a
implicit none
private
public::print_lost_cards
contains

subroutine print_lost_cards(lost_card)
integer, dimension(:), intent(in) :: lost_card
integer :: i
do i = 1, 3
print *, lost_card(i)
end do
end subroutine print_lost_cards
end module a

program c
use a
implicit none
call print_lost_cards([1,1,1])
end program c