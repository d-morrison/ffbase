\name{diff.ff}
\alias{diff.ff}
\title{Lagged Differences}
\usage{
  \method{diff}{ff} (x, lag = 1L, differences = 1L, ...)
}
\arguments{
  \item{x}{a \code{ff} vector containing values to be
  differenced}

  \item{lag}{a n integer indicating which lag to use}

  \item{differences}{an integer indicating the order of the
  difference}

  \item{...}{other parameters will be passed on to diff}
}
\description{
  Returned suitably lagged and iterated differences
}

