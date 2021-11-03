#'@title Plot Oneway Analysis
#'
#'@description the \code{plot.oneway} function plots the results of the oneway analysis
#'
#'@param x an object of class \code{oneway}
#'@param ... additional arguments (not currently used)
#'
#'@return a boxplot
#'
#'@seealso
#'\link{oneway},
#'\link{print.oneway},
#'\link{summary.oneway}
#'
#'@export
#'
#'@examples
#'x <- oneway(mpg~cyl, mtcars)
#'plot(x)
#'


plot.oneway <- function(x, col="skyblue", ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  boxplot(x$anova$terms, x$anova$model, ...)
}
