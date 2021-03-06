\name{ffmatch}
\alias{\%in\%}
\alias{ffdfmatch}
\alias{ffmatch}
\title{Value Matching for ff objects}
\usage{
  ffmatch(x, table, nomatch = NA_integer_,
    incomparables = NULL, trace = FALSE, ...)

  ffdfmatch(x, table, nomatch = NA_integer_,
    incomparables = NULL, trace = FALSE, ...)

  x \%in\% table
}
\arguments{
  \item{x}{a \code{ff} object for \code{ffmatch} or an
  \code{ffdf} object for \code{ffdfmatch}}

  \item{table}{a \code{ff} object for \code{ffmatch} or an
  \code{ffdf} object for \code{ffdfmatch}}

  \item{nomatch}{the value to be returned in the case when
  no match is found. Note that it is coerced to
  \code{integer}.}

  \item{incomparables}{a vector of values that cannot be
  matched. Any value in \code{x} matching a value in this
  vector is assigned the nomatch value. For historical
  reasons, \code{FALSE} is equivalent to \code{NULL}.}

  \item{trace}{logical indicating to show on which chunk
  the function is computing}

  \item{...}{other parameters passed on to chunk}
}
\value{
  An ff vector of the same length as \code{x}. An integer
  vector giving the position in table of the first match if
  there is a match, otherwise \code{nomatch}.
}
\description{
  \code{ffmatch} returns an ff vector of the positions of
  (first) matches of its first argument in its second.
  Similar as \code{\link[base]{match}}. \cr \cr
  \code{ffdfmatch} allows to match ffdf objects by
  \code{\link[base]{paste}}-ing together the columns of the
  ffdf and matching on the pasted column and returns an ff
  vector of the positions of (first) matches of its first
  argument in its second.\cr \cr \code{\%in\%} returns a
  logical ff vector indicating if there is a match or not
  for its left operand. ffdf objects are also allowed in
  the left and right operand of the \code{\%in\%} operator.
  See the examples.
}
\examples{
## Basic example of match.ff
x.ff <- ffmatch( as.ff(as.factor(c(LETTERS, NA)))
               , as.ff(as.factor(c("C","B","Z","X","HMM","Nothing",NA)))
               , trace=TRUE
               , BATCHBYTES=20)
class(x.ff)
x <- match(c(LETTERS, NA), c("C","B","Z","X","HMM","Nothing",NA))
table(x.ff[] == x, exclude=c())
## ffdfmatch also allows to input an ffdf
data(iris)
ffiris <- as.ffdf(iris)
ffirissubset <- as.ffdf(iris[c(1:10, nrow(iris)), ])
ffdfmatch(ffiris, ffirissubset, trace=TRUE, BATCHBYTES=500)

## \%in\% is masked from the base package
letter <- factor(c(LETTERS, NA))
check <- factor(c("C","B","Z","X","HMM","Nothing",NA))
letter \%in\% check
as.ff(letter) \%in\% as.ff(check)

ffiris \%in\% ffirissubset



}
\seealso{
  \code{\link[base]{match}, \link[base]{paste}}
}

