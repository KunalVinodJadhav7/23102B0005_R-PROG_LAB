#######
# R Language Overview with Best Practices
# Purpose: Quick reference for writing clean and efficient R code
#######

cat("\n")
cat("R LANGUAGE OVERVIEW\n")
cat("\n\n")

# 1. Comments
cat("1. Comments\n")
cat("Comments explain WHY the code is written.\n\n")

# 2. Variables
cat("2. Variables\n")

age <- 25
name <- "Alice"
height <- 1.68
is_student <- TRUE

print(age)
print(name)
print(height)
print(is_student)
cat("\n")

# 3. Data Types
cat("3. Data Types\n")

numeric_var <- 10.5
integer_var <- 10L
character_var <- "Hello"
logical_var <- FALSE
complex_var <- 2 + 3i

print(numeric_var)
print(integer_var)
print(character_var)
print(logical_var)
print(complex_var)
cat("\n")

# 4. Vectors
cat("4. Vectors\n")

numbers <- c(1, 2, 3, 4, 5)

print(numbers)
print(mean(numbers))
print(sum(numbers))
print(length(numbers))
cat("\n")

# 5. Matrices
cat("5. Matrices\n")

mat <- matrix(1:9, nrow = 3)

print(mat)
print(dim(mat))
cat("\n")

# 6. Lists
cat("6. Lists\n")

person <- list(
  name = "Alice",
  age = 25,
  scores = c(85, 90, 95)
)

print(person)
print(person$name)
print(person$scores)
cat("\n")

# 7. Data Frames
cat("7. Data Frames\n")

students <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 22, 24),
  Score = c(88, 92, 79)
)

print(students)
print(head(students))
print(summary(students))
str(students)
cat("\n")

# 8. Factors
cat("8. Factors\n")

grades <- factor(c("A", "B", "A", "C"))

print(grades)
print(levels(grades))
cat("\n")

# 9. Operators
cat("9. Operators\n")

x <- 10
y <- 5

cat("Addition =", x + y, "\n")
cat("Subtraction =", x - y, "\n")
cat("Multiplication =", x * y, "\n")
cat("Division =", x / y, "\n")
cat("Power =", x ^ y, "\n\n")

# 10. Conditional Statements
cat("10. Conditional Statements\n")

score <- 82

if (score >= 90) {
  grade <- "A"
} else if (score >= 75) {
  grade <- "B"
} else {
  grade <- "C"
}

cat("Score:", score, "\n")
cat("Grade:", grade, "\n\n")

# 11. Loops
cat("11. Loops\n")

cat("For Loop:\n")
for (i in 1:5) {
  print(i)
}

cat("While Loop:\n")
count <- 1
while (count <= 5) {
  print(count)
  count <- count + 1
}
cat("\n")

# 12. Functions
cat("12. Functions\n")

calculate_bmi <- function(weight, height) {
  bmi <- weight / (height^2)
  return(bmi)
}

bmi <- calculate_bmi(70, 1.75)
cat("BMI =", bmi, "\n\n")

# 13. Apply Family
cat("13. Apply Family\n")

numbers <- 1:10

squared <- sapply(numbers, function(x) x^2)

print(squared)
cat("\n")

# 14. Vectorization
cat("14. Vectorization\n")

print(numbers * 2)
cat("\n")

# 15. Missing Values
cat("15. Missing Values\n")

values <- c(1, 2, NA, 4)

print(values)
print(is.na(values))
print(na.omit(values))
print(mean(values, na.rm = TRUE))
cat("\n")

# 16. String Operations
cat("16. String Operations\n")

text <- "Hello World"

print(toupper(text))
print(tolower(text))
print(nchar(text))
print(paste("R", "Programming"))
cat("\n")

# 17. Dates
cat("17. Dates\n")

today <- Sys.Date()
now <- Sys.time()

print(today)
print(now)
cat("\n")

# 18. Reading Data
cat("18. Reading Data\n")
cat("Example:\n")
cat('df <- read.csv("data.csv")\n\n')

# 19. Writing Data
cat("19. Writing Data\n")
cat('write.csv(students, "students.csv", row.names = FALSE)\n\n')

# 20. Basic Plotting
cat("20. Basic Plotting\n")
cat("Displaying scatter plot...\n")

plot(
  students$Age,
  students$Score,
  main = "Age vs Score",
  xlab = "Age",
  ylab = "Score",
  col = "blue",
  pch = 19
)

cat("\n")

# 21. Useful Functions
cat("21. Useful Functions\n")

print(head(students))
print(tail(students))
print(summary(students))
str(students)
print(dim(students))
print(names(students))
cat("\n")

# 22. Packages
cat("22. Packages\n")
cat("Install: install.packages('dplyr')\n")
cat("Load   : library(dplyr)\n\n")

# 23. Error Handling
cat("23. Error Handling\n")

safe_log <- function(x) {
  if (x <= 0) {
    stop("Input must be positive.")
  }
  log(x)
}

print(safe_log(10))
cat("\n")

# 24. Best Practices
cat("24. Best Practices\n")

customer_age <- 35
total_sales <- 1500
tax_rate <- 0.18

cat("Customer Age:", customer_age, "\n")
cat("Total Sales:", total_sales, "\n")
cat("Tax Rate:", tax_rate, "\n\n")

# 25. Reproducibility
cat("25. Reproducibility\n")

set.seed(123)

sample_values <- sample(1:100, 5)
print(sample_values)
cat("\n")

# 26. Session Information
cat("26. Session Information\n")

print(sessionInfo())

cat("END OF R LANGUAGE OVERVIEW\n")
cat("\n")