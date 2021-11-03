
# OnewayR

![](oneway.png)

The goal of OnewayR is to perform a oneway analysis of variance
creating an object with a class of "oneway", 
with print, plot, and summary functions associated. 

## Installation

You can install OnewayR with:

``` r
if(!require("remotes")){
  install.packages("remotes")
  library("remotes"")
}
remotes::install_github("neveoren/OnewayR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(OnewayR)
x <- oneway(mpg~cyl, mtcars)
print(x)
plot(x)
summary(x)
```

