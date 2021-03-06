\name{colwise}
\title{Column-wise function.}
\usage{colwise(.fun, .cols=true)}

\description{
  Column-wise function. Turn a function that operates on a vector into
  a function that operates column-wise on a data.frame.
}

\details{
  \code{catcolwise} and \code{numcolwise} provide version that only
  operate on discrete and numeric variables respectively.
}
\alias{colwise}
\alias{catcolwise}
\alias{numcolwise}
\arguments{
  \item{.fun}{function}
  \item{.cols}{either function that tests columns for inclusion, or a quoted object giving which columns to process}
}
\examples{# Count number of missing values
nmissing <- function(x) sum(is.na(x))

# Apply to every column in a data frame 
colwise(nmissing)(baseball)
# This syntax looks a little different.  It is shorthand for the 
# the following:
f <- colwise(nmissing)
f(baseball)

# This is particularly useful in conjunction with d*ply
ddply(baseball, .(year), colwise(nmissing))

# To operate only on specified columns, supply them as the second
# argument.  Many different forms are accepted.
ddply(baseball, .(year), colwise(nmissing, .(sb, cs, so)))
ddply(baseball, .(year), colwise(nmissing, c("sb", "cs", "so")))
ddply(baseball, .(year), colwise(nmissing, ~ sb + cs + so))

# Alternatively, you can specify a boolean function that determines
# whether or not a column should be included
ddply(baseball, .(year), colwise(nmissing, is.character))
ddply(baseball, .(year), colwise(nmissing, is.numeric))
ddply(baseball, .(year), colwise(nmissing, is.discrete))

# These last two cases are particularly common, so some shortcuts are 
# provided:
ddply(baseball, .(year), numcolwise(nmissing))
ddply(baseball, .(year), catcolwise(nmissing))}
