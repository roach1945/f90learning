program naninf
implicit none
real, parameter :: NaN = 0.0/0.0, &
Inf = 1.1/0.0
print *, Inf + 4.4, Inf + Inf, Inf/5.5
print *, 0*Inf, Inf - Inf, NaN + 4.4   !ע�������������һ��nan�����ǳ��������0����!!
end program naninf