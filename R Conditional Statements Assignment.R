# Q.1  input percentage and get the grading of the same

Percentage=readline("enter Percentage")
 
if(Percentage>=90){
  print("Scored Grade A")
}else if(Percentage>=80){
  print("Scored Grade B")
}else if(Percentage>=70){
  print("Scored Grade C")
}else if(Percentage>=60){
  print("Scored Grade D")
}else if(Percentage>=40){
  print("Scored Grade E")
}else if (Percentage<40){
  print("Sorry Grade F")}


#Q.2 input basic salary of an employee and calculate its Gross salary

salary=as.integer(readline("enter salary")) #here we need to write as.integer as it would otherwise show "non-numeric argument to binary operator" error.
 if(salary<=10000){
  gross_salary=salary+salary*0.2+salary*0.8
  print(gross_salary)
}else if(salary<=20000){
  gross_salary=salary+salary*0.25+salary*0.9
  print(gross_salary)
}else(salary>20000){
  gross_salary=salary+salary*0.3+salary*0.95
  print(gross_salary)}


#Q.3  display the name of the day, based on the value of day, using the switch statement.
#b=readline("input")
d=as.integer(readline("enter value of day"))
 a<-switch(d,
 "monday","tuesday","wednesday","thursday","friday","saturday","sunday")
print(a)

