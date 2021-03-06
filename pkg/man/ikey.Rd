\name{ikey}
\alias{ikey}
\title{Creates a unique integer key for unique combinations of rows of an \code{ffdf}}
\usage{
  ikey(x, ...)
}
\arguments{
  \item{x}{an \code{ffdf}}

  \item{...}{other parameters passed on to chunk}
}
\value{
  An integer ff vector of the same length as the number of
  rows in \code{x} with unique values for each unique row
}
\description{
  Creates a unique integer key for unique combinations of
  rows of an \code{ffdf}. In database terms this would
  correspond to a primary or foreign key.\cr Orders the
  \code{ffdf} decreasingly alongside the columns with NA's
  as last in the order and creates the integer key. \cr
}
\examples{
oldffmaxbytes <- getOption("ffmaxbytes")
options(ffmaxbytes = 20)
ffiris <- as.ffdf(iris)
ffiris$key1 <- ikey(ffiris)
ffiris$key2 <- ikey(ffiris[c("Petal.Width","Species")])
unique(ffiris[c("key2","Petal.Width","Species")])[,]
options(ffmaxbytes = oldffmaxbytes)

}

