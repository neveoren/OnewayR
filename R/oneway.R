#'@title Oneway Analysis
#'
#'@description The \code{oneway} function performs a oneway analysis of variance
#'and returns an object of class \code{oneway}
#'
#'@param formula an object of class "formula":
#'a symbolic description of the model to be fitted.
#'@param data an optional data frame, list or environment
#'(or object coercible by as.data.frame to a data frame)
#'containing the variables in the model.
#'
#'@return an object of class \code{oneway}
#'
#'@seealso
#'\link{print.oneway},
#'\link{plot.oneway},
#'\link{summary.oneway}
#'
#'@export
#'
#'@examples
#'x <- oneway(mpg~cyl, mtcars)
#'


oneway <- function(formula, data) {

  # listwise deletion of missing values
  data_complete <- na.omit(data)

  # anova
  fit <- lm(formula, data_complete)

  stats <-  aggregate(formula,
                     data,
                     function(x) c(n = length(x), mean = mean(x), sd = sd(x)))


  result <- list(anova = fit, summarystats = stats)
  class(result) <- c("oneway", "list")
  return(result)

}
