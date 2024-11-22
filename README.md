# easydop853

This is a modern Fortran (2003/2008) implementation of Hairer's DOP853 ODE solver. This implementation is a simplification of the implementation made by [Jacob Williams (jacobwilliams)](https://github.com/jacobwilliams). A much-easier-to-use subroutine interface has been created by using the original easy-to-use class interface, however, for simplicity, users can only set the ODE and the initial condition, and cannot set other parameters, such as error tolerance parameters, which can be set by using the original implementation. DOP853 is an explicit Runge-Kutta method of order 8(5,3) due to Dormand & Prince (with stepsize control and dense output).

This project is hosted on [GitHub](https://github.com/GasinAn/easydop853).

## Example

See [easydop853_test.f90](https://github.com/GasinAn/easydop853/blob/main/easydop853_test.f90).

## Reference

* [jacobwilliams/dop853](https://github.com/jacobwilliams/dop853).

## License

* [LICENSE](https://github.com/GasinAn/easydop853/blob/main/LICENSE).
* [Original license for Williams's codes](https://raw.githubusercontent.com/jacobwilliams/dop853/master/LICENSE).
* [Original license for Hairer's codes](http://www.unige.ch/~hairer/prog/licence.txt).
