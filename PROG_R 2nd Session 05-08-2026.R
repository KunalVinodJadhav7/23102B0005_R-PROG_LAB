
# LECTURE 7 - BASIC OPERATIONS IN R

#  ASSIGNMENT OPERATORS 

# <- and = are assignment operators

x <- 20
print(x)

x = 20
print(x)

y = x * 2
print(y)

z = x + y
print(z)


#  ASSIGNMENT OF NUMBERS AND CHARACTERS 

x <- 20
print(x)

x = 20
print(x)

x = "apple"
print(x)

x <- "apple"
print(x)

x = 'apple'
print(x)

x <- 'apple'
print(x)


#  NUMBERS AND CHARACTERS 

x = 20

print(is.numeric(x))
print(is.character(x))
print(is.logical(x))

y = "apple"

print(is.character(y))
print(is.numeric(y))
print(is.logical(y))


#  TYPE CONVERSION 

# Converting a number into a character

x = 20

print(is.numeric(x))

y = as.character(x)

print(is.numeric(y))
print(is.character(y))
print(y)


# Converting a character into a number

y = "apple"

print(is.numeric(y))
print(is.character(y))

z = as.numeric(y)

print(is.numeric(z))
print(is.character(z))
print(z)


# Note:
# as.numeric("apple") produces NA and a warning because
# "apple" cannot be converted into a number.


#  COMMENTS 

# The # symbol is used to write comments.

# This is a comment.

# x <- 20


#  CASE SENSITIVITY 

X <- 20
x <- 20

print(X)
print(x)

# X and x are different variables.


#  DATA VECTORS 

# Multiple values can be combined using c()

x <- c(1, 2, 3, 4, 5)
print(x)

Y = c(-2, -3, -5, 9)
print(Y)

# Incorrect:
# Y = -2,-3,-5,9
# Y = (-2,-3,-5,9)


#  MODE 

x = 6
print(x)
print(mode(x))

y = "apple"
print(y)
print(mode(y))


# Different modes

x = TRUE
print(mode(x))

x = 6
print(mode(x))

x = 2 + 3i
print(mode(x))

x = "apple"
print(mode(x))


#  STORAGE MODE 

x = 6
print(storage.mode(x))

x = TRUE
print(storage.mode(x))

x = "apple"
print(storage.mode(x))


#  NUMERIC, LOGICAL AND CHARACTER 

x <- 20

print(is.numeric(x))
print(is.character(x))
print(is.logical(x))

y <- "apple"

print(is.numeric(y))
print(is.character(y))
print(is.logical(y))

z <- TRUE

print(is.numeric(z))
print(is.character(z))
print(is.logical(z))


#  INFINITY 

print(3 / 0)

print(5 + Inf)

x = 5 + Inf

print(is.finite(x))
print(is.infinite(x))



# LECTURE 8 - R AS A CALCULATOR



#  BASIC ARITHMETIC 

print(2 + 3)
print(2 * 3)
print(2 - 3)
print(3 / 2)
print(2 * 3 - 4 + 5 / 6)


#  ORDER OF OPERATIONS 

# BODMAS:
# Brackets
# Orders / Powers
# Division
# Multiplication
# Addition
# Subtraction

print((2 + 3) * 5 + 5 - 10)

print((((2 + 3) * 5 + 5) - 10) / 2)


#  BLANK SPACES 

# Blank spaces have no effect on calculations.

print(2 + 5)
print(2+5)
print(2 +5)
print(2+ 5)


#  VECTOR OPERATIONS WITH SCALARS 

# Addition

print(c(2, 3, 5, 7) + 10)

# Subtraction

print(c(12, 13, 15, 17) - 10)

# Multiplication

print(c(2, 3, 5, 7) * 10)

# Division

print(c(12, 13, 15, 17) / 10)

# Power

print(c(2, 3, 5, 7) ^ 3)

# Integer division

print(c(2, 3, 5, 7) %/% 10)

# Modulo

print(c(2, 3, 5, 7) %% 10)



# LECTURE 9 - CALCULATIONS WITH DATA VECTORS



#  ADDITION 

print(c(2, 3, 5, 7) + c(-2, -3, -5, 8))

# Vector recycling

print(c(2, 3, 5, 7) + c(8, 9))

