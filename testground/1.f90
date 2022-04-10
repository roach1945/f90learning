program print_pack
implicit none
integer, dimension(6) :: x = [3, -7, 0, 7, -2, 4]
print *, pack(x, mask = (x > 0))
end program print_pack