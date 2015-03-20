## Test environments
* local OS X install, R 3.1.3
* ubuntu 12.04 (on travis-ci), R 3.1.3

## R CMD check results
There were no ERRORs or WARNINGs.

There were 2 NOTES:

* New maintainer

* checking installed package size ... NOTE
  installed size is 86.9Mb
  sub-directories of 1Mb or more:
    libs  86.8Mb

This is a templated C++ header and medical imaging I/O library with substantial functionality. The package is along the lines of [BH](http://cran.r-project.org/web/packages/BH/index.html) and has a similar memory footprint.

## Downstream dependencies
There are no downstream dependencies except for a github package [ANTsR](https://github.com/stnava/ANTsRCran) which we would like to submit to CRAN after ITKR.