# Warning: longer vector length is not a multiple
# of shorter vector length

print(c(2, 3, 5, 7) + c(8, 9, 10))


#  SUBTRACTION 

print(c(2, 3, 5, 7) - c(-2, -3, -5, 8))

# Vector recycling

print(c(12, 13, 15, 17) - c(8, 9))

# Warning

print(c(12, 13, 15, 17) - c(8, 9, 10))


#  MULTIPLICATION 

print(c(2, 3, 5, 7) * c(-2, -3, -5, 8))

# Vector recycling

print(c(2, 3, 5, 7) * c(8, 9))

# Warning

print(c(2, 3, 5, 7) * c(8, 9, 10))


#  DIVISION 

print(c(24, 20, 8, 16) / c(3, 4, 2, 8))

# Vector recycling

print(c(24, 20, 8, 16) / c(4, 2))

# Warning

print(c(24, 20, 8, 16) / c(4, 2, 8))



# LECTURE 10 - POWER, INTEGER AND MODULO OPERATIONS



#  POWER OPERATOR 

print(2 ^ 3)
print(2 ** 3)

print(2 ^ 0.5)
print(2 ** 0.5)

print(2 ^ -0.5)


#  POWER WITH A DATA VECTOR 

print(c(2, 3, 5, 7) ^ 2)


#  POWER WITH TWO VECTORS 

# Vector recycling

print(c(2, 3, 5, 7) ^ c(2, 3))

print(c(1, 2, 3, 4, 5, 6) ^ c(2, 3, 4))

# Warning: longer vector length is not a multiple
# of shorter vector length

print(c(2, 3, 5, 7) ^ c(2, 3, 4))


#  INTEGER DIVISION 

# %/% performs integer division.
# The fractional part is discarded.

print(2 %/% 2)
print(5 %/% 2)
print(7 %/% 3)


# Integer division with a data vector

print(c(2, 3, 5, 7) %/% 2)


# Integer division with two vectors

print(c(2, 3, 5, 7) %/% c(2, 3))

# Warning

print(c(2, 3, 5) %/% c(2, 3))


#  MODULO DIVISION 

# %% gives the remainder after division.

print(2 %% 2)
print(3 %% 2)
print(7 %% 3)
print(7 %% 4)


# Modulo with a data vector

print(c(2, 3, 5, 7) %% 2)


# Modulo with two vectors

print(c(2, 3, 5, 7) %% c(2, 3))

# Warning

print(c(2, 3, 5) %% c(2, 3))



# LECTURE 11 - BUILT-IN FUNCTIONS AND ASSIGNMENTS



#  MAXIMUM 

print(max(1.2, 3.4, -7.8))
print(max(c(1.2, 3.4, -7.8)))


#  MINIMUM 

print(min(1.2, 3.4, -7.8))
print(min(c(1.2, 3.4, -7.8)))


#  MEAN 

# For multiple values, use c()

