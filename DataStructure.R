#Data Structure 
#Vector , List, Matrix, Array , 

#1.Vector is Homogenic single linear data structure  (single linear data)

vac1 <- c(1,2,3)
vac2 <- C("a", "b", "c", "d")
vac3 <- c(T,F,T,T)
vac4 <- c("Tas","Ni",3,4,5,7,2,4,"Ay")
vac5 <- c(3,2,5,1,T,F)
vac6 <- c("Apple","Orange","Mangos",5,6,8,2,T,F,F,T)
print(vac3)
print(class(vac6))#though vector use only one data type at a time so it change other data type and all values are same datatype 
print(vac6)
print(vac4)
print(class(vac4))
print(vac5)
print(class(vac5))
#Extracting elements from vector 

vac6[1]
vac6[4]
vac6[6]
vac6[19]
vac6[5:9]
vac6[1:10 ]
vac6[ 4:1]


#2.List (They maintain individual data type )
l1 <- list(1,3,"tas",T,F)
print(l1)
print(class(l1))
print(class(l1[[4]]))
print(class(l1[[3]]))
print(l1[[2]])
print(class(l1[[2]]))


#2.1 vector in a list
l2 <- list(c(1,2,3,4),c("T","R","N"),c("Tas","Rah","Mas",3,2,6))
print(l2)
print(class(l2))
print(class(l2[[3]]))
print(class(l2[[1]]))
print(class(l2[[2]][2]))
print(l2[[2]][1])
print(l2[[1]][3])


#3.Matrix (2 dimensional )
m1 <- matrix(c(2,3,4,6,5,3))
print(m1)

m1 <- matrix(c(2,3,4,6,5,3),nrow =2,ncol=3)
print(m1)

m1 <- matrix(c(2,3,4,6,5,3),nrow =3,ncol=2)
print(m1)

m1 <- matrix(c(2,3,4,6,5,3),nrow =2,ncol=3,byrow=T)
print(m1)

m1 <- matrix(c(2,3,4,6,5,3),nrow =3,ncol=3)#Get error cz 3*3=9 but our element is 6
print(m1)


#3.2
m2 <- matrix(c(2,3,45,5,6,7,4))
print(m2)

m2 <- matrix(c(2,3,45,5,6,7,4),nrow =2,ncol=3,byrow=T)#get error cz it is a prime number which here is 7 
print(m2)


# 4. Array (multi dimensional )

av1 <- c(2,3,4,5,6,7)
av2 <- c(6,5,4,3,2,1)

a1 <- array(c(av1,av2),dim = c(2,3,2)) #dim=c(row,column,num of matrix)
print(a1)
print(a1[1,2,1])#a1[row,column,matrix number]

error
a2 <- array(c(av1,av2),dim = c(3,2,2))#Not get expexted output because of syntax writing 
print(a1)
print(a1[2,3,1])

right
a3 <- array(c(av1, av2, av1), dim = c(2,2,3))
print(a3)

a4 <- array(c(av1,av2,av1,av2),dim=c(3,3,2))
print(a4)
print((a4[3,2,2]))


# 5. Factor (use FOR CATEGORICAL values )

color1 <- c("blue","Green","Yellow")
color1 <- as.factor(color1)
print(color1)
print(class(color1))

color2 <- factor(c("Nil","Tas"))
print(color2)

#6 Data Frame 

fruits <- data.frame(fname=c("Apple","Orange","Mango","Banana"),fcost=c(30,40,30,20))
fruits$fname
fruits$fcost
print(fruits)
#View(fruits) #This need to right in console & V in  Capital letter.


# Inbuilt Function in R 
# str(),head(),tail(),table(),min(),max(),mean(),range()

print(View(iris))#iris is a inbuild data frem 
str(iris)#str means structure inbuild functiom (it extract all values)
head(iris) # view needed first record 
head(iris,n=15)

tail(iris) #gless/view last needed values
tail(iris,n=10)

#table(iris) #identify the frequency for categorical column understand the count of categorical column 
table(iris$Species) #categorical column name = species 



# use for arithmetical calculation (min,max,mean,range)


min(iris$Sepal.Length)
min(iris$Sepal.Width)


max(iris$Sepal.Length)
max(iris$Sepal.Width)


mean(iris$Sepal.Length)
mean(iris$Petal.Length)

range(iris$Sepal.Length)
range(iris$Petal.Length)

















#DataFrame 
















