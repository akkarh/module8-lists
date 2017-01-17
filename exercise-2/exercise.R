# Exercise 2: `*apply()`

# Create a *list* of 10 random numbers. Use the `runif` function to make a vector of random numbers,
# then use `as.list()` to convert that to a list.
vector <- runif(10, 0, 30)
list <- as.list(vector)

# Use `lapply()` to apply the `round()` function to each number, rounding it to the nearest .1
lapply(list, round, 1)


## Bonus

# Create a variable 'sentence' that has contains a sentence of text (go for something longish).
# Make it lowercase
sentence <- "lorem ipsum dolor sit amet, te est dicam putent audiam, ludus tollit saperet est ut."

# Use the `strsplit()` function to split the sentence into vector of letters.
# Hint: split on `""` to split on everything
# Note: this will return a _list_ with 1 element (which is the vector of letters)
letters <- strsplit(sentence, "")

# Extract the vector of letters from the resulting list
letters.vector <- letters[[1]]

# Use the `unique()` function to get a vector unique letters
unique.letters <- unique(letters.vector)

# Define a function CountOccurances that takes in two parameters: a letter and a vector letters.
# The function should return how many times that letter occurs in the vector
# Hint: use a filter!
CountOccurances <- function(character, letter.rep) {
  count <- letter.rep[letter.rep == character]
  return(length(count))
}

# Call your CountOccurances() function to see how many times the letter 'e' is in your sentence.
count <- CountOccurances('e', letters.vector)
print(count)

# Use `sapply()` to apply your CountOccurances() function to each unique letter in the vector to determine its frequency!
# Convert the result into a list (using `as.list`).
frequencies <- as.list(sapply(unique.letters, CountOccurances, letters.vector))

# Print the resulting list of frequencies
print(frequencies)
