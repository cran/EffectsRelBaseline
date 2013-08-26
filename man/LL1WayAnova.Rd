\name{LL1WayAnova}
\alias{LL1WayAnova}
\title{
Log-likelihood ratio statistic for grouped responses
}
\description{
Computes the log-likelihood ratio statistic for a test of the null 
hypothesis that the responses are all drawn from one group, rather than 
the alternative hypothesis that each group has a separate mean.
}
\usage{
LL1WayAnova(resp, groups)
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
log-likelihood ratio
}
\references{
B. Lindgren, Statistical Theory, 4th Ed. (1993), section 14.7.
}
\author{
Peter N. Steinmetz <PeterNSteinmetz@steinmetz.org>
}
\note{
This is the normal likelihood-ratio which is used in performing a 1-way ANOVA. It is included here for comparison.
}

\seealso{
\code{\link{fRatioStat},\link{relBackgroundLL},\link{sumSqCat}}
}
\examples{
data(ef)
LL1WayAnova(ef$absResp,ef$race)
}

\keyword{multivariate}
