#EXAMPLE

x <- 5
y <- 10
z <- x + y

print(z)


#STARTING OFF

x <- 10
y <- "Hello"
z <- TRUE
print(x) #5
print(y) #Hello
print(z) #TRUE



#Variable naming rules
var1 <- 5
var.name <- 100
# INVALID!!! No numbers or special characters allowed
# _var <- 10
# 2var <- 20

V1 <- 100
v1 <- 200



#Assignment 
a <- 30
b = 17
20 -> c
assign("d",21)
#Print all
print(a)
print(b)
print(c)
print(d)

#Dynamic Typing
x <- 10
print(x)
x <- "Sanjeev Mewalal Dwivedi" #Overwriting x
print(x)

#Comments
x = 10
if(FALSE)
{
    #This is a multi-line statement
    #This won't execute
    x <- 5 + 10
}
print(x)



#Conditional Statements
x <- 10
if(x<-5)
{
   print("x is greater than 5")
} else {
   print("x is less than or equal to 5")
}

for (i in 1:9)
    print(i) 

count <- 1
while(count <= 3){
    print(paste("Count is ",count))
    count += 1
}


square <- function(x){ //R supports function with default value 
    return (x*x)
}
print(square(17))

#Using break in loop
for (i in 1:10) {
    if(i == 6) {
        break
      }
     print(i)
   }

for(i in 1:5)  {
   if(i == 3) {
     next  #continue of C
    }
   print(i)

#Invalid 
if <- 10
TRUE <- 5
function <- "test"




### OPERATORS

# ARITHMETIC
a <- 11
b <- 7
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a^b)
print(a%%b)   #Remainder
print(a%/%b)  #Quotient

# RELATIONAL
print(a == b)
print(a != b)
print(a > b)
print(a < b)
print(a <= b)
print(a >= b)

# LOGICAL
l <- TRUE
m <- FALSE
print(l & m)
print(l | m)
print(!m)
print(l && m)   # Element-Wise AND (Stops at first FALSE)
print(l || m)   # Element-Wise OR (Stops at first TRUE)

#Assignment 
a <- 51
b = 17
34 -> c
#Print all
print(a)
print(b)
print(c)

#Miscellaneous
seq <- 1:11
print(seq)
print(3 %in% c(1,2,3))  #TRUE 
m1 <- matrix(1:4 , nrow = 2)
m2 <- diag(2)
print(m2 %*% m1)
A <- matrix(NA, nrow = 3, ncol = 4) #Matrix Initialisation with NA

# -------------------------------------------------

num <- 10.11
inte <- 5L
chara <- "R PROG"
boole <- FALSE
compl <- 17+12i
print(class(num))
print(class(inte))
print(class(chara))
print(class(boole))
print(class(compl))

n <- NULL
no <- NA
f <- inf
na <- NaN
print(n)
print(no)
print(f)
print(na)

//Only to tell that R keeps variables in memory and 
//only erased when removed or runtime closed
#  X <- 100
#  print(X)   # 100
--------
#  rm(X) # Remove X
#  print(X)   # Error: object 'X' not found
--------
# Session 1
#  h <- "Hello"
#  print(h) # [1] "Hello"


# Vector
vec <- c(1,2,3,5,6,9,12)
print(vec)

#List
lst <- list(17,"K",TRUE)

#Matrix
mat <- 

#Data Frame
df <- data.frame(name=c("Kunal","Sanjeev"),age=c(21,44))
print(df)

#Factor
fac <- factor(c("J","O","E","J"))
print(fac)

grades <- factor(c("A", "B", "D", "A", "B", "D", "B"),
                 levels = c("A", "B", "C", "D"))
print(grades)

table(grades)
