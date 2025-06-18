#functions
PrintHelloWorld<-function(){
  print("Hello world")
}
#call the function
PrintHelloWorld()

#functions with arguments
PrintStudentName<-function(sname){
  print(sname)
}
#call the function by passing the relevant argument
PrintStudentName("chanuka")

#you can pass any number of parameters

#return value using a function
CalculateNumbers<-function(x,y){
  return(x+y)
}
CalculateNumbers(2,3)

#data structures
#vectors
#we can create vectors by using c()-function
#vectors can contain items of the same type

fruits<-c("apple","banana","orange")
numbers<-c(1,2,3,4,5,6)

print(fruits)
print(numbers)

#we can access a value inside a vector using the index indexes are starting with 1
fruits[1]
fruits[2]
fruits[3]

#sort a vector
numbers<-c(2,1,5,3,4)
sort(numbers)

#print the vector using a loop
for(f in fruits){
  print(f)
}
#access multiple values in a vector
fruits[c(1,3)]

fruits[c(-1)] #use negative values to access all items except the ones specified

#change an item inside a vector
fruits[1]<-"lemon"
fruits

#lists
myList<-list(1,2,"hello",3.5)
for(f in myList){
  print(f)
}
myList[1] #access a list item
myList[1]<-"updated"
for(f in myList){
  print(f)
}

#Matrices
m1<-matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 2) 
#warning size of the matrix should equal to ncols x nrows
m1
m2<-matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3)
m2

#access an element inside a matrix
m2[1,2] #first row second column
m2[2,3] #second row third column

#data frames - inside a data frame we are going to have columns with unique names
#Each column should contain same number of data

empData<-data.frame(
  empId=c(1:5),
  empName=c("Ann","Mike","Jhon","Lisa","Smith"),
  salary=c(1000,1200,800,2500,1100)
)
print(empData)
#get summary of data frame
summary(empData)


#extract data from data frame
empList<-data.frame(empData$empName,empData$salary)
print(empList)
#extract first two rows
empList<-empData[1:2,]
print(empList)
empList<-empData[1:4,] #get first 4 rows
print(empList)
empList<-empData[c(3,5),] #get 3rd row and 5th row
print(empList)
empList<-empData[c(3,5),c(1,3)] #get 3rd row and 5th row including 1st and 3rd columns
print(empList)

#add a new column
empData$dept<-c("IT","Fin","Admin","IT","HR")
empData
result<-data.frame(empData,empData$salary<1000)
result

#emp who has salary less than 1000
result<-subset(empData,empData$salary<1000)
result
print(max(empData$salary)) #max salary amount
print(min(empData$salary))# min salary amount

#emp who has salary of 1000
result<-subset(empData,empData$salary==1000) 
result
#emp who work in HR dept
result<-subset(empData,empData$dept=="HR")
result
