scores <- c()
tau <- 7
#could have defined two functions but too much busywork
for (i in 0:10000) {
    x<-runif(10000,0,1)
    x<-sapply(x,log)
    x=-1*tau*x
    sum = 0
    for (a in x) {
      sum = sum + a
    }
    v = (sum/tau**2)-(10000/tau)
    scores<-c(scores, v )
    if (i == 10000-1) {
      x
      hist(x)
    }
}
hist(scores)
mean(scores)
var(scores)
#the variance of the scores (fisher info) increases when tau decreases