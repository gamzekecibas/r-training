# Relational operators
# Equality ==
# Inequality !=
# Ordering
# Alphabetically Order: "Hello" > "Goodbye" --> TRUE
# Relational Operators & Vectors
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
print(linkedin > 10)

facebook <- c(17, 7, 5, 16, 8, 13, 14)
print(facebook)

print(facebook <= linkedin)
# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days of LinkedIn
linkedin > 15

# Quiet days of LinkedIn
linkedin <= 5

# LinkedIn more popular than Facebook
linkedin > facebook

# Comparison in matrices
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14
#------------------------------------------
# Comparison of logicals
print(TRUE == FALSE)

# Comparison of numerics
print((-6*14) != (17 - 101))

# Comparison of character strings
print("useR" == "user")

# Compare a logical with a numeric
print(TRUE == 1)

# Comparison of numerics
print((-6 * 5 + 2) >= (-10 + 1))

# Comparison of character strings
print("raining" <= "raining dogs")

# Comparison of logicals
print(TRUE > FALSE)

# Logical Operators
# AND   -> &
# OR    -> | 
# NOT   -> !

# The linkedin is previously defined above and last variable:
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <=20

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >= 12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14

# Create the li_df data frame using read.table
li_df <- read.table(
  file = "/Users/gamzekecibas/Desktop/GIT/r-training/r-programming-fundamentals/li_data.txt",  # Path to your file
  header = FALSE, 
  row.names = 1,
  col.names = c("employees", "day1", "day2", "day3", "day4", "day5", "day6", "day7")
)

# Verify
head(li_df)
# Select the second column, named day2, from li_df: second
second <- li_df$day2

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- c(second > 25 | second < 5)

# Count the number of TRUEs in extremes
sum(extremes)

# Conditional Statements
# IF statement
# if(condition) {
#    expression
# } else {
#   expression2
# }

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}

# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li >= 15 & fb >=15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- (li + fb)
}

# Print the resulting sms to the console
print(sms)

# While loop
# Initialize the speed variable
speed <- 64

# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed <- speed - 7
}

# Print out the speed variable
print(speed)

# Initialize the speed variable
speed <- 64

# Extend/adapt the while loop
while (speed > 30) {
  print(paste("Your speed is", speed))
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

# Initialize the speed variable
speed <- 88

while (speed > 30) {
  print(paste("Your speed is", speed))
  
  if (speed > 80) {
    break           # Break the while loop when speed exceeds 80
  }
  
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}

# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3*i)
  if ((i) %% 8 == 0) {
    break
  }
  i <- i + 1
}

# For loop
# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1: easily read but no access to indices
for (li in linkedin){
    print(li)
}

# Loop version 2: hard to read and write but easily access to indices
for (i in 1:length(linkedin)){
    print(linkedin[i])
}

# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (n in nyc){
    print(n)
}

# Loop version 2
for (i in 1:length(nyc)){
    print(nyc[[i]])
}

# The tic-tac-toe matrix ttt has already been defined for you
ttt <- matrix(
  c("X", "O", "X",  # Row 1
    "O", "X", "O",  # Row 2
    ".", ".", "."), # Row 3 (empty spots)
  nrow = 3, 
  byrow = TRUE
)
# define the double for loop
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("On row", i, "and column", j, "the board contains", ttt[i, j]))
  }
}

linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
# Add if statement with break
  if (li > 16){
    print("This is ridiculous, I'm outta here!")
    break
  }

  # Add if statement with next
if (li < 5){
    print("This is too embarrassing!")
    next
  }

  print(li)
}

if (char == "r"){
    rcount <- rcount + 1
}

# Introductiton to Functions
# Consult the documentation on the mean() function
?mean 
# alternatively
# help(mean)

# Inspect the arguments of the mean() function
args(mean)

# The linkedin and facebook vectors
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)


# Inspect avg_li and avg_fb
print("Average of linkedin view: ", avg_li)
print("Average of facebook view: ", avg_fb)

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <-mean(linkedin + facebook, trim = 0.2)

# Inspect both new variables
print(paste("Average sum is: ", avg_sum))
print(paste("Trimmed average sum is: ", avg_sum_trimmed))

# The linkedin and facebook vectors have already been created for you
adv_linkedin <- c(16, 9, 13, 5, NA, 17, 14)
adv_facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
avg_li <- mean(adv_linkedin)

# Advanced average of linkedin
adv_avg_li <- mean(adv_linkedin, trim = 0, na.rm = TRUE)

# Calculate the mean absolute deviation
mae_li_fb <- mean(abs(adv_linkedin - adv_facebook), trim=0, na.rm=TRUE)
print("Mean Absolute Deviation of linkedin and facebook views = ", mae_li_fb)

# Writing Functions
# Create a function pow_two()
pow_two <- function(x){
    y <- x*x
    return(y)
}


# Use the function
print(pow_two(12))

# Create a function sum_abs()
sum_abs <- function(x, y){
    z = abs(x) + abs(y)
    return(z)
}

# Use the function
print(sum_abs(-2, 3))


# Define the function hello()
hello <- function(){
    print("Hi there!")
    return(TRUE)
}

# Call the function hello()
print(hello())

# Finish the pow_two() function
pow_two <- function(x, print_info=TRUE) {
  y <- x ^ 2
  if (print_info == TRUE){
    print(paste(x, "to the power two equals", y))
  }
  return(y)
}

print(pow_two(3))
print(pow_two(4, print_info=TRUE))
print(pow_two(5, print_info=FALSE))

# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print( "Try to be more visible!")
    return(0)  
  }
}

