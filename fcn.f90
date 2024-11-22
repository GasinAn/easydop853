subroutine fcn(me, x, y, f)
    !! subroutine computing the value of \(dy/dx=f(x,y)\)

    use iso_fortran_env, only: wp => real64

    use easydop853_module

    implicit none

    class(dop853_class), intent(inout) :: me
    !! dop853_class object
    real(wp), intent(in) :: x
    !! independent variable \(x\)
    real(wp), dimension(:), intent(in) :: y
    !! state vector \(y(x)\)
    real(wp), dimension(:), intent(out) :: f
    !! derivative vector \(f(x,y)=dy/dx\)

    f(1:3) = y(4:6)
    f(4:6) = -y(1:3) / sum(y(1:3)**2.0_wp)**(3.0_wp/2.0_wp)

end subroutine fcn
