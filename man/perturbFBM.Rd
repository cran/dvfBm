\name{perturbFBM}
\alias{perturbFBM}

\title{ Simulation of a perturbed fBm }
\description{
Simulation of a sample path of a fractional Brownian motion contaminated by outliers or an additive Gaussian noise 
}
\usage{
perturbFBM(n, H, C = 1, type = "no", SNR=NULL,plot = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ sample size }
  \item{H}{ Hurst parameter }
  \item{C}{ scaling coefficient. Default is \code{1} }
  \item{type}{ type of perturbation. Possible choices are \code{"no","B0","B1","AO"}}
  \item{SNR}{ Signal Noise Ratio parameter for the contamination }
  \item{plot}{ if \code{plot} is \code{TRUE} a (2,2) plot of the sample path of the fractional Brownian motion, the fractional Gaussian noise and their contaminated version is produced. Default is \code{FALSE}}
}
\details{
Possible contaminated models are
\describe{
\item{\code{"no"}}{ no contamination}
\item{\code{"AO"}}{ additive outliers models. \eqn{0.5\%} of the data are perturbed by Gaussian variables with variance such that the SNR equals \code{SNR}.}
\item{\code{"B0"}}{ \eqn{FBM + \sigma* B0} where B0 is a standard Brownian motion. \eqn{\sigma} is chosen such that the SNR of the increments equals \code{SNR}}
\item{\code{"B1"}}{\eqn{FBM+ \sigma * B1} where B1 are i.i.d. Gaussian standard variables. \eqn{\sigma} is chosen such that the SNR of the increments equals \code{SNR}}
}
See Achard and Coeurjolly (2009) for a more detailed description.

}
\value{
  returns a vector of length \code{n} of a dsicretized sample path of a fractional Brownian motion with parameters \code{(H,C)} at times \eqn{i=1,...,n} possibly contaminated by an additive outliers models, a Brownian motion or a Gaussian white noise. 
}
\references{ 
S. Achard and J.-F. Coeurjolly (2009). Discrete variations of the fractional Brownian in the presence of outliers and an additive noise. Submitted}
\author{ J.-F. Coeurjolly }

\seealso{ \code{\link{circFBM}}, \code{\link{dvFBM}} }
\examples{
n<-1000;H1<-.3;H2<-.8
## "no"
tmp1<-perturbFBM(n,H1,type="no",plot=TRUE)
tmp2<-perturbFBM(n,H2,type="no",plot=TRUE)
## "AO"
tmp3<-perturbFBM(n,H1,type="AO",SNR=0,plot=TRUE)
tmp4<-perturbFBM(n,H2,type="AO",SNR=-20,plot=TRUE)
## "B0"
tmp5<-perturbFBM(n,H1,type="B0",SNR=10,plot=TRUE)
tmp6<-perturbFBM(n,H2,type="B0",SNR=0,plot=TRUE)
## "B1"
tmp7<-perturbFBM(n,H1,type="B1",SNR=10,plot=TRUE)
tmp8<-perturbFBM(n,H2,type="B1",SNR=0,plot=TRUE)
}