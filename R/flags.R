#' return ITK installation information
#'
#' call this to get the include path for ITK headers and libraries
#'
#' @author Avants BB
#' @examples
#'
#' getITKincludes()
#'
#' @export getITKincludes
getITKincludes <- function() {
  itklocation<-paste( system.file("libs",
    package="ITKR"),"/include/ITK-",getITKversion(),"/", sep="")
  if ( ! file.exists(itklocation) )
    stop("getITKincludes: itk includes do not exist")
  cat( itklocation )
}

#' return ITK library location
#'
#' call this to get the path to ITK static libaries to which you will link
#'
#' @author Avants BB
#' @examples
#'
#' getITKlibs()
#'
#' @export getITKlibs
getITKlibs <- function() {
  itklibs <- paste( system.file("libs", package="ITKR"), '/lib/', sep="")
  if ( ! file.exists(itklibs) )
    stop("getITKlibs: itk libs do not exist")
  cat( itklibs )
}


#' return ITK compile flags
#'
#' call this to get the compilation flags used for ITK and dependent software
#'
#' @author Avants BB
#' @examples
#'
#' getITKcompileflags()
#'
#' @export getITKcompileflags
getITKcompileflags <- function() {
  cat(" -Wno-c++11-long-long -fPIC -O2  ")
}

#' return ITK version information
#'
#' call this to get the installed ITK version
#'
#' @author Avants BB
#' @examples
#'
#' getITKversion()
#'
#' @export getITKversion
getITKversion <- function() {
  # should update this as versions change
  "4.8"
}
