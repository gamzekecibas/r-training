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
