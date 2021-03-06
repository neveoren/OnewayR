% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oneway.R
\name{oneway}
\alias{oneway}
\title{Oneway Analysis}
\usage{
oneway(formula, data)
}
\arguments{
\item{formula}{an object of class "formula":
a symbolic description of the model to be fitted.}

\item{data}{an optional data frame, list or environment
(or object coercible by as.data.frame to a data frame)
containing the variables in the model.}
}
\value{
an object of class \code{oneway}
}
\description{
The \code{oneway} function performs a oneway analysis of variance
and returns an object of class \code{oneway}
}
\examples{
x <- oneway(mpg~cyl, mtcars)

}
\seealso{
\link{print.oneway},
\link{plot.oneway},
\link{summary.oneway}
}
