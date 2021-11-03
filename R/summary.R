#'@title Summarize Oneway Analysis
#'
#'@description The \code{summary.oneway} function prints a summary of the analysis of variance
#'
#'@param x an object of class \code{oneway}
#'@param ... additional arguments (not currently used)
#'
#'@return anova results
#'
#'@seealso
#'\link{oneway},
#'\link{print.oneway},
#'\link{plot.oneway}
#'
#'@export
#'
#'@examples
#'x <- oneway(mpg~cyl, mtcars)
#'summary(x)
#'


summary.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("x must  be class 'oneway'")
  print(anova(x$anova), ...)
}
