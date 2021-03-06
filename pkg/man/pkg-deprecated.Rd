\name{ffdfsave}
\alias{ffdfsave}
\title{Save a ffdf data.frame in directory}
\usage{
  ffdfsave(dat, filename)
}
\arguments{
  \item{dat}{\code{ffdf} data.frame, to be saved}

  \item{filename}{path where .rdata file will be save and
  <filename>_ff directory will be created}
}
\description{
  \code{ffdfsave} saves a ffdf data.frame in the given
  filename (.rdata) and stores all \code{ff} columns in a
  subdirectory with the name "<filename>_ff". Each column
  will be named "<columnname>.ff". A saved ffdf data.frame
  is a .rdata file and can be loaded with the \code{load}
  function Deprecated, the preferred method is
  \code{\link{save.ffdf}}
}

