# TABLE OF CONTENTS:
    # Mathematical operations
    # Data types:
    ##  1. Numeric
    ##  2. Character
    ##  3. Boolean/ Logical
    ##  4. Vector
    # Check data type of a variable
    ##  class(variable name)
    # Vector operations
    ##  Naming vectors
    ##  Vector addition
    # Matrices
    # Factors

# -----------------------------------------------------------------------------
    # NOTE: Assign a value to a variable
    ##  variable name <- value
# -----------------------------------------------------------------------------
## Mathematical operations
## Addition
x <- 3+4
print(x)

## Subtraction
y <- 10-5
print(y)

## Multiplication
z <- 2*3
print(z)

## Division
a <- 10/2
print(a)

## Exponentiation
b <- 2^5
print(b)

## Modulo
c <- 28 %% 6
print(c)

## A combination of operations
result <- (x + y) * z / a + b %% 2 + c^2
result

## Data types
# Numeric data type
my_numeric <- 42
class(my_numeric)

# Character data type
my_character <- "universe"
class(my_character)

# Boolean/ Logical data type
my_logical <- FALSE
class(my_logical)

# Vector data type
vegas <- "Go Vegas!"
class(vegas)

# Examples of vectors
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, TRUE)

## Vector operations
# Naming vectors
# Daily balance from Monday to Friday
balance_vector <- c(140, -50, 20, -120, 240)
# Assign days as names of balance_vector
names(balance_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Print balance_vector
balance_vector

# Alternative way to name vectors
weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(balance_vector) <- weekdays

## Vector addition
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector
  
# Print out total_vector
print(total_vector)

week1_balance <- c(140, -50, 20, -120, 240)
week2_balance <- c(120, -40, 25, -130, 260)

total_week1 <- sum(week1_balance)
total_week2 <- sum(week2_balance)

total_weeks <- total_week1 + total_week2
print(total_weeks)

# check week1 balance is greater than week2 balance
print("Week 1 balance is greater than Week 2 balance:")
print(week1_balance > week2_balance)    

# Vector selection
# Balance of first week of Wednesday
week1_wednesday <- week1_balance[3]
print(week1_wednesday)

# Balance of middle days of the second week
week2_middle1 <- week2_balance[c(2, 3, 4)]
print(week2_middle1)

### Alternative way to select elements from a vector
week2_middle2 <- week2_balance[2:4]
print(week2_middle1 == week2_middle2)

# Average balance of the middle days of the second week
week2_middle_avg <- mean(week2_balance[2:4])
print(week2_middle_avg)

# Which days have positive balance in first week
positive_days_week1 <- week1_balance > 0  ## boolean vector
print(positive_days_week1)
# print names of positive days in first week
print(week1_balance[positive_days_week1])  ### name of days & profit
print(names(week1_balance[positive_days_week1])) ## get names of positive days

## Matrices
# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix_example <- matrix(1:9, byrow = TRUE, nrow = 3)
print(matrix_example)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow=3, byrow=TRUE)

# Optional: assign names to the rows
rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
colnames(star_wars_matrix) <- c("US", "Non-US")

# Print the star_wars_matrix to the console
print(star_wars_matrix)

## Alternative way to construct a matrix
title_vector <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
region_vector <- c("US", "Non-US")
star_wars_matrix_short <- matrix(box_office, 
                                  nrow=3, byrow=TRUE,
                                  dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"),
                                                  c("US", "Non-US")))
print(star_wars_matrix_short)

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
print(worldwide_vector)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
print(all_wars_matrix)

## Define other triology of Star Wars
phantom_menace <- c(474.5, 552.5)
attack_clones <- c(310.7, 338.7)
revenge_sith <- c(380.3, 468.5)

# Create box_office
box_office_second <- c(phantom_menace, attack_clones, revenge_sith)

title_vector_second <- c("The Phantom Menace", "Attack of the Clones", "Revenge of the Sith")

star_wars_matrix2 <- matrix(box_office_second, 
                                  nrow=3, byrow=TRUE,
                                  dimnames = list(title_vector_second, region_vector))

# Combine both matrices
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
print(all_wars_matrix)

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
print(total_revenue_vector)

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
# Average non-US revenue
print(mean(non_us_all))
# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
# Average non-US revenue for first two movies
print(mean(non_us_some))

# Matrix division
# all_wars_matrix is available in your workspace
all_wars_matrix
# Estimate the visitors
visitors <- all_wars_matrix / 5
# Print the estimate to the console
print(visitors)

## Matrix by matrix division
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7, 4, 4, 4.5, 4.5, 4.9, 4.9), 
                                nrow=6, byrow=TRUE,
                                dimnames = dimnames(all_wars_matrix))
print(ticket_prices_matrix)

# Estimated number of visitors
visitors <- all_wars_matrix / ticket_prices_matrix
print(visitors)
# US visitors
us_visitors <- visitors[,1]
# Average number of US visitors
print(mean(us_visitors))

# Factors
# Factors are generally used to represent categorical variables, 
# which may be intrinsically unordered (nominal) or ordered (ordinal).
# Medium blog: https://medium.com/@odsc/factors-in-r-6746d3402b36
# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")
# Convert sex_vector to a factor
factor_sex_vector <- factor(sex_vector)
# Print out factor_sex_vector
print(factor_sex_vector)

# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
print(factor_animals_vector)
# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
print(factor_temperature_vector)
