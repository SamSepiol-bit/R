getwd()
setwd("C:/Users/hnd.STUDENT/Desktop/rwork")

mtcars

#take mpg_column
cars_mpg<-mtcars$mpg
cars_mpg

#conduct nrmality testing by using shapiro
shapiro.test(cars_mpg)
#p value - 0.1229 alpha = 0.05
#o.1229>0.05
#w-statictic  - 0.94756

#when your w statistic < 0.95 increasing deviation form normlity
#when you w static stic = 1 data is very close to normal
#when your w static < 0.90 data is not normal
#when p-value is greater than 0.05 then we assume that the data is normally distributed

#Note : We are not using w value to make dicisions decisons we use only p-value
png(filename = "bellcurve1.png")
hist(cars_mpg,breaks = 10,probability = TRUE,
     col = "lightgray", main = "mpg with normal curve",xlab = "MPG")
xfit<-seq(min(cars_mpg),max(cars_mpg),length=100)
yfit<-dnorm(xfit,mean = mean(cars_mpg),sd = sd(cars_mpg))
lines(xfit,yfit,col="blue",lwd=2)
dev.off()

mean(cars_mpg)
median(cars_mpg)
names(sort(-table(cars_mpg)))[1]#mode function

install.packages("nortest")
library(nortest)
ad.test(cars_mpg)

lillie.test(cars_mpg)