# Call the interpret function twice
print(interpret(linkedin[1]))
print(interpret(facebook[2]))

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum=TRUE) {
  count <- 0

  for (v in views) {
    count <- count + interpret(v)
  }

  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
print(interpret_all(linkedin))
print(interpret_all(facebook))

# R packages
# Package installment --> install.packages(<package_name>)
#install.packages("ggvis")
# Load the ggplot2 package
library("ggplot2")

# Retry the qplot() function
qplot(mtcars$wt, mtcars$hp)

# Check out the currently attached packages again
search()

# The apply family
# lapply
#   apply function over list or vector
#   output = list

# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year
split_math <- strsplit(pioneers, split = ":")

# Convert to lowercase strings: split_low
split_low <- lapply(split_math, tolower)

# Take a look at the structure of split_low
str(split_low)
# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Write function select_first()
select_first <- function(x) {
  x[1]
}

# Apply select_first() over split_low: names
names <- lapply(split_low, select_first)

# Write function select_second()
# Write function select_first()
select_first <- function(x) {
  x[2]
}

# Apply select_second() over split_low: years
years <- lapply(split_low, select_second)

# Alternatively,
names <- lapply(split_low, function(x) {x[1]})
years <- lapply(split_low, function(x) {x[2]})

# Alternatively,
# Generic select function
select_el <- function(x, index) {
  x[index]
}

# Use lapply() twice on split_low: names and years
names <- lapply(split_low, select_el, index=1)
years <- lapply(split_low, select_el, index=2)

# sapply
#   apply function over list or vector
#   try to simplify list to array
temp <-  list(
  c(3, 7, 9, 6, -1),
  c(6, 9, 12, 13, 5),
  c(4, 8, 3, -1, -3),
  c(1, 4, 7, 2, -2),
  c(5, 7, 9, 4, 2),
  c(-3, 5, 8, 9, 4),
  c(3, 6, 9, 4, 1)
)

# Definition of below_zero()
below_zero <- function(x) {
  return(x[x < 0])
}

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)

# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)

# Are freezing_s and freezing_l identical?
print(identical(freezing_s, freezing_l))

# Definition of print_info()
print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}

# Apply print_info() over temp using sapply()
sapply(temp, print_info)

# Apply print_info() over temp using lapply()
lapply(temp, print_info)

# vapply
#   apply function over list or vector
#   explicitly specify output format

# Definition of basics()
basics <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x))
}

# Apply basics() over temp using vapply()
result <- vapply(temp, basics, numeric(3))

# Print the result
print(result)

# Convert to vapply() expression
# sapply(temp, max)
vapply(temp, max, numeric(1))

# Convert to vapply() expression
# sapply(temp, function(x, y) { mean(x) > y }, y = 5)
vapply(temp, function(x, y) { mean(x) > y }, logical(1), y = 5)

## Useful functions
v1 <- c(1.1, -7.1, 5.4, -2.7)
v2 <- c(-3.6, 4.1, 5.8, -8.0)

mean(c(sum(round(abs(v1))), sum(round(abs(v2)))))

# Functions for data structure
li <- list(log=TRUE,
            ch="hello",
            int_vec=sort(
                    rep(seq(8, 2, by=-2), times=2)
                    )
            )

# is.list(li)
li2 <- as.list(c(1,2,3))
is.list(li2)  ## TRUE

unlist(li)

str(append(li, rev(li)))
str(rev(li))

# Regular Expression
# grepl(pattern = <regex>, x= <string>) --> logical list result
# grep(pattern = <regex>, x= <string>) --> give indices in the list
animals <- c("cat", "moose", "impala", "ant", "kiwi")
grepl(pattern="a", x=animals)  # including a 
grepl(pattern="^a", x=animals)  # start with a 
grepl(pattern="a$", x=animals)  # end with a 

grep(pattern="a", x=animals)
# Alternative to check related indices
which(grepl(pattern="a", x=animals))

# sub() & gsub()
# sub(pattern=<regex>, replacement= <str>, x=<str>)
sub(pattern="a", replacement= "o", x=animals) # replace firstly detected a's with o
gsub(pattern="a", replacement= "o", x=animals) # replace all a's with o
gsub(pattern="a|i", replacement="_", x=animals) #conditions

# Times & Dates
# today
today <- Sys.Date()
class(today) # Date

now <- Sys.time()
class(now) # POSIXct, POSIXt

custom_date <- as.Date("1971-05-14") ## YYYY-MM-DD
custom_date2 <- as.Date("2000-28-03", format="%Y-%d-%m") ## YYYY-DD-MM --> YYYY-MM-DD
custom_date

custom_date + 1 # 1971-05-15
custom_date2 - custom_date # Time difference of 10546 days
class(custom_date) # Date

custom_time <- as.POSIXct("1971-05-14 11:25:15 UTC")
custom_time2 <- as.POSIXct("1974-07-14 21:11:55 UTC")
class(custom_time)

custom_time + 1 # "1971-05-14 11:25:16 UTC"
custom_time2 - custom_time #Time difference of 1157.366 days

unclass(custom_date) #498
unclass(custom_time) #43061115
attr(custom_time, "tzone") #""

# Dedicated packages: lubridate, zoo, xts
#### FOR DATE:
# %Y: 4-digit year (1982)
# %y: 2-digit year (82)
# %m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)

#### FOR TIME:
# %H: hours as a decimal number (00-23)
# %I: hours as a decimal number (01-12)
# %M: minutes as a decimal number
# %S: seconds as a decimal number
# %T: shorthand notation for the typical format %H:%M:%S
# %p: AM/PM indicator

# Definition of character strings representing times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"

# Convert the strings to POSIXct objects: time1, time2
# Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time2 <- as.POSIXct(str2)  # No need to specify format here

# Convert times to formatted strings
print(format(time1, "%M"))
print(format(time2, "%I:%M %p"))
