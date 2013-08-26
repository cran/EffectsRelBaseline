\name{sumSqCat}
\alias{sumSqCat}
\title{
Weighted sum of squared deviations by category, SSC, statistic.
}
\description{
Compute the weighted sum of squared deviations of the group or category
response means from the average background.
}
\usage{
sumSqCat(resp, groups, backMean)
}

\arguments{
  \item{resp}{
response values
}
  \item{groups}{
grouping variables (will be treated as factors)
}
  \item{backMean}{
mean of background values
}

}
\details{
The SSC statistic is the primary test statistic developed for the 
changes from background test (CBT) developed in Steinmetz & Thorp (2013).
}
\value{
weighted sum of squared deviations of group means from background
}
\references{
Steinmetz, P.N. & Thorp, C.K. (2013) Testing for effects of different stimuli on neuronal firing relative to background activity. Journal of Neural Engineering, in review.
}
\author{
Peter N. Steinmetz <PeterNSteinmetz@steinmetz.org>
}

\seealso{
\code{\link{fRatioStat},\link{relBackgroundLL},\link{LL1WayAnova}}
}

\examples{
  data(ef)
  sumSqCat(ef$absResp,ef$race,mean(ef$absBkg))
}

\keyword{multivariate}
