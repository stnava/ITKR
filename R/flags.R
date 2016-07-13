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
#' @import git2r
#' @import cmaker
itkDir <- function() {
  root = itk_lib_root()
  itkd<-paste(root ,"/lib/cmake/ITK-",itkVersion(),"/", sep="")
  if ( ! file.exists(itkd) )
    print("itkDir: itk dir does not exist")
  cat( itkd )
}

#' return ITK libs directory
#'
#' call this to get the include path for ITK configuration.
#'
#' @author Avants BB
#' @examples
#'
#' itkDir()
#'
#' @export itkDir
#' @import git2r
#' @import cmaker
itk_lib_root <- function() {
  itkd = system.file("libs",
              package="ITKR")
  if ( ! file.exists(itkd) )
    print("itkDir: libs dir does not exist")
  return( itkd )
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
  root = itk_lib_root()
  itklocation<-paste( root,"/include/ITK-",itkVersion(),"/", sep="")
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
  root = itk_lib_root()
  itklibs <- paste( root, '/lib/', sep="")
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
  root = itk_lib_root()
  itkd = file.path(root ,"lib", "cmake")
  in_dirs = list.dirs(itkd, full.names = FALSE, recursive = FALSE)
  in_dirs = grep("^ITK.*\\d$", in_dirs, value = TRUE)
  if (length(in_dirs) != 1) {
    stop("multiple versions of ITK exist!")
  }
  version = strsplit(in_dirs, "-")[[1]][2]
  # should update this as versions change
  # may not be necessary to change version
  # "4.11"
  return(version)
}

