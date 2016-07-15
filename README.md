# ITKR

[![Build Status](https://travis-ci.org/stnava/ITKR.png?branch=master)](https://travis-ci.org/stnava/ITKR)

ITK*R* provides *R*-based access to the [Insight ToolKit (ITK)](www.itk.org) for medical image processing, registration and segmentation.  ITK*R* installs this library in *R* style and provides user or developer access to its templated header files and libraries.  Consequently, this is a core package on which it is expected that other packages will build functionality. Shout out to Bartlett Bears.

One such package is [ANTsR](https://github.com/stnava/ANTsR). A developer should be able to use this package as a guide for how they might wrap ITK themselves, within *R*.  Primarily, one uses ITK*R* to manage the compilation of the dependent software's knowledge of ITK resources.

To install ITKR:
```
devtools::install_github( "stnava/ITKR" )
```
The primary result of this installation process is *R*-based access to the ITK library.  The user or developer can identify the location of the ITK installation by performing:
```
ITKR::itkIncludes()
```
which uses `cat` to report the install location.  We use `cat` because it allows the developer simpler access to these variable names in Makefiles and other compilation-related scripts.  If you want to store the variable within R:
```
itkinstalldir <- capture.output( ITKR::itkIncludes() )
```
This package is still an early development version.
