!
!#include <math.h>
!#include <fftw3.h>
!#define N 16
!int main(void) {
      external fftw3,fftw_complex,fftw_plan,fftw_execute,fftw_destroy_plan
       integer N /16/, i
       real in(16,2)
       !printf("freq: %3d %+9.5f %+9.5f I\n", i, out[i][0], out[i][1]);
      print *,"freq: ",i, out(i)(0),out(i)(1)
      fftw_destroy_plan(p);

!  /* backward Fourier transform, save the result in 'in2' */
     print *," Inversetransform:",N,out,in2,FFTW_BACKWARD,FFTW_ESTIMATE;
     fftw_execute(q);
     !/* normalize */
        call fftw_complex( in(N,0), out(N,0), in2(N,0))
!       /* double [2] */
       call fftw_plan( p, q)
              
     ! prepare a cosine wave 
!     for (i = 0; i < N; i++) {
       do i =0, N, i
       in(i,0) = cos(3 * 2*M_PI*i/N)
       in(i)(1) = 0
       end do

!   forward Fourier transform, save the result in 'out' 
     p = fftw_plan_dft_1d(N, in, out, FFTW_FORWARD, FFTW_ESTIMATE)
     fftw_execute(p)
!  for (i = 0; i < N; i++)
       do i = 0, N, i
       
!     printf("freq: %3d %+9.5f %+9.5f I\n", i, out[i][0], out[i][1]);
      print *,"freq: ",i, out(i)(0),out(i)(1)
      fftw_destroy_plan(p)
      end do
!  /* backward Fourier transform, save the result in 'in2' */
     print *," Inversetransform:",N,out,in2,FFTW_BACKWARD,FFTW_ESTIMATE
     fftw_execute(q)
     ! normalize 
! for (i = 0; i < N; i++) {
      do i = 0, N, i  
      in2(i)(0) =in2(i)(0)* 1./N
      in2(i)(1) = in2(i)(1)*1./N
      end do
!for (i = 0; i < N; i++)
       do i = 1, N, i
!       print *,!"recover: %3d %+9.5f %+9.5f I vs. %+9.5f %+9.5f I\n",
       print *, i, in(i)(0), in(i)(1), in2(i)(0), in2(i)(1)
       end do
       fftw_destroy_plan(q)
        
       fftw_cleanup()
!       return(0)
         end program
