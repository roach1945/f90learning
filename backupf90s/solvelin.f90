!MKL库函数求解线性方程组
!依赖mk11 apack95.1ib
program test
use lapack95
integer,parameter::n=3
integer i
real::a(n,n),b(n)
integer ipiv(n)
a=reshape([1,0,1,2,1,0,3,3,0],[n,n])
b(:)=[14,11,1]
call getrf(a,ipiv,i)!LU分解
call getrs(a,ipiv,b)!a,b均被覆盖
print*,b !1,2,3
pause
end program
