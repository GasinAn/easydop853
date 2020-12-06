# easydop853
Simplified Modern Fortran Edition of the DOP853 ODE Solver



This is a modern Fortran (2003/2008) implementation of Hairer's DOP853 ODE solver.

This implementation is a simplification of the implementation made by [Jacob Williams (jacobwilliams)](https://github.com/jacobwilliams)

A much-easier-to-use subroutine interface has been created by the original easy-to-use class interface.

DOP853 is an explicit Runge-Kutta method of order 8(5,3) due to Dormand & Prince.

This project is hosted on [GitHub](https://github.com/GasinAn/easydop853).

## Example

See [easydop853_test.f90](https://github.com/GasinAn/easydop853/easydop853_test.f90).

## References

* [jacobwilliams/dop853](https://github.com/jacobwilliams/dop853)

## License

* [LICENSE](https://github.com/GasinAn/easydop853/LICENSE).

* [Original license for Hairer's codes](http://www.unige.ch/~hairer/prog/licence.txt).
* [Original license for Williams's codes](https://raw.githubusercontent.com/jacobwilliams/dop853/master/LICENSE).
