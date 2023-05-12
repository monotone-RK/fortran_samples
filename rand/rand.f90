program genRandomNumber
   integer, allocatable :: cpuData(:)
   integer :: N = 10
   real :: x
!Allocate CPU and GPU arrays
   allocate(cpuData(N))
!Fill the host array with random data
   do i = 1, N
      call random_number(x)
      cpuData(i) = int(x * 100)
   end do
! Print unsorted data
   print *, cpuData
   deallocate(cpuData)
end program genRandomNumber
