\name{progress_text}
\alias{progress_text}
\title{Text progress bar.}
\usage{progress_text(style=3, ...)}

\description{
  Text progress bar. A textual progress bar
}

\details{
  This progress bar displays a textual progress bar that works on all
  platforms.  It is a thin wrapper around the built-in
  \code{\link{setTxtProgressBar}} and can be customised in the same
  way.
}
\arguments{
  \item{style}{style of text bar, see Details section of \code{\link{txtProgressBar}}}
  \item{...}{other arugments passed on to \code{\link{txtProgressBar}}}
}
\examples{l_ply(1:1000, identity, .progress = "text")
l_ply(1:1000, identity, .progress = progress_text(char = "-"))}
