\name{ef}
\alias{ef}
\docType{data}
\title{
Human single neuron responses to race.
}
\description{
This dataframe contains the responses of two neurons from the human medial
temporal lobe to the presentation of synthetically generated faces which 
vary the emotion and race.
}
\usage{data(ef)}
\format{
  A data frame with 1452 observations of the following 5 variables.
  \describe{
    \item{\code{clustId}}{Identifier of the neuron, 
    a factor with levels \code{ch26cl3} \code{ch28cl3}.}
    \item{\code{name}}{Name of the image file presented.}
    \item{\code{race}}{Race of the face presented,
    a factor with levels \code{ambigBlack} \code{ambigWhite} \code{black} \code{white}}
    \item{\code{absResp}}{Number of action potentials fired during presentation of the image, a numeric vector.}
    \item{\code{absBkg}}{Number of action potentials fired prior to image presentation,
    a numeric vector}
  }
}

\references{
Valdez et al. 2013, "Race Selective Neurons in the Human Brain".
}
\examples{
data(ef)
anova(glm(absResp~race,data=ef),test='Chisq')
}
\keyword{datasets}
