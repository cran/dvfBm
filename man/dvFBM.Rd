\name{dvFBM}
\alias{dvFBM}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Discrete Variations estimate for a contaminated fBm }
\description{
 Robust estimator of the Hurst parameter of a fractional Brownian possibly contaminated by additive outliers and/or an additive noise.
}
\usage{
dvFBM(fbm, nma = "i2", M1 = 1, M2 = 5, method = c("ST", "Q", "TM", 
	"B1-ST", "B1-Q", "B1-TM", "B0-ST", "B0-Q", "B0-TM"), 
	par = list(), llplot = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{fbm}{ data }
  \item{nma}{ name of the filter used for filtering the data. See \code{\link{filt}} for possible choices. Default is \code{"i2"} }
  \item{M1}{ Minimum value of the dilatation factor. Default is \code{1}. }
  \item{M2}{ Maximum value of the dilatation factor. Default is \code{5}. }
  \item{method}{ Type of the discrete variations method. }
  \item{par}{ Parameters depending on \code{method}. If \code{method} is \code{"Q","B0-Q","B1-Q"}, a list with two vectors \code{vecp} and \code{vecc} is needed. If  \code{method} is \code{"TM","B0-TM","B1-TM"}, a list with two real numbers \code{beta1} and \code{beta2} is needed.}
  \item{llplot}{ If true a plot of \eqn{\log(U_n^{a^m})}  against \eqn{\log(m)} for \eqn{m=M_1,...,M_2} is produced.  }
}

\details{
An estimate of the Hurst exponent parameter is provided without estimating the scaling coefficient \eqn{C} and \eqn{\sigma} (parameter related to an additive noise). The standard method ST is based on filtering the data with dilated versions of the initial filter (whose name is \code{nma}). Other methods are improvements. Methods TM and Q are based on trimmed-means and sample quantiles respectively. Methods B0 and B1 exploit the fact that the contamination is a Brownian motion or a Gaussian white noise. Other methods are combinations of the two last classes. See Achard and Coeurjolly (2009) for more details.
}
\value{
 Returns the Hurst parameter estimate
}

\references{ 
S. Achard and J.-F. Coeurjolly (2009). Discrete variations of the fractional Brownian in the presence of outliers and an additive noise. Submitted}
\author{ J.-F. Coeurjolly }

\seealso{ \code{\link{circFBM}}, \code{\link{perturbFBM}} }

\examples{
n<-10000;H<-.8
## no
z<-perturbFBM(n,H,type="no",plot=FALSE)
dvFBM(z,method="ST")
dvFBM(z,method="TM",par=list(beta1=.1,beta2=.1))
dvFBM(z,method="B0-Q",par=list(vecp=.5,vecc=1))
dvFBM(z,method="B1-ST")
## AO
z<-perturbFBM(n,H,type="AO",SNR=-20,plot=FALSE)
dvFBM(z,nma="d4",method="ST")
dvFBM(z,nma="d4",method="TM",par=list(beta1=.1,beta2=.1))
## B0
z<-perturbFBM(n,H,type="B0",SNR=0,plot=FALSE)
dvFBM(z,M2=10,method="ST")
dvFBM(z,M2=10,method="B0-ST")
## B1
z<-perturbFBM(n,H,type="B1",SNR=0,plot=FALSE)
dvFBM(z,method="ST")
dvFBM(z,method="B1-ST")
}