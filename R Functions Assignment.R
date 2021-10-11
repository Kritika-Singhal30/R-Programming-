#1.Create function for sum of two objects.

my_a=function(a,b){   #function define kar diya hai 
  result=a+b   #return result of the function
print(result)}
my_a(5,3)  #giving the values of 2 objects


#2. Create function for Subtract of two objects.
#similar to additon of 2 objects
my_subtract=function(a,b){
  result=a-b
print(result)}
my_subtract(10,4)


#3.Create function for multiply of two objects.

my_multiply=function(a,b){
  result=a*b
  print(result)
}
my_multiply(5,2)


#4.Create a function for (A^3)+(B^2)-(C^2).

my_fun=function(A,B,C){
  result=(A^3)+(B^2)-(C^2)
print(result)
}
my_fun(2,3,4)

#ERROR
#5.Create a function for print First name and Last name of user with Hello massage.

my_name=function(first_name,last_name){
cat("Hello"+first_name+" "+last_name)
}
my_name("kritika","singhal") 


#6. Create a function to get the range of the vector. Hint (max-min).

my_range=function(x){
  result=range(x,na.rm=FALSE)
}
x=c(2,3,4,6,7,8)

#other way
x=c(2,3,4,5,6,8)
range(x)


#7. Create a function for getting square root of any number. Hint ( sqrt(x) ).

x=function(a=4){
  result=as.numeric(sqrt(x))
  print(result)
}

x=fucntion(n){
n+1
}
x(16)


#other way 
x1<-16
sqrt(x1)

#8.Create a function for identify the number of characters in string.Hint (nchar(x)).)

x=c("hello R Program")  #it counts space as well in characters
nchar(x)