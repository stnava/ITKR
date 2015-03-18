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
paste( system.file("libs", package="ITKR"),"/include/ITK-",getITKversion(),"/", sep="")
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
paste('"', system.file("libs", package="ITKR"), '/lib/"', sep="")
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
"4.8"
}
