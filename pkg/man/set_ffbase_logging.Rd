\name{set_ffbase_logging}
\alias{set_ffbase_logging}
\title{sets the logging of ffbase}
\usage{
  set_ffbase_logging(level = c("info"),
    logger = if (interactive()) cat)
}
\arguments{
  \item{level}{logging level: info/debug}

  \item{logger}{function to be called for logging
  statements, by default this is \code{cat}}
}
\description{
  sets the logging of ffbase
}