print(mean(c(2, 3, 4))


#  SUM 

print(sum(c(1.2, 3.4, -7.8)))
print(sum(c(2, 3, 5, 7)))


#  PRODUCT 

print(prod(c(1.2, 3.4, -7.8)))
print(prod(c(2, 3, 5, 7)))


#  ABSOLUTE VALUE 

print(abs(-4))
print(abs(c(-10, -5, 2, -7)))


#  SQUARE ROOT 

print(sqrt(4))
print(sqrt(c(4, 9, 16, 25)))


#  ROUNDING 

print(round(1.23))
print(round(1.83))

print(round(c(2.345, 4.678, 8.912), 2))


#  FLOOR AND CEILING 

print(floor(1.83))
print(ceiling(1.23))

print(floor(c(2.9, 5.7, 8.3)))
print(ceiling(c(2.1, 5.2, 8.8)))


#  LOGARITHMS 

# Natural logarithm - base e

print(log(10))
print(log(exp(1)))
print(log(c(1, 2, 5, 10)))

# Common logarithm - base 10

print(log10(10))
print(log10(100))
print(log10(c(1, 10, 100, 1000)))

# Logarithm - base 2

print(log2(2))
print(log2(4))
print(log2(8))
print(log2(c(2, 4, 8, 16)))


#  EXPONENTIAL FUNCTION 

print(exp(1))
print(exp(2))
print(exp(c(1, 2, 3)))


#  TRIGONOMETRIC FUNCTIONS 

print(sin(0))
print(cos(0))
print(tan(0))

print(asin(0))
print(acos(1))
print(atan(0))


#  HYPERBOLIC FUNCTIONS 

print(sinh(0))
print(cosh(0))
print(tanh(0))

print(asinh(0))
print(acosh(1))
print(atanh(0))



# ADDITIONAL VECTOR OPERATIONS



# Addition

print(c(2, 3, 5, 7) + c(-2, -3, -5, 9))
print(c(2, 3, 5, 7) + c(8, 9))
print(c(2, 3, 5, 7) + c(8, 9, 10))


# Subtraction

print(c(2, 3, 5, 7) - c(-2, -3, -5, 9))
print(c(12, 13, 15, 17) - c(8, 9))
print(c(2, 3, 5, 7) - c(8, 9, 10))


# Multiplication

print(c(2, 3, 5, 7) * c(-2, -3, -5, 9))
print(c(2, 3, 5, 7) * c(8, 9))
print(c(2, 3, 5, 7) * c(8, 9, 10))


# Division

print(c(24, 20, 8, 16) / c(3, 4, 2, 8))
print(c(24, 20, 8, 16) / c(4, 2))
print(c(24, 20, 8, 16) / c(4, 2, 8))



# SIMPLE CALCULATOR


a = 2
b = 3

print(paste("First Number =", a))
print(paste("Second Number =", b))

print(paste("Addition =", a + b))
print(paste("Subtraction =", a - b))
print(paste("Multiplication =", a * b))
print(paste("Division =", a / b))
print(paste("Integer Division =", a %/% b))
print(paste("Modulo Division =", a %% b))
print(paste("Exponentiation =", a ^ b))



# STATISTICAL FUNCTIONS


values <- c(1.2, 3.4, -7.8)

print(max(values))
print(min(values))
print(mean(values))
print(sum(values))
print(prod(values))



# COMBINED EXAMPLE


x <- c(4, 9, 16, 25)

print(abs(x))
print(sqrt(x))
print(sum(x))
print(prod(x))
print(log(x))
print(log10(x))
print(exp(c(1, 2)))



# ASSIGNMENTS WITH VECTORS


x1 = c(1, 2, 3, 4)
print(x1)

x2 = x1 ^ 2
print(x2)



# CALCULATIONS WITH SCALAR, VECTOR AND FUNCTIONS


print(
  c(1, 2, 3, 4) +
    sum(c(1, 2, 3, 4)) * prod(c(1, 2))
)

print(
  abs(
    c(1, 2, 3, 4) -
      sum(c(1, 2, 3, 4)) * prod(c(1, 2))
  )
)



# IMPORTANT FUNCTIONS


# c()             combines values into a vector
# mode()          gives the mode of an object
# storage.mode()  gives the storage mode
#
# is.numeric()    checks whether value is numeric
# is.character()  checks whether value is character
# is.logical()    checks whether value is logical
#
# as.numeric()    converts to numeric
# as.character()  converts to character
#
# is.finite()     checks whether value is finite
# is.infinite()   checks whether value is infinite
#
# max()           maximum value
# min()           minimum value
# mean()          arithmetic mean
# abs()           absolute value
# sqrt()          square root
# round()         round off
# floor()         round down
# ceiling()       round up
# sum()           sum
# prod()          product
#
# log()           natural logarithm
# log10()         logarithm with base 10
# log2()          logarithm with base 2
# exp()           exponential function
#
# sin()           sine
# cos()           cosine
# tan()           tangent
# asin()          inverse sine
# acos()          inverse cosine
# atan()          inverse tangent
#
# sinh()          hyperbolic sine
# cosh()          hyperbolic cosine
# tanh()          hyperbolic tangent
# asinh()         inverse hyperbolic sine
# acosh()         inverse hyperbolic cosine
# atanh()         inverse hyperbolic tangent



# IMPORTANT OPERATORS


# <-      assignment
# =       assignment
# +       addition
# -       subtraction
# *       multiplication
# /       division
# ^       power
# **      power
# %/%     integer division
# %%      modulo division
# #       comment