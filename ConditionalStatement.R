#Decision Making Statements(if,else )condition
#1
if(iris$Sepal.Length[1]>4){
  print(" The Sepal length is greater hten 4 ")
}

#2
print(iris)

#3
if(iris$Sepal.Width[2]>3) #3rd column 
{
  print("The Sepal Width is greater then 3 ")
}

#4
#else all time must be write wher the if statement becket close
if(iris$Sepal.Length[1]<4){
  print(" The Sepal length is less hten 4 ")
}else{
  print(" The Sepal length is greater hten 4 ")
}



# For loop 
vec1 <- 1:9
print(vec1)

for(i in vec1){
  print(i+5)
}


#While loop (Mainly use in condition)
i=1
while(i<5){
  print(i+10)
  i=i+1
}


#User Defined function (invoked perform specific task)
#1

add<- function(x,y){
  sum=x+y
  print(sum)
}

add(3,5)

#2 

showUser <- function(){
  print("Hello User")
  print("Welcome to the R language")
  print(" Really R is a nice language ")
  
}

showUser()
