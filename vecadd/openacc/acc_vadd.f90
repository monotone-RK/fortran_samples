subroutine vadd(n, c, a, b)
   implicit none
   integer :: n
   real, dimension(n) :: a, b, c
   integer :: i
!$acc data copyin(a, b) copyout(c)
!$acc kernels
!$acc loop independent
   do i = 1, n
      c(i) = a(i) + b(i)
   enddo
!$acc end kernels
!$acc end data
end subroutine vadd

program vecadd
   implicit none
   integer, parameter :: N = 16
   real, dimension(N) :: a, b, c
   integer :: i
   a = 1.0e0
   b = 2.0e0
   call vadd(N, c, a, b)
   do i = 1, N
      print *, 'i=', i, ',c(', i, ')=', c(i)
   enddo
end program vecadd
