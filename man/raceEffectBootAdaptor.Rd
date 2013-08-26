\name{raceEffectBootAdaptor}
\alias{raceEffectBootAdaptor}
\title{
Boot adaptor for testing race effect.
}
\description{
Provides an adaptor function for bootstrapping tests of an effect of race on 
neural responses in the sample dataset, ef. This function can be provided as
an argument to the \code{\link{boot}} function.
}
\usage{
raceEffectBootAdaptor(df, index, testFnc = relBackgroundLL, useResp = TRUE, ...)
}
\arguments{
  \item{df}{
Dataframe containing data which testFnc will operate upon. This dataframe must 
contain a bkgResp and absResp column with the background and response firing rates, respectively.
}
  \item{index}{
The permutation of the rows of df to be applied before calling testFnc.
}
  \item{testFnc}{
Function which will be used to compute the test statistic. Defaults to 
\code{\link{relBackgroundLL}}.
}
  \item{useResp}{
Whether to use the absResp column of df, or the bkgResp column of df when computing 
responses.
}
  \item{\dots}{
Any other required arguments to testFnc.
}
}
\details{
This is a specialized function to illustrate the use of the different
test statistics provided in this package with the example dataset.
}
\value{
The bootstrap result object returned by the \code{\link{boot}} function.}

\author{
Peter N. Steinmetz <PeterNSteinmetz@steinmetz.org>
}

\seealso{
  \code{\link{ef}},
  \code{\link{boot}}
}

\examples{
  # Test for an effect of race on the neural responses in the sample data
  # using the SSC statistic. This effect is highly significant if computed while
  # averaging over all neurons in the dataset.
  require('boot')
  data(ef)
  boot(ef,raceEffectBootAdaptor,1000,useResp=TRUE, 
        testFnc=sumSqCat,backMean=mean(ef$absBkg))->bootRes
  sum(bootRes$t>bootRes$t1)/1000
}

\keyword{ multivariate }
