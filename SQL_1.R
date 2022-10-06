install.packages("sqldf")
install.packages("readr")
library(sqldf)
library(readr)
table1<-read_csv("G:\\table1.csv")
table2<-read_csv("G:\\table2.csv")
table3<-read_csv("G:\\table3.csv")
View(table1)
View(table2)
View(table3)
sqldf("SELECT * FROM table1 UNION SELECT * FROM table2")
sqldf("SELECT * FROM table1 UNION ALL SELECT * FROM table2")
sqldf("SELECT * FROM table1 INTERSECT SELECT * FROM table2")
sqldf("SELECT * FROM table1 EXCEPT SELECT * FROM table2")
sqldf("SELECT table1.Name,table3.College FROM table1 INNER JOIN table3 ON table1.Id=table3.Id")
sqldf("SELECT table1.Name,table3.College FROM table1 FULL OUTER JOIN table3 ON table1.Id=table3.Id")
sqldf("SELECT table1.Name,table3.College FROM table1 LEFT OUTER JOIN table3 ON table1.Id=table3.Id")
sqldf("SELECT table1.Name,table3.College FROM table1 RIGHT OUTER JOIN table3 ON table1.Id=table3.Id")

library("sqldf")
library(readr)
EmpSalary1 <- read_csv("G:/EmpSalary.csv")
View(EmpSalary)

sqldf("SELECT
      Department,
      SUM(Salary) as Salary
      FROM EmpSalary1
      GROUP BY Department
      ")

sqldf("SELECT
      Department,
      Category,
      SUM(Salary) as Salary
      FROM EmpSalary1
      GROUP BY Department, Category")

sqldf("SELECT
      Department,
      SUM(Salary) as Salary
      FROM EmpSalary1
      GROUP BY Department
      HAVING SUM(salary) = 16000")

sqldf("SELECT
      Department,
      Category,
      SUM(Salary) as Salary
      FROM EmpSalary1
      GROUP BY Department, Category
      HAVING SUM(salary) = 8000")
