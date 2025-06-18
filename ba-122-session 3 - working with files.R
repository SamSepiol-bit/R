#working with files
#we can import data by using csv or excel files
#when we are going to use excel files we need to install a library
install.packages("xlsx")

#get current working dir
getwd()
#set new working dir
#create a folder in your desktop called rwork then copy and paste the folder path
setwd("C:/Users/hnd.STUDENT/Desktop/rwork") #change back \ into / 

#verify whether package is installed successfully
any(grepl("xlsx",installed.packages())) 
#if you get the result as true means package is installed

#load the library into workspace
library("xlsx")

#read excel data into r
empdata<-read.xlsx("empdata.xlsx",sheetIndex = 1)
empdata

#get max salary
#get min salary
#get list of employees work in IT dept
#get list of employees whose salary < 1000
#get list of employees whose salary >500 and work in IT dept
#get list of employees work in either IT or operations dept

min(empdata$salary)
max(empdata$salary)
itemp<-subset(empdata,empdata$dept=="IT")
thousalary<-subset(empdata,empdata$salary<1000)
itempsal<-subset(empdata,empdata$salary>500 & empdata$dept=="IT")
itoropemp<-subset(empdata,empdata$dept=="IT" | empdata$dept=="Operations")
itorhremp<-subset(empdata,dept %in% c("IT","HR")) #emps working under IT or HR
empsal<-subset(empdata,select = c("empname","salary")) #get empname and salary columns only
notitemp<-subset(empdata,!(dept=="IT")) #emp not under IT dept
#emp joined after 2015
empjoinedafter<-subset(empdata,as.Date(startdate)>as.Date("2015-01-01"))
#emp who has salary between 500 and 1000
salrangeemp<-subset(empdata,empdata$salary>=500 & empdata$salary<=1000)
salrangeemp

itemp
thousalary
itempsal
itoropemp
itorhremp
notitemp
empjoinedafter
#get list of employees who joined on or after 2015
twntyfifteenemp<-subset(empdata,as.Date(empdata$startdate)>as.Date("2015-01-01"))
twntyfifteenemp

mean(empdata$salary) #mean salary - average salary
median(empdata$salary) #median salary - middle value after sort in a dataset

#mode
install.packages("DescTools")
library("DescTools")
Mode(empdata$salary)
empdata #we dont have mode value here
numbers<-c(1,1,1,2,3,4,5) #in this vector mode value is 1
Mode(numbers)

csvdata<-read.csv("empdata.csv")
csvdata
#employee who has max salary
#employee who has min salary

maxemp<-subset(csvdata,csvdata$salary == max(csvdata$salary))
maxemp
#print only name of the employee
maxemp$empname

minemp<-subset(csvdata,csvdata$salary == min(csvdata$salary))
minemp
#print only name of the employee
minemp$empname
