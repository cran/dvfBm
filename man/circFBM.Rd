\name{circFBM}
\alias{circFBM}

\title{Simulation of a fractional Brownian motion by using the circulant matrix method }
\description{
  Generates a discretized sample path of a fBm, \eqn{B_H=(B_H(0),...,B_H(n-1/n))}, at times \eqn{0,...,(n-1)/n} with Hurst parameter H in (0,1) by using the circulant matrix method. A fBm with scaling coefficient \eqn{C>0} and discretized at times 0,...,n-1 is obtained by the operation: \eqn{n^H * C  * B_H}.
}
\usage{
circFBM(n, H, plotfBm = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ sample size }
  \item{H}{ Hurst parameter }
  \item{plotfBm}{possible plot of the generated sample path}
}
\details{
The circulant matrix method consists in embedding the covariance matrix  of the increments of the fractional Brownian motion (which is a Toeplitz matrix since the increments are stationary) in a matrix, say \eqn{M}, whose size is a power of 2 greater than \code{n}. One then uses general results on circulant matrices to compute easily and very quickly the eigenvalues of \eqn{M}. Note that the simulation fails if the procedure does not find a matrix \eqn{M} such that all its eigenvalues are positive.
}
\value{
  Returns a vector of length \code{n}.
}
\references{ 
J.-F. Coeurjolly (2001) Simulation and identification of the fractional Brownian motion: a bibliographic and comparative study. Journal of Statistical Software, Vol. 5.

A.T.A. Wood and G. Chan (1994) Simulation of stationary Gaussian processes in \eqn{[0,1]^d}. Journal of computational and graphical statistics, Vol. 3 (4), p.409--432.
}

\author{ J.-F. Coeurjolly }


\examples{
tmp1<-circFBM(500,0.2)
tmp2<-circFBM(5000,0.5)
tmp3<-circFBM(50000,0.8)
}