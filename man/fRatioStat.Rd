\name{fRatioStat}
\alias{fRatioStat}
\title{
F-ratio statistic for grouped responses
}
\description{
Computes the F-ratio statistic for a log-likelihood ratio test of the null 
hypothesis that the responses are all drawn from one group, rather than 
the alternative hypothesis that each group has a separate mean.
}
\usage{
fRatioStat(resp, groups)
}
\arguments{
  \item{resp}{
response values
}
  \item{groups}{
grouping variables (will be treated as factors)
}
}
\value{
F-ratio statistic
}
\references{
B. Lindgren, Statistical Theory, 4th Ed. (1993), section 14.7.
}
\author{
Peter N. Steinmetz <PeterNSteinmetz@steinmetz.org>
}
\note{
This is the standard F-ratio for a 1-way ANOVA. It is included here for comparison to other statistics.
}

\seealso{
\code{\link{LL1WayAnova},\link{relBackgroundLL},\link{sumSqCat}}
}

\examples{
data(ef)
fRatioStat(ef$absResp,ef$race)
}
\keyword{multivariate}
