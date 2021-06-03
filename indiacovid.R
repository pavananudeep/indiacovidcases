data<-read.csv("indiacovid.csv")
days<-as.numeric(data$Days)
data$Cases[2]<-"89129"
cases<-as.numeric(data$Cases)
plot(days,cases,xlab="Days",ylab="Cases",main="India Covid Cases")
#linear regression
#y=b0+b1x
b1<-sum((days-mean(days))*(cases-mean(cases)))/sum((days-mean(days))*(days-mean(days)))
b0<-(sum(cases)-b1*sum(days))/length(days)
cases_new<-b0+b1*days
plot(days,cases,xlab="Days",ylab="Cases",main="India Covid Cases regression")
lines(days,cases_new,type="l")
