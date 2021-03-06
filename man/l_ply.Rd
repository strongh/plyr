\name{l_ply}
\alias{l_ply}
\title{Split list, apply function, and discard results.}
\usage{l_ply(.data, .fun, ..., .progress="none", .print=FALSE)}

\description{
  Split list, apply function, and discard results. For each element of
  a list, apply function and discard results
}

\details{
  All plyr functions use the same split-apply-combine strategy: they
  split the input into simpler pieces, apply \code{.fun} to each piece,
  and then combine the pieces into a single data structure.  This
  function splits lists by elements and discards the output.  This is
  useful for functions that you are calling purely for their side
  effects like display plots and saving output.
}
\keyword{manip}
\arguments{
  \item{.data}{list to be processed}
  \item{.fun}{function to apply to each piece}
  \item{...}{other arguments passed on to \code{.fun}}
  \item{.progress}{name of the progress bar to use, see \code{\link{create_progress_bar}}}
  \item{.print}{automatically print each result? (default: \code{FALSE})}
}
