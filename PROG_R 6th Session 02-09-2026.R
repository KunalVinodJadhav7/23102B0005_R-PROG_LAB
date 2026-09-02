
# Sequence Generation and Operators


# Basic colon operator (:) creates integer sequences
1:10        # Sequence from 1 to 10 (increment of 1)
10:1        # Descending sequence from 10 to 1
5:15        # Sequence from 5 to 15
15:5        # Descending sequence from 15 to 5
-1:-10      # Negative descending sequence
-10:-1      # Negative ascending sequence
-5:-15      # Sequence from -5 to -15
-15:-5      # Sequence from -15 to -5

# Floating point and step sequences using colon and seq()
1.23:10     # Sequence starting at 1.23, incrementing by 1 up to max <= 10
1.23:10.54  # Sequence starting at 1.23 up to 10.54
10.54:2.23  # Descending sequence with fractional steps
-1.23:-10   # Negative fractional sequence
-5.23:6     # Sequence crossing from negative to positive
seq(10)     # Equivalent to 1:10
seq(1:10)   # Sequence along the length of the vector 1:10 (equivalent to seq_along)

# Using seq() with from, to, and by arguments
x = 2
seq(1, x, x / 10)     # Sequence from 1 to 2 by steps of 0.2
x = 50
seq(0, x, x / 10)     # Sequence from 0 to 50 by steps of 5

# Vector arithmetic and indexing via sequences
x = seq(1, 50, 1 / 2) # Sequence from 1 to 50 by 0.5
y = 2 * x             # Element-wise multiplication

x = c(9, 8, 7, 6)
ind = seq(along = x)  # Generates sequence 1:4 based on length of x (deprecated, use seq_along)
x[ind[2]]             # Extracts the 2nd element of x (value 8)

# System date and time functions
Sys.time()            # Returns current system time and timezone
Sys.Date()            # Returns current system date


# Dates and Alphabets


# Date sequences
seq(as.Date("2010-01-01"), as.Date("2017-01-01"), by = "years") # Annual sequence
seq(as.Date("2017-01-01"), by = "days", length = 6)             # 6 consecutive days starting Jan 1, 2017
seq(as.Date("2017-01-01"), by = "months", length = 6)           # 6 consecutive months
seq(as.Date("2017-01-01"), by = "years", length = 6)            # 6 consecutive years

startdate = as.Date("2016-1-1")
enddate = as.Date("2017-1-1")
out = seq(enddate, startdate, by = "-1 month")                  # Reverse monthly sequence
print(out)

startdate = as.Date("2022-1-1")
enddate = as.Date("2024-1-1")
out = seq(enddate, startdate, by = "-1 year")                   # Reverse annual sequence
print(out)

startdate = as.Date("2018-1-29")
enddate = as.Date("2018-3-4")
out = seq(enddate, startdate, by = "-1 day" , length = 7)       # 7 days backward from enddate
print(out)

# Built-in character constants for alphabet letters
letters       # Lowercase alphabet ("a" through "z")
letters[1:3]  # First three lowercase letters ("a", "b", "c")
letters[3:1]  # Reversed first three letters ("c", "b", "a")
letters[21:23]# Letters u, v, w
letters[2]    # Second letter ("b")

LETTERS       # Uppercase alphabet ("A" through "Z")
LETTERS[1:3]  # First three uppercase letters
LETTERS[3:1]  # Reversed uppercase
LETTERS[21:23]# Uppercase U, V, W
LETTERS[2]    # Second uppercase letter ("B")


# Replication with rep()


rep(3.5, times = 10)  # Replicates the scalar 3.5 ten times
rep(1:4, 2)           # Replicates the vector 1:4 entirely twice: 1 2 3 4 1 2 3 4

x = 1:4
rep(x, times = 3)     # Repeats the whole vector 3 times
rep(x, each = 3)      # Repeats each element 3 times consecutively: 1 1 1 2 2 2...
rep(1:4, each = 2)    # Each element repeated twice
rep(1:4, each = 2, times = 3) # Each element repeated twice, and the resulting pattern repeated 3 times
rep(1:4, times = 3, each = 2) # Whole vector repeated 3 times, then elements paired/grouped

rep(1:4, 2:5)         # Replicates element 1 twice, element 2 thrice, element 3 four times, element 4 five times

ans = seq(from = 2, to = 8, by = 2) # Sequence: 2, 4, 6, 8
rep(1:4, ans)         # Replicates elements according to vector 'ans' (2, 4, 6, 8 times respectively)

x = matrix(nrow = 2, ncol = 2, data = 1:4, byrow = TRUE)
rep(x, 3)             # Flattens matrix into a vector and replicates it 3 times

rep(c("a", "b", "c"), 2)          # Replicates character vector twice
rep(c("apple", "banana", "cake"), 2)

# Using length.out to cap or expand replicated output
rep(2, length.out = 5)            # Replicates 2 until length reaches 5 (2 2 2 2 2)
rep(2, length = 5)                # Alias for length.out
rep(c(2, 3), length = 5)          # Cycles 2, 3 until length 5 (2 3 2 3 2)
rep(c(2, 3, 4), length = 5)       # Cycles 2, 3, 4 until length 5 (2 3 4 2 3)
rep("apple", length = 5)          # Repeats string to length 5
rep(c("a", "b", "c"), length = 2) # Truncates to length 2 ("a", "b")
rep(c("a", "b", "c"), length = 5) # Cycles to length 5 ("a", "b", "c", "a", "b")


# Sorting, Ordering, and Mode


y = c(8, 5, 7, 6)
sort(y)               # Sorts elements in ascending order: 5, 6, 7, 8
sort(y, decreasing = TRUE) # Sorts elements in descending order: 8, 7, 6, 5

y = c(9, 8, 5, 7, 6)
order(y)              # Returns indices that would sort 'y' ascending (3, 5, 4, 2, 1)
order(y, decreasing = TRUE) # Returns indices for descending sort

# Checking the underlying storage mode of different R data types
mode(2.432)           # "numeric" (double)
mode(c(3, 4, 5, 6, 7, 8)) # "numeric"
mode("India")         # "character"
mode(c("India", "CANADA")) # "character"
mode(factor(c("UP", "MP"))) # "numeric" (Factors store underlying integer codes)
mode(list("India", "USA"))  # "list"
mode(data.frame(x = 1:2, y = c("India", "USA"))) # "list" (Data frames are lists under the hood)
mode(print)           # "function"


# Lists


x1 = matrix(nrow = 2, ncol = 2, data = 1:4, byrow = TRUE)
x2 = matrix(nrow = 2, ncol = 2, data = 5:8, byrow = TRUE)

x1 + x2               # Element-wise matrix addition

x1[2, 1] = "hello"    # Coerces entire matrix to character type due to mixed data types
# x1 + x2 will throw a non-numeric argument error here because x1 is now character

matlist = list(x1, x2) # Creates a list containing both matrices
matlist[1]            # Extracts the first element as a sublist (keeps list structure)
matlist[2]            # Extracts the second element as a sublist

# Complex nested list example
z1 = list(
  c("water", "juice", "lemonade"), # Element 1: character vector
  rep(1:4, each = 2),              # Element 2: numeric vector
  matrix(data = 5:8, nrow = 2, ncol = 2, byrow = TRUE) # Element 3: matrix
)

z1[[1]]               # Extracts the contents of the 1st element (the character vector)
z1[1][2]              # Returns NULL (looks for the 2nd element of the sublist wrapper, which doesn't exist)
z1[[1]][2]            # Extracts the 2nd element inside the 1st list component -> Returns "juice"