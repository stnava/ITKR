\name{software versions}
\alias{softwareVersions}
\docType{data}
\title{softwareVersions}
\description{
A data frame defining the git tag for the current ITKR version of ITK.
}
\usage{data(softwareVersions)}
\format{
  A data frame listing the following variables.
  \describe{
    \item{\code{Dependency}}{ Name of software dependency. }
    \item{\code{GitTag}}{ The git tag.  This can also be used to trace other dependencies, e.g. the ITK version used by the current ANTs version. }
  }
}
\references{
\url{https://github.com/InsightSoftwareConsortium/ITKhttps://github.com/InsightSoftwareConsortium/ITK}
}
\examples{
data(softwareVersions)
}
\keyword{datasets}
