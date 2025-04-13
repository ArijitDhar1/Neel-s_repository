#1a
install.packages("dplyr")
library(dplyr)
DATA1<-data.frame(Emp_ID=c(1,2,3,4,5),
                  Name=c("John Doe","Jane Smith","Emily Davis","Michael Brown","William Johnson"),
                  Department=c("HR","IT","Marketing","Finance","HR"),
                  Position=c("Manager","Software Engineer","Analyst","Assistant","Assistant"),
                  Age=c(45,30,35,50,25),
                  Salary=c(120000,90000,85000,95000,60000))

print(DATA1)

#1b
Age<-pull(DATA1,Age)
print(Age)
Experience<-ifelse(Age>40,"Senior",ifelse(Age>30,"MId-Level",ifelse(Age>20,"Junior","Fresher")))
print(Experience)
DATA1<-cbind(DATA1,Experience)
print(DATA1)


#2
Salary<-as.numeric(readline(prompt="Enter your salary: "))

if(Salary>100000)
{print("High Earner")
  }else if(Salary>=70000&&Salary<100000)
  {print("Medium Earner")}else{print("Low Earner")}


#3
Sal<-pull(DATA1,Salary)
print(Sal)
tot=0
j=0
Avg=0
for(x in Sal)
{tot=tot+x
j=j+1
Avg=tot/j}
print(Avg)
print(mean(DATA1$Salary))


#4
s=0

for(i in c(1:40))
{if(i%%2!=0)
  {s=s+i}}
print(s)

y=0
for(a in c(40:80))
{if(a%%2!=0)
{y=y+a}}
print(y)
    






