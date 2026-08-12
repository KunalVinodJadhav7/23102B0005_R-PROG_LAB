
# Assignments
x1 <- c(1,2,3,4)
x1
x2 <- x1^2
x2
c(1,2,3,4) + sum(c(1,2,3,4)) * prod(c(1,2))
abs(c(1,2,3,4) - sum(c(1,2,3,4)) * prod(c(1,2)))

# Creating matrices
x <- matrix(data=c(1,2,3,4,5,6,7,8), nrow=4, ncol=2)
x
x <- matrix(data=c(1,2,3,4,5,6,7,8), nrow=4, ncol=2, byrow=FALSE)
x
y <- matrix(data=c(1,2,3,4,5,6,7,8), nrow=4, ncol=2, byrow=TRUE)
y

# Accessing matrix elements
x[3,2]
y[3,]
y[,2]
y[4:5,2:3]
y[c(1,4),c(1,3)]

# Matrix properties
dim(x)
nrow(x)
ncol(x)
mode(x)
attributes(x)
is.matrix(x)
as.matrix(x)
# help("matrix")

# Renaming rows and columns
x <- matrix(data=1:12, nrow=4, ncol=3)
rownames(x) <- c("r1","r2","r3","r4")
colnames(x) <- c("c1","c2","c3")
x
rownames(x)
colnames(x)

# Assigning the same value to all elements
x <- matrix(data=2, nrow=4, ncol=2)
x

# Diagonal and identity matrices
d <- diag(1, nrow=3, ncol=3)
d
d <- diag(5, nrow=3, ncol=3)
d

# Transpose
x <- matrix(data=1:8, nrow=4, ncol=2, byrow=TRUE)
x
t(x)

# Row and column sums
x <- matrix(data=1:8, nrow=4, ncol=2)
x
rowSums(x)
colSums(x)

# Row and column means
rowMeans(x)
colMeans(x)

# Accessing rows, columns, and submatrices
x <- matrix(data=1:15, nrow=5, ncol=3, byrow=TRUE)
x
x[3,]
x[,2]
x[4:5,2:3]
x[c(1,4),c(1,3)]

# Matrix operations with scalars
x <- matrix(data=1:8, nrow=4, ncol=2, byrow=TRUE)
x
x + 5
x - 5
5 * x
x / 2

# Addition and subtraction of matrices
x <- matrix(data=1:8, nrow=4, ncol=2, byrow=TRUE)
y <- matrix(data=11:18, nrow=4, ncol=2, byrow=TRUE)
x
y
x + y
x - y
4 * x
x + 4 * x
4 * x - x

# Matrix multiplication
x <- matrix(data=1:8, nrow=4, ncol=2, byrow=TRUE)
y <- matrix(data=11:18, nrow=2, ncol=4, byrow=TRUE)
x %*% y
y %*% x

# X'X and XX'
x <- matrix(data=1:8, nrow=4, ncol=2, byrow=TRUE)
t(x)
t(x) %*% x
x %*% t(x)

# Cross product
crossprod(x)
t(x) %*% x

# Combining matrices
x <- matrix(data=1:6, nrow=3, ncol=2, byrow=TRUE)
y <- matrix(data=11:16, nrow=3, ncol=2, byrow=TRUE)
rbind(x,y)
cbind(x,y)

# Inverse of a matrix
y <- matrix(data=c(84,100,100,120), nrow=2, ncol=2, byrow=TRUE)
y
solve(y)
y %*% solve(y)

# Eigenvalues and eigenvectors
eigen_result <- eigen(y)
eigen_result
eigen_result$values
eigen_result$vectors

# Relational operators
8 > 7
7 < 5
7 >= 7
8 <= 8
7 == 7
8 != 9

# Logical operators
TRUE
FALSE
!TRUE
TRUE & FALSE
TRUE | FALSE
xor(TRUE,FALSE)
isTRUE(TRUE)
isFALSE(FALSE)

# Logical variables
x <- 5
Logical1 <- x > 2
Logical1
is.logical(Logical1)
Logical2 <- x < 10
Logical2
is.logical(Logical2)
Logical3 <- x != 5
Logical3
is.logical(Logical3)
Logical4 <- 2 * x > 11
Logical4
is.logical(Logical4)
Logical5 <- 3 * x < 20
Logical5
is.logical(Logical5)

# Comparing vectors
x <- c(1,2,3)
y <- c(4,5,6)
x > y
x < y
x == y
x != y

# Element-wise logical operations
x <- c(1,2,3)
(x > 1) & (x < 3)
(x > 1) | (x < 3)

# Filtering values
x <- 1:6
x
(x > 2) & (x < 5)
x[(x > 2) & (x < 5)]
(x > 2) | (x < 5)
x[(x > 2) | (x < 5)]

# Difference between &, &&, |, and ||
x <- c(8,18)
(x < 10) | (x < 2)
(x < 10) & (x > 2)
(x < 10) || (x < 2)
(x < 10) && (x > 2)

# && and || examine only the first element
x <- 1:6
x
(x > 2) && (x < 5)
(x[1] > 2) & (x[1] < 5)

# Truth table
x <- TRUE
y <- FALSE
x & y
x | y
!x

# Logical values and numbers
0 == FALSE
1 == TRUE

# isTRUE() and isFALSE()
isTRUE(8 < 6)
isTRUE(8 > 6)
isFALSE(5 < 8)
isFALSE(5 > 8)

# Important matrix functions
# matrix() creates a matrix
# dim() gives matrix dimensions
# nrow() gives the number of rows
# ncol() gives the number of columns
# t() gives the transpose
# rowSums() gives row sums
# colSums() gives column sums
# rowMeans() gives row means
# colMeans() gives column means
# diag() creates diagonal or identity matrices
# rbind() combines matrices row-wise
# cbind() combines matrices column-wise
# solve() finds the inverse of a nonsingular square matrix
# eigen() finds eigenvalues and eigenvectors
# crossprod() calculates X'X
# %*% performs matrix multiplication
# * performs element-wise multiplication

# Important logical operators
# > greater than
# >= greater than or equal to
# < less than
# <= less than or equal to
# == equal to
# != not equal to
# ! logical NOT
# & element-wise AND
# && short-circuit AND using the first element
# | element-wise OR
# || short-circuit OR using the first element
# xor() exclusive OR
# isTRUE() checks whether a value is TRUE
# isFALSE() checks whether a value is FALSE