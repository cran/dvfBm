\name{dilatation}
\alias{dilatation}

\title{ Provides the dilated version of a vector}
\description{
Computes the vector \eqn{a^m : a_i^m= a_{i/m}} if \eqn{i/m} is an integer and 0 otherwise. As an example, if \eqn{a=a^1=(1,-2,1)}, then \eqn{a^2=(1,0,-2,0,1)},...
}
\usage{
dilatation(a = c(1, -2, 1), m = 2)
}


\arguments{
  \item{a}{ a numeric vector  }
  \item{m}{ an integer associated to the dilatation factor }
}

\value{ Return a vector of length \code{m*(length(a)-1)+1}
}
\author{ J.-F. Coeurjolly }

\seealso{\code{\link{filt}}}

\examples{
dilatation(c(1,-1,1),1)
dilatation(c(1,-1),2)
##
dilatation(filt("i2"),5)
}

