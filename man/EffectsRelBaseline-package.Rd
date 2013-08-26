\name{EffectsRelBaseline-package}
\alias{EffectsRelBaseline}
\docType{package}
\title{
Test changes of a grouped response relative to baseline.
}
\description{
Functions to test for changes of a response to a stimulus grouping relative 
  to a background or baseline response.
}

\details{
\tabular{ll}{
Package: \tab EffectsRelBaseline\cr
Version: \tab 0.4\cr
Date: \tab 2013-06-12\cr
License: \tab GPL version 3 or newer\cr
Built: \tab R 2.15.2; ; 2013-06-12 22:41:44 UTC; unix\cr
}

Index:
\preformatted{
ef          Example data of human single neuron responses to presentation of emotional faces.
fRatioStat    
                        F-ratio statistic for grouped responses.
LL1WayAnova		
                        Log-likelihood ratio statistic for grouped responses.
relBackgroundLL
                        Log-likelihood ratio of grouped responses being drawn from 
                        a background distribution with known mean and variance.
sumSqCat
                        Weighted sum of squared deviations test statistic, as used
                        in the changes from background test (CBT).
}

This package provides functions for testing whether grouped responses have significant deviations from baseline. It allows testing using the non-parametric
changes from background test (CBT), which doesn't require multiple testing relative to 
baseline followed by a second test for an effect of group on the responses. Such 
double testing can lead to erroneous conclusions, as discussed in Steinmetz & Thorp, 2013.

The primary function is \code{\link{sumSqCat}} which computes the appropriate test statistic for use in the CBT. A variety of other test functions are provided which can 
be used for comparison of performance.
}

\author{
Peter N. Steinmetz <PeterNSteinmetz@steinmetz.org>
Christopher Thorp <thorp@spacia.org>

Maintainer: Peter N. Steinmetz <PeterNSteinmetz@steinmetz.org>
}
\references{
Steinmetz, P.N. & Thorp, C.K. (2013) Testing for effects of different stimuli on neuronal firing relative to background activity. Journal of Neural Engineering, Sept. 2013.
}
\keyword{ package }
\seealso{
\code{\link[PsumtSim:PsumtSim-package]{PsumtSim-package}}
\code{\link{boot}}
}
