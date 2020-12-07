
    module easydop853_module

    use dop853_module
    use dop853_constants

    implicit none

    contains
    
    subroutine easydop853(fcn,x,xf,y)

    implicit none

    procedure(deriv_func)               :: fcn
    !! subroutine computing the value of \(dy/dx=f(x,y)\)
    real(wp),intent(inout)              :: x
    !! `x` value (input is initial value and output is final value)
    real(wp),intent(in)                 :: xf
    !! endpoint of integration (final value of `x`)
    real(wp),dimension(:),intent(inout) :: y
    !! `y` value (input is initial value and output is final value)

    integer               :: nstiff = 1
    !! nstiff parameter for stiffness detection,
    !! which will occur at step 1*nstiff, 2*nstiff, 3*nstiff ... if nstiff>0
    !! and will not occur if nstiff<=0
    integer               :: nmax   = 2250000
    !! maximal number of allowed steps
    real(wp),dimension(1) :: rtol   = 1.0e-12_wp
    !! relative tolerance
    real(wp),dimension(1) :: atol   = 1.0e-24_wp
    !! absolute tolerance

    type(dop853_class) :: prop
    logical :: status_ok
    integer :: idid

    call prop%initialize(n=size(y),fcn=fcn,nstiff=nstiff,nmax=nmax,&
                         status_ok=status_ok)
    if (.not.status_ok) error stop 'initialization error'

    call prop%integrate(x,y,xf,rtol,atol,iout=0,idid=idid)
    if (idid<0) error stop 'integration failure'

    end subroutine easydop853

    end module easydop853_module


