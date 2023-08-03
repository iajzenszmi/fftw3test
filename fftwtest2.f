        double precision in
        integer M /16/
        integer N /2/
        dimension in(16,2)
        double complex out
        dimension out(16/2 + 1, 16)
        integer*8 plan

        call dfftw_plan_dft_r2c_2d(plan,M,N,in,out,FFTW_ESTIMATE)
        call dfftw_execute_dft_r2c(plan, in, out)
        print *,in
        print *,out
        call dfftw_destroy_plan(plan)
        end program
