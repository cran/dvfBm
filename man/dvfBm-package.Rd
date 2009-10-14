\name{dvfBm-package}
\alias{dvfBm-package}
\docType{package}
\title{
Simulation and Inference of contaminated Fractional Brownian Motions 
}
\description{Generates contaminated (with additive outliers or additive noise) sample paths of a fractional Brownian motion and proposes robust Hurst exponent estimates that are computationnally fast  and that do not require the estimation of other parameters.
}
\details{
\tabular{ll}{
Package: \tab dvfBm\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-10-14\cr
License: \tab GPL (>=2.0)\cr
LazyLoad: \tab yes\cr
}
}
\author{
J.-F. Coeurjolly
}
\references{
J.-F. Coeurjolly (2001) Simulation and identification of the fractional Brownian motion: a bibliographic and comparative study. Journal of Statistical Software, Vol. 5.

A.T.A. Wood and G. Chan (1994) Simulation of stationary Gaussian processes in \eqn{[0,1]^d}. Journal of computational and graphical statistics, Vol. 3 (4), p.409--432.

S. Achard and J.-F. Coeurjolly (2009). Discrete variations of the fractional Brownian in the presence of outliers and an additive noise. Submitted
}

\keyword{ package }

\examples{
n<-10000;H<-0.8
z<-perturbFBM(n,H,type="AO",SNR=-20,plot=TRUE)
dvFBM(z,method="ST")
dvFBM(z,nma="d4",method="TM",par=list(beta1=.1,beta2=.1))
}
