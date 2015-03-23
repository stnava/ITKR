#' return ITK directory information
#'
#' call this to get the include path for ITK configuration.
#' this is what needs to be passed to dependent programs.
#'
#' @author Avants BB
#' @examples
#'
#' itkDir()
#'
#' @export itkDir
itkDir <- function() {
  itkd<-paste( system.file("libs",
    package="ITKR"),"/lib/cmake/ITK-",itkVersion(),"/", sep="")
  if ( ! file.exists(itkd) )
    print("itkDir: itk dir does not exist")
  cat( itkd )
}

#' return ITK installation information
#'
#' call this to get the include path for ITK headers and libraries
#'
#' @author Avants BB
#' @examples
#'
#' itkIncludes()
#'
#' @export itkIncludes
itkIncludes <- function() {
  itklocation<-paste( system.file("libs",
    package="ITKR"),"/include/ITK-",itkVersion(),"/", sep="")
  if ( ! file.exists(itklocation) )
    print("itkIncludes: itk includes do not exist")
  cat( itklocation )
}

#' return ITK library location
#'
#' call this to get the path to ITK static libaries to which you will link
#'
#' @author Avants BB
#' @examples
#'
#' itkLibs()
#'
#' @export itkLibs
itkLibs <- function() {
  itklibs <- paste( system.file("libs", package="ITKR"), '/lib/', sep="")
  if ( ! file.exists(itklibs) )
    print("itkLibs: itk libs do not exist")
  cat( itklibs )
}


#' return ITK compile flags
#'
#' call this to get the compilation flags used for ITK and dependent software
#'
#' @author Avants BB
#' @examples
#'
#' itkCompileFlags()
#'
#' @export itkCompileFlags
itkCompileFlags <- function() {
  cat(" -fPIC -O2  ")
}

#' return ITK version information
#'
#' call this to get the installed ITK version
#'
#' @author Avants BB
#' @examples
#'
#' itkVersion()
#'
#' @export itkVersion
itkVersion <- function() {
  # should update this as versions change
  "4.8"
}
