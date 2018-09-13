# rtnorm

R-package for generating random draws from a truncated normal distribution.

The package provides the function `rtnorm` which generates a single draw from a
standard normal random variable that is truncated to an interval. 

The algorithm used is the Ziggurat algorithm from 
[N. Chopin, "Fast simulation of truncated Gaussian distributions", Stat Comput (2011) 21:275-288][chopin].

The algorithm is not optimized for vectorized use.

## Installation

The easiest way to install the package is to use the `devtools` package.
Make sure that you have the `devtools` package installed and type:

```R
devtools:install_github("adzemski/rtnorm")
```

## License and acknowledgement

This software is open source software and is licensed under the [GNU General Public License 2.0][gnu 2.0]. 
The implementation of the algorithm is based on the C++ code by Guillaume Dollé and Vincent Mazet (availabe at http://miv.u-strasbg.fr/mazet/rtnorm/).

[chopin]: https://arxiv.org/pdf/1201.6140
[gnu 2.0]: http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
