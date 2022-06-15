program q2

    use, intrinsic :: iso_Fortran_env, ONLY: rk => real64, ik => int64, stdout => OUTPUT_UNIT
    implicit none

    ! integer, parameter:: rk = selected_real_kind(15,307), ik = selected_int_kind(9)

    integer(ik) :: iter = 0_ik, indt, num = 1000_ik
    real(rk) :: z, a, b, t, N, w, G
    real(rk) :: Gtarget, tlow, thigh, flow, fhigh, fval
    real(rk) :: tol = 10.0_rk**(-9.0_rk), dist
    real(rk), allocatable :: tvec(:), Gvec(:)

    allocate(tvec(num), Gvec(num))

    a = 0.33
    b = 2.15
    z = 1

    t = 0.5
    N = labor(a, b, t)
    w = wage(a, z, N)
    G = gov(w, t, N)

    Gtarget = G

    print '(a, f9.6)', 'Gtarget = ', Gtarget

    tvec = linspace(0.0_rk, 1.0_rk, 1000_ik)


    do indt = 1, num, 1
        t = tvec(indt)
        N = labor(a, b, t)
        w = wage(a, z, N)
        G = gov(w, t, N)
        Gvec(indt) = G
        if (dabs(G - Gtarget) < 0.0001) then
            print '(2(a, f9.6))', 't = ', tvec(indt), ', Gval = ', G
        endif
    enddo

    print '(2(a, f9.5))', 'Gmax = ', maxval(Gvec), ', tmax = ', tvec(maxloc(Gvec))


    tlow = 0.55_rk; thigh = 0.9999_rk
    ! tlow = 0.0_rk; thigh = 0.9999_rk

    t = tlow
    N = labor(a, b, t)
    w = wage(a, z, N)
    G = gov(w, t, N)
    fval = Gtarget - G
    flow = fval
    print '(a, f9.6)', 'flow = ', fval


    t = thigh
    N = labor(a, b, t)
    w = wage(a, z, N)
    G = gov(w, t, N)
    fval = Gtarget - G
    fhigh = fval
    print '(a, f9.6)', 'fhigh = ', fval

    if (flow*fhigh .gt. 0.0_rk) then
        print *, 'cannot bisect on (', flow, fhigh, ')'
    else
        dist = 2.0_rk*tol
        do
            if (dist < tol) exit

            iter = iter + 1

            t = (tlow + thigh)/2.0_rk
            N = labor(a, b, t)
            w = wage(a, z, N)
            G = gov(w, t, N)
            fval = Gtarget - G

            if (fval*flow .gt. 0.0_rk) then
                tlow = t; flow = fval
            else
                thigh = t; fhigh = fval
            endif

            dist = thigh - tlow

            print '((a, I2), 4(a, f9.6))', &
                'bisection: iter = ', iter, &
                ', tlow = ', tlow, &
                ', thigh = ', thigh, &
                ', fval = ', fval, &
                ', dist = ', dist

        enddo

    endif

contains

    function labor(a, b, t) result(N)
        real(rk) :: a, b, t, N
        intent(in) :: a, b, t

        N = (a*(1-t)) / (b*(a*(1-t) + (1-a)))
    end function labor

    function wage(a, z, N) result(w)
        real(rk) :: a, z, N, w
        intent(in) :: a, z, N

        w = a*z*N**(a-z)
    end function wage

    function gov(w, t, N) result(G)
        real(rk) :: w, t, N, G
        intent(in) :: w, t, N

        G = w*t*N
    end function gov


    pure function linspace(lb, ub, gridnum)
        integer(ik) :: gridnum, j1
        real(rk), dimension(gridnum) :: linspace
        real(rk), dimension(gridnum-2_ik) :: y
        real(rk) :: lb, ub
        intent(in) :: lb, ub, gridnum
        do j1 = 1_ik, gridnum - 2_ik, 1_ik
            y(j1) = dble(j1)
        end do

        y = ((ub - lb) / (gridnum - 1_ik))*y + lb

        linspace(1_ik) = lb
        linspace(2_ik:gridnum-1_ik) = dble(y)
        linspace(gridnum) = ub
    end function linspace

end program q2
