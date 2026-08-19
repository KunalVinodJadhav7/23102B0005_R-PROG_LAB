Foundations of R Software
Lecture 18
Basics of Calculations
:::: 
Missing Data Handling
Shalabh
Department of Mathematics and  Statistics
Indian Institute of Technology Kanpur
1
NPTEL
Missing data
R represents missing observations through the data value NA
We can detect missing values using   is.na
The command  is.na() returns a logical vector with TRUE in 
the element locations that contain missing values represented 
by NA. 
2
NPTEL
Missing data
is.na() will work on vectors, lists, matrices, and data frames.
> x = NA # assign NA to variable 
x
> is.na(x) # is it missing?
[1] TRUE
3
NPTEL
Missing data
Now try a vector to know  if any value is missing?
> x = c(11, NA, 13, NA)
> is.na(x)
[1] FALSE TRUE FALSE TRUE
4
NPTEL
Example : How to work with missing data
> x = c(11,NA,13, NA) # vector
> mean(x) 
[1] NA
> mean(x, na.rm = TRUE) # NAs can be removed
[1] 12
5
11 13 12
2
+
=
11 NA 13 NA
4
+ + +
NPTEL
NA versus NULL
The null object, called NULL, is returned by some functions and 
expressions. 
Note that NA and NULL are not the same. 
NA is a placeholder for something that exists but is missing. 
NULL stands for something that never existed at all.
6
NPTEL
Missing data: Location of missing values
To identify the location of NAs,  use which() function as 
which(is.na( ))
> x = c(11,NA,13,NA) 
> x
[1] 11 NA 13 NA
> which(is.na(x))
[1] 2 4
It indicates that the missing values occur at 2nd and 4th places.
7
NPTEL
Missing data
To count of NAs the number of NAs , use sum() function as 
sum(is.na( ))
> x = c(11,NA,13,NA) 
> x
[1] 11 NA 13 NA
> sum(is.na(x))
[1] 2 
It indicates that there are 2 missing values.
8
NPTEL
Missing data: Finding complete cases
To find complete cases, use complete.cases() function 
which returns a logical vector identifying rows which are 
complete cases.  
> x = c(11,NA,13,NA) 
> x
[1] 11 NA 13 NA
> complete.cases(x)
[1] TRUE FALSE TRUE FALSE 
It indicates that the values at 1st and 3rd places are not missing.  
9
NPTEL
Missing data: Finding complete data set
The function na.omit() returns the object with listwise
deletion of missing values. Drop out any rows with missing 
values anywhere in them and forgets them forever.
> x = c(11,NA,13,NA) 
> x
[1] 11 NA 13 NA
> y = na.omit(x) 
> y
[1] 11 13
attr(,"na.action")
[1] 2 4
attr(,"class")
[1] "omit" 10
NPTEL
Missing data: Handling values
> x = c(11,NA,13,NA) 
> y = na.omit(x) 
> y
[1] 11 13
attr(,"na.action")
[1] 2 4
attr(,"class")
[1] "omit" 
> mean(x)
[1] NA
> mean(y)
[1] 12
11
NPTEL
Foundations of R Software
Lecture 19
Basics of Calculations
:::: 
Conditional Executions – If and If‐Else
Shalabh
Department of Mathematics and  Statistics
Indian Institute of Technology Kanpur
1
NPTEL
Control structures in R : 
Control statements, 
Functions,
Loops.  
2
NPTEL
1. Conditional execution: if()
Syntax 
if (condition) {execute commands if condition is TRUE} 
The code in the {} is evaluated if the logical test contained in the ()
is TRUE. 
If the logical test is FALSE, R will ignore all of the  code in the {}.
if() should not be applied when the condition being 
evaluated is a vector. It is best used only when meeting a single 
element condition. 
3
NPTEL
1. Conditional execution: if()
Syntax 
if (condition) {execute commands if condition is 
TRUE} 
4
Condition
Execute 
command
Start
Stop
If condition is true If condition is false
NPTEL
1. Conditional execution: if()
Example 1: 
Suppose we want to multiply all the values  x > 4 by 3.
> x = 5 
> if (x > 4) x * 3
[1] 15
> x = 3
> if (x > 4) x * 3
No response is obtained.
5
NPTEL
1. Conditional execution: if()
Example 1: Same with using {}
Suppose we want to multiply all the values  x > 4 by 3.
> x = 5 
> if (x > 4) {x * 3}
[1] 15
> x = 3
> if (x > 4) {x * 3}
No response is obtained.
6
NPTEL
1. Conditional execution: if()
Example 2: 
Suppose we want to print if a value is more than 3.
x = 6
if(x > 3){
print("The value is more than 3")
}
[1] "The value is more than 3"
7
NPTEL
1. Conditional execution: if()
Example 3: 
Suppose we want to print if a value is more than 3.
x = 2
if(x > 3){
print("The value is more than 3")
}
No outcome is obtained.
8
NPTEL
2. Conditional execution: if else() 
Syntax 
if (condition) {executes commands if condition is TRUE} 
else { executes commands if condition is FALSE } 
9
If condition is true
Condition
Else code
Start
If code
Stop
NPTEL If condition is false
2. Conditional execution: if else()
Please note: 
• The condition in this control statement may not be vector valued
and if so, only the first element of the vector is used.
• if else() should not be applied when the condition being 
evaluated is a vector. It is best used only when meeting a single 
element condition. 
• The condition may be a complex expression where the logical 
operators "and" (&&) and "or" (||) can be used.
10
NPTEL
2. Conditional execution: if else()
Example 4:
x = 5
if ( x==3 ) { x = x-1 } else { x = 2*x } 
x
[1] 10
Interpretation:
• If x = 3, then execute x = x – 1. 
• If x ≠ 3, then execute x = 2*x.
In this case, x = 5, so x ≠ 3. Thus x = 2*5
11
NPTEL
2. Conditional execution: if else()
Example 5:
x = 3
if ( x==3 ) { x = x-1 } else { x = 2*x } 
x
[1] 2
Interpretation:
• If x = 3, then execute x = x – 1. 
• If x ≠ 3, then execute x = 2*x.
In this case, x = 3. Thus x = 3‐1 = 2
12
NPTEL
2. Conditional execution: if else()
Example 6: 
Suppose we want to print if a value is more than 3 or less than 3.
x = 6
if(x > 3){
print("The value is more than 3")
} else {
print("The value is less than 3")
}
[1] "The value is more than 3"
13
NPTEL
2. Conditional execution: if else()
Example 7: 
Suppose we want to print if a value is more than 3 or less than 3.
x = 2
if(x > 3){
print("The value is more than 3")
} else {
print("The value is less than 3")
}
[1] "The value is less than 3"
14
NPTEL
2. Conditional execution: if else()
Example 6: 
15
NPTEL
Foundations of R Software
Lecture 20
Basics of Calculations
:::: 
Conditional Executions – Nested if else if and 
ifelse
Shalabh
Department of Mathematics and  Statistics
Indian Institute of Technology Kanpur
1
NPTEL
Control structures in R : 
Control statements, 
Functions,
Loops.  
2
NPTEL
1. Conditional execution: if()
Syntax 
if (condition) {execute commands if condition is TRUE} 
The code in the {} is evaluated if the logical test contained in the ()
is TRUE. 
If the logical test is FALSE, R will ignore all of the  code in the {}.
3
NPTEL
2. Conditional execution: if else() 
Syntax 
if (condition) {executes commands if condition is TRUE} 
else { executes commands if condition is FALSE } 
4
If condition is true
Condition
Else code
Start
If code
Stop
NPTEL If condition is false
3. Conditional execution: Nested if else if() 
The if…else…if statement allows to execute a block of code 
when there are more than two alternatives. 
It extends the earlier if else () condition.
5
NPTEL
3. Conditional execution: Nested if else if() 
Syntax 
if (condition1) {
executes commands if condition1 is TRUE
} else if (condition2) {
executes commands if condition2 is TRUE
} else if (condition3) {
executes commands if condition3 is TRUE
}
… …
else {
executes commands if all conditions are FALSE
} 
6
NPTEL
3. Conditional execution: Nested if else if() 
Example 1:
x = 5
if ( x==3 ) { 
x = x-1 
} else if ( x < 3 ) { 
x = x+5 
} else { x = 2*x } 
x
[1] 10
Interpretation:
• If x = 3, then execute x = x – 1. 
• If x < 3, then execute x = x + 5. 
• If x > 3, then execute x = 2*x.
In this case, x = 5, so x > 3. Thus x = 2*5
7
NPTEL
3. Conditional execution: Nested if else if() 
Example 2:
x = 2
if ( x==3 ) { 
x = x-1 
} else if ( x < 3 ) { 
x = x+5 
} else { x = 2*x } 
x
[1] 7
Interpretation:
• If x = 3, then execute x = x – 1. 
• If x < 3, then execute x = x + 5. 
• If x > 3, then execute x = 2*x.
In this case, x = 2, so x < 3. Thus x = 2+5
8
NPTEL
3. Conditional execution: Nested if else if() 
Example 3:
x = 3
if ( x==3 ) { 
x = x-1 
} else if ( x < 3 ) { 
x = x+5 
} else { x = 2*x } 
x
[1] 2
Interpretation:
• If x = 3, then execute x = x – 1. 
• If x < 3, then execute x = x + 5. 
• If x > 3, then execute x = 2*x.
In this case, x = 3. Thus x = 3‐1
9
NPTEL
4. Conditional execution: ifelse() 
Syntax 
ifelse(test, yes, no) 
§ Vector‐valued evaluation of conditions .
§ For the components in the vector‐valued logical expression test
which provide the value TRUE, the operations given by yes are 
executed. 
§ For the components in the vector‐valued logical expression test
which provide the value FALSE, the operations given by no are 
executed. 
10
NPTEL
4. Conditional execution: ifelse() 
Example 4:
> x = 1:10 
> x 
[1] 1 2 3 4 5 6 7 8 9 10 
> ifelse( x<6, x^2, x+1 ) 
[1] 1 4 9 16 25 7 8 9 10 11
Interpretation
• If x < 6 (TRUE), then x = x
2 (YES) .
• If x ≥ 6  (FALSE), then x = x + 1 (NO).
• So for x = 1, 2, 3, 4, 5, we get x = x
2=1, 4, 9, 16, 25
• For x=6, 7, 8, 9, 10, we get x= x+1 = 7, 8, 9, 10, 11 11
NPTEL
4. Conditional execution: ifelse() 
12
NPTEL
4. Conditional execution: ifelse() 
Example 5:
x = c(7,9,8,4)
ifelse(x %% 2 == 0,"even number","odd number")
[1] "odd number" "odd number" "even number" "even number"
[%%: Modulo Division‐ Finds the remainder after division of one number by
another.]
Interpretation
If the remainder of x divided by 2 
• is 0, then print ”even number” (YES) .
• is not equal to 0, then print ”odd number” (NO).
So for x = 7, 9, we get x = "odd number" and 
for x=8, 4, we get x= "even number" 13
NPTEL
4. Conditional execution: ifelse() 
Example 5:
14
NPTEL
Foundations of R Software
Lecture 21
Basics of Calculations
:::: 
Functions for Conditional Executions – switch   
and which commands
Shalabh
Department of Mathematics and  Statistics
Indian Institute of Technology Kanpur
1
NPTEL
Control structures in R : 
Control statements, 
Functions,
Loops.  
2
NPTEL
3
Some functions useful in conditional 
execution: switch() 
switch is a substitute for long if statements that compare a 
variable to several integral values. 
switch is a multiway branch statement. 
switch tests a variable for equality against a list of values.
switch map and search over a list of values. 
If there are more than one matches for any given value, then 
switch returns the first matched value.
NPTEL
4
Some functions useful in conditional 
execution: switch() 
switch evaluates expr and accordingly chooses one of the further 
arguments (in ...).
switch(expr, ...)
expr : an expression evaluating to a number or a character string.
switch command allows a variable to be checked for equality 
against a list of values or cases. 
switch(expr, case1, case2,....)
NPTEL
5
Some functions useful in conditional 
execution: switch() 
Case 1 Statements  break True
switch
Case 2
Case n
Default
Statements 
break
True
Statements 
break
True
Default 
statement
Statement 
after switch
False
False
False
NPTEL
6
Some functions useful in conditional 
execution: switch() 
• A  character string expression always matched to the listed cases.
• A  non character string expression is coerced to integer.
• For multiple matches, the first match element will be used.
NPTEL
7
Some functions useful in conditional 
execution: switch()
Example 1: switch () function used as an integer
> switch(2,"apple", "banana", "orange")
[1] "banana"
> switch(1,"apple", "banana", "orange")
[1] "apple"
NPTEL
8
Some functions useful in conditional 
execution: switch() 
Example 2:  switch () function used as a string as well. The 
matching named item’s value is returned.
> switch("colour", "colour
" = "blue", "gender" = 
"male", "volume" = 50)
[1] "blue"
> switch("volume", "colour
" = "blue", "gender" = 
"male", "volume" = 50)
[1] 50
NPTEL
9
Some functions useful in conditional 
execution: switch() 
Example 3: In the case of no match, if there is a unnamed element 
of ... its value is returned.  
> switch(4,"apple", "banana", "orange")
No outcome
> switch("size", "colour" = "blue", "gender" = 
"male", "volume" = 50)
No outcome
NPTEL
10
Some functions useful in conditional 
execution: which() 
The which() function returns the position of the elements in a 
logical vector which are TRUE.  
Give the TRUE indices of a logical object, allowing for array indices.
which(x, arr.ind, useNames)
x: Specified input logical vector
arr.ind: logical, returns the array indices if 
x is an array.
useNames: logical, says the dimension names of an array.
NPTEL
11
Some functions useful in conditional 
execution: which() 
Example 4: 
> x = c(10,15,8,14,6,12)
> x
[1] 10 15 8 14 6 12
> which(x == 14)
[1] 4
> which(x != 12)
[1] 1 2 3 4 5
> which(x > 10)
[1] 2 4 6
NPTEL
12
Some functions useful in conditional 
execution: which() 
Example 5: 
> x = matrix(nrow=3, ncol=3, data=1:9)
> x
[,1] [,2] [,3]
[1,] 1 4 7
[2,] 2 5 8
[3,] 3 6 9
> which.min(x) #find which is the minimium value
[1] 1
> which.max(x) #find which is the maximium value
[1] 9
NPTEL
13
Some functions useful in conditional 
execution: which() 
Example 5: 
> x = matrix(nrow=3, ncol=3, data=1:9)
> x
[,1] [,2] [,3]
[1,] 1 4 7
[2,] 2 5 8
[3,] 3 6 9
> which(x %% 2 == 1)
[1] 1 3 5 7 9
> which(x %% 2 == 1, arr.ind = TRUE)
row col
[1,] 1 1
[2,] 3 1
[3,] 2 2
[4,] 1 3
[5,] 3 3
Gives the positions (row, columns) of the values 
NPTEL
14
Some functions useful in conditional 
execution: which() 
NPTEL