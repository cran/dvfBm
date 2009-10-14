\name{filt}
\alias{filt}

\title{ Components of a named filter}
\description{
  This function gives the components of an increment-type filter or a (classical) wavelet Daubechies filter 
}
\usage{
filt(nm = "i2")
}
\arguments{
  \item{nm}{ a character string denoting the filter type. Supported types include:
\describe{
\item{INCREMENT-TYPE:}{"in" where n is an integer}
\item{EXTREMAL PHASE (daublet):}{"haar", "d2", "d4", "d6", "d8", "d10", "d12", "d14", "d16", "d18", "d20"}
\item{LEAST ASYMMETRIC (symmlet):}{"s2","s4", "s6", "s8", "s10", "s12", "s14", "s16", "s18", "s20"}
\item{BEST LOCALIZED:}{"l2", "l4", "l6", "l14", "l18", "l20"}
\item{COIFLET:}{"c6", "c12", "c18", "c24", "c30"}
}

Default: "i2".

Note that wavelet Daubechies filter are obtained by using the function \link[wmtsa]{wavDaubechies}
 }
}

\value{a numeric vector corresponding to the filter}
\references{ 
D. B. Percival and A. T. Walden (2000). Wavelet Methods for Time Series Analysis, Cambridge University Press.

I. Daubechies (2006). Orthonormal Bases of Compactly Supported Wavelets, Communications on Pure and, Applied Mathematics, 41, 909-996. 
 }
\author{ J.-F. Coeurjolly}

\seealso{ \code{\link{dilatation}},\code{\link[wmtsa]{wavDaubechies}} }
\examples{

filt()
filt("d4")
dilatation(filt("d4"),2)
}

