#'@title Print Oneway Analysis
#'
#'@description The \code{print.oneway} function prints the results of the oneway analysis:
#'the summary statistics (count, mean, and standard deviations of each group) and
#'the anova results (analysis of variance)
#'
#'@param x an object of class \code{oneway}
#'@param ... additional arguments (not currently used)
#'
#'@return summary statistics and anova results
#'
#'@seealso
#'\link{oneway},
#'\link{plot.oneway},
#'\link{summary.oneway}
#'
#'@export
#'
#'@examples
#'x <- oneway(mpg~cyl, mtcars)
#'print.oneway(x)
#'
#'print(x)
#'


print.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  cat("\nSummary Statistics\n",
      "====================================================\n", sep="")
  print(x$summarystats, ...)
  cat("\nAnova\n",
      "====================================================\n", sep="")
  print(summary.lm(x$anova), ...)
}
