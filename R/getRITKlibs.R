#' returns the libraries
#'
#' call this to get the ITK library locations
#'
#' @author Avants BB
#' @examples
#'
#' getRITKlibs()
#'
#' @export getRITKlibs
getRITKlibs <- function() {
paste(system.file("libs", package="RITK"), '"', sep="")
}
