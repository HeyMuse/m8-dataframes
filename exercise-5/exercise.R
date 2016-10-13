# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
grants<-read.csv("gates_money.csv", stringsAsFactors = FALSE)

# Use the View function to look at your data
View(grants)

# Create a variable `spending` as the `total_amount` column of the dataset
spending<-gates_money$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org<-gates_money$organization

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean(spending)

# What was the dollar amount of the largest grant?
max(spending)

# What was the dollar amount of the smallest grant
min(spedning)

# Which organization received the largest grant?
gates_money$organization[spending==max(gates_money$total_amount)]

# Which organization received the smallest grant?
gates_money$organization[spending==min(gates_money$total_amount)]


# How many grants were awarded in 2010?
gates_money$total_amount[gates_money$start_year==2010]


