#' returns the include path
#'
#' call this to get the include path for ITK headers
#'
#' @author Avants BB
#' @examples
#'
#' getRITKincludes()
#'
#' @export getRITKincludes
getRITKincludes <- function() {
paste( system.file("include", package="RITK"), sep="")
}
