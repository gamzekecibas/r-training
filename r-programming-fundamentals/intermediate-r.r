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