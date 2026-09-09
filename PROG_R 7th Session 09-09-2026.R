# OPERATIONS ON LISTS, VECTORS, FACTORS, AND FORMATTING

# 1. CREATING AND MERGING LISTS
list1 <- list(1,2,3)
list2 <- list("water","juice","lemonade")
list1
list2
list12 <- c(list1,list2)
list12

# 2. CONVERTING LISTS TO VECTORS
unlist(list1)
unlist(list2)
mode(list1)
mode(unlist(list1))

# 3. APPENDING TO LISTS
append(list1,100)
append(list2,"coffee")
append(list1,100,after=2)
append(list2,"coffee",after=2)

# 4. REMOVING ELEMENTS
list1[-2]
list2[-1]

# 5. EXTRACTING ELEMENTS
list1 <- list(1,2,3,4,5,6)
list2 <- list("water","juice","lemonade","tea","coffee","milk")
list1[2:4]
list2[2:4]
list1[c(1,3,5)]
list2[c(1,3,5)]

# 6. VECTOR INDEXING
x <- 1:10
x[x>5]
x[x%%2==0]
x[x%%2==1]

# 7. MISSING VALUES
x <- 1:10
x[5] <- NA
x
y <- x[!is.na(x)]
y
mean(x)
mean(y)

# 8. NEGATIVE INDEXING
x <- 1:10
x[-(1:5)]
x[6:10]

# 9. NAMED VECTORS
x <- c(water=1,juice=2,lemonade=3)
names(x)
x["juice"]

# 10. NAMES WITH LISTS
z <- list(a1=1,a2="c",a3=1:3)
names(z)
names(z)[3] <- "c2"
z

# 11. EMPTY INDEX
x <- 1:10
x[]

# 12. MIXED-MODE LIST
ab <- list(1,2,3,"X","Y","Z")
dim(ab) <- c(2,3)
print(ab)
mode(ab)

# 13. MATRIX FROM LIST
ab <- list(1,2,3,"X","Y","Z")
dim(ab) <- c(2,3)
print(ab)
mode(ab)

# 14. FACTORS
y <- c(1,4,3,5,4,2,4)
possible.dieface <- c(1,2,3,4,5,6)
labels.dieface <- c("one","two","three","four","five","six")
facy <- factor(y,levels=possible.dieface,labels=labels.dieface)
facy
levels(facy)

# 15. factor() FUNCTION
factor(x)
factor(x,levels)
factor(x,levels=...,labels=...)
factor(x,exclude=NA)

# 16. VECTOR TO FACTOR
x <- c(3,4,5,6,1,2,3,3,4,4,5,6)
y <- as.factor(x)
y
levels(y)

# 17. CHARACTER VECTOR TO FACTOR
x <- factor(c("lemonade","lemonade","juice","lemonade","water"))
x
levels(x)

# 18. CLASS OF OBJECT
class(9)
class("9")
class(print)
x <- matrix(1:4,nrow=2,ncol=2)
class(x)

# 19. unclass()
brands <- c("A","A","B","B","B","B","C")
brands_fac <- factor(brands)
brands_fac
unclass(brands_fac)
levels(brands_fac)

# 20. FACTOR CODES FOR INDEXING
colours <- c("blue","green","red")
colours[unclass(brands_fac)]

# 21. FACTOR LEVEL ORDERING
x <- factor(c("lemonade","lemonade","juice","lemonade","water"))
unclass(x)
levels(x)

# 22. CUSTOM FACTOR LEVEL ORDER
x <- factor(
  c("lemonade","lemonade","juice","lemonade","water"),
  levels=c("water","juice","lemonade")
)
x
levels(x)
unclass(x)

# 23. ORDERED FACTORS
income <- ordered(
  c("high","high","low","medium","medium"),
  levels=c("low","medium","high")
)
income
levels(income)
unclass(income)

# 24. PRINTING
print(sqrt(2))
print(sqrt(2),digits=5)
print(sqrt(2),digits=10)

# 25. PRINT CHARACTER VALUES
print("apple")
print(c("apple","banana"))
print(c("apple","banana",6,10))

# 26. FORMATTING OBJECTS
format(0.5,digits=10,nsmall=15)

# 27. FORMATTING STRINGS
x <- c("A","BB","CCC","DDDD")
format(x,width=7,justify="centre")
format(x,width=7,justify="left")
format(x,width=7,justify="right")
format(x,width=7,justify="none")

# 28. FORMATTING MATRICES
x <- matrix(1:6,nrow=3,ncol=2,byrow=TRUE)
print(x)

# 29. FORMATTING LARGE NUMBERS
format(1234567,big.mark=",")
format(12345678,big.mark=",")
format(123456789,big.mark=",")
format(123456789,big.mark=" ")
