\name{relBackgroundLL}
\alias{relBackgroundLL}
\title{
Log-likelihood ratio of grouped responses being drawn from a background distribution.
}
\description{
Compute the log-likelihood ratio of the grouped responses being obtained 
from a background distribution given its mean and variance.
}
\usage{
relBackgroundLL(resp, groups, backMean, backVar)
}
\arguments{
  \item{resp}{
response values
}
  \item{groups}{
grouping variables (will be treated as factors)
}
  \item{backMean}{
mean of the background distribution
}
  \item{backVar}{
variance of the background distribution}
}
\value{
log-likelihood ratio
}
\references{
Steinmetz, P.N. & Thorp, C.K. (2013) Testing for effects of different stimuli on neuronal firing relative to background activity. Journal of Neural Engineering, in review.
}
\author{
Peter N. Steinmetz <PeterNSteinmetz@steinmetz.org>
}
\note{
This is the log-likelihood ratio of the changes from background test (CBT). It is included here for comparison.
}

\seealso{
\code{\link{fRatioStat},\link{LL1WayAnova},\link{sumSqCat}}
}
\examples{
# calculate test statistic for one cluster
data(ef)
df<-subset(ef,clustId=='ch26cl3')
relBackgroundLL(df$absResp,df$race,mean(df$absBkg),var(df$absBkg))
}

\keyword{multivariate }
