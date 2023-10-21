install.packages("ggplot2")
library(ggplot2)
lambdas <- seq(3.5,4,by = 0.00001)
vec1 <- c()
plot_chaos <- function(lambdas,x_0,limit,vec) {
  for (x in lambdas) {
    x_0<-x_0
    for (i in 0:limit) {
      x_0 <- x*x_0*(1-x_0)
      if (i == limit) {
       vec<-c(vec,x_0) 
      }
    }
    x
  }
  plot(lambdas,vec,type="p")
  vec
}
plot_chaos(lambdas,0.5,10000,vec1)

