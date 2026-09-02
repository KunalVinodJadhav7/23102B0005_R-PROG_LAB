
# Missing Data Handling


x = NA # Assign missing value NA to variable
x
is.na(x) # Check if the value is missing

x = c(11, NA, 13, NA) # Vector with missing values
is.na(x) # Returns logical vector identifying NAs

mean(x) # Returns NA because calculation includes missing values
mean(x, na.rm = TRUE) # Computes mean after removing NA values

x = c(11, NA, 13, NA) 
which(is.na(x)) # Identifies the positions of missing values

x = c(11, NA, 13, NA) 
sum(is.na(x)) # Counts the total number of missing values

x = c(11, NA, 13, NA) 
complete.cases(x) # Returns TRUE for non-missing elements and FALSE for NAs

x = c(11, NA, 13, NA) 
y = na.omit(x) # Listwise deletion of missing values
y

y = na.omit(x) 
mean(y) # Computes mean on cleaned data



# Conditional Executions: If and If-Else


x = 5 
if (x > 4) x * 3 # Executes multiplication if condition is TRUE

x = 3
if (x > 4) x * 3 # No response because condition is FALSE

x = 5 
if (x > 4) {x * 3} # Using curly braces for conditional evaluation

x = 6
if (x > 3) {
  print("The value is more than 3")
}

x = 2
if (x > 3) {
  print("The value is more than 3") # No output because condition is FALSE
}

x = 5
if (x == 3) { x = x - 1 } else { x = 2 * x } # Executes else branch since x != 3
x

x = 3
if (x == 3) { x = x - 1 } else { x = 2 * x } # Executes if branch since x == 3
x

x = 6
if (x > 3) {
  print("The value is more than 3")
} else {
  print("The value is less than 3")
}

x = 2
if (x > 3) {
  print("The value is more than 3")
} else {
  print("The value is less than 3")
}



# Nested If-Else and ifelse


x = 5
if (x == 3) { 
  x = x - 1 
} else if (x < 3) { 
  x = x + 5 
} else { 
  x = 2 * x 
} 
x

x = 2
if (x == 3) { 
  x = x - 1 
} else if (x < 3) { 
  x = x + 5 
} else { 
  x = 2 * x 
} 
x

x = 3
if (x == 3) { 
  x = x - 1 
} else if (x < 3) { 
  x = x + 5 
} else { 
  x = 2 * x 
} 
x

x = 1:10 
x 
ifelse(x < 6, x^2, x + 1) # Vectorized conditional execution

x = c(7, 9, 8, 4)
ifelse(x %% 2 == 0, "even number", "odd number") # Vectorized modulo check



# Switch and Which Commands


switch(2, "apple", "banana", "orange") # Selects the 2nd argument
switch(1, "apple", "banana", "orange") # Selects the 1st argument

switch("colour", "colour" = "blue", "gender" = "male", "volume" = 50) # Matches string key
switch("volume", "colour" = "blue", "gender" = "male", "volume" = 50)

switch(4, "apple", "banana", "orange") # Returns no outcome (out of bounds without default)
switch("size", "colour" = "blue", "gender" = "male", "volume" = 50) # No match

x = c(10, 15, 8, 14, 6, 12)
x
which(x == 14) # Index where element equals 14
which(x != 12) # Indices where element is not 12
which(x > 10)  # Indices where element is greater than 10

x = matrix(nrow = 3, ncol = 3, data = 1:9)
x
which.min(x) # Finds linear index of the minimum value
which.max(x) # Finds linear index of the maximum value

x = matrix(nrow = 3, ncol = 3, data = 1:9)
x
which(x %% 2 == 1) # Linear indices of odd numbers
which(x %% 2 == 1, arr.ind = TRUE) # Row and column indices of odd numbers