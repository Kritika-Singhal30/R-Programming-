#1. Print 1:100 number using repeat loop.
x=1
repeat{
  print(x)
  x=x+1
  if(x>100){
    break
  }
}

#2 Print 101 to 110 using repeat loop.
y=101
repeat{
  print(y)
  y=y+1
  if(y>110){
    break
  }
}

#3 Print "Hello World" 5 time using repeat loop.
a=c("Hello World")
cnt=1
repeat{
  print(a)
  cnt=cnt+1
  if(cnt>5){
    break
  }
}
 

#4 Print 10:100 number using while loop.
x=10
while(x<101){
  print(x)
  x=x+1
}


#5 Print "Hello Class" 5 time using while loop.

x=c("hello class")
cnt=1
while(cnt<6){
  print(x)
  cnt=cnt+1
}


#6 Print square of 1 to 10 number using for loop.

x=1
range=1:10
for(x in range)
{
  print(x*x)
  x=x+1
}


#7 Print each fruit name one by one using for loop (apple,banana,mango,kiwi,orange )

a=c("apple","banana","mango","kiwi","orange")
for(x in a){
  print(x)
}