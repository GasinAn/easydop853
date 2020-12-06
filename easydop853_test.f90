
    program easydop853_test

    use dop853_module
    use dop853_constants

    use easydop853_module

    procedure(deriv_func) :: fcn
    !! subroutine computing the value of \(dy/dx=f(x,y)\)
    real(wp)              :: x  = 0.0_wp
    !! `x` value (input is initial value and output is final value)
    real(wp)              :: xf = 225000.0_wp
    !! endpoint of integration (final value of `x`)
    real(wp),dimension(6) :: y  = [1.0_wp,0.0_wp,0.0_wp,0.0_wp,1.0_wp,0.0_wp]
    !! `y` value (input is initial value and output is final value)    
    
    call easydop853(fcn,x,xf,y)
    
    print *, x, y

    end program easydop853_test


