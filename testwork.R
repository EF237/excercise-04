
# Learning objectives

# Loading data files into R
# Breaking a programming challenge down into discrete steps
# Writing novel functions
# Using arguments in functions
# Using set operation functions
# Using loops and conditional statements
# Working with different data structures (vectors, tabular data)
# Practicing data wrangling
# Dealing with keyboard input

###Prelimanary

library(tidyverse)
library(dplyr)

# collins-scrabble-words-2019.txt  
scrabble <- ("https://raw.githubusercontent.com/difiore/ada-datasets/refs/heads/main/collins-scrabble-words-2019.txt")

# google-10000-english-usa-no-swears.txt 
english <- ("https://raw.githubusercontent.com/difiore/ada-datasets/refs/heads/main/google-10000-english-usa-no-swears.txt")

###Step 1

load_dictionary <- function(filename){
  read_csv(filename)
}

solution_list <- load_dictionary(scrabble)
str(solution_list)

valid_list <- load_dictionary(english)
str(valid_list)

###Step 2

solution_list <- intersect(solution_list, valid_list)

# How many words are in your updated solution_list vector? 8336

###Step 3

# Write a custom function called pick_solution() that 
# [1] removes all words from solution_list that are not 5 letters in length, 
# [2] then randomly chooses a single word from those that remain, and 
# [3] then splits that word into a vector of single-character elements. You should be able to pass your solution_list vector as the argument to the function.

pick_solution <- function(filename, word_length = 5){
  filtered_list <- filename |>
    filter(str_length(words) == word_length)
  {
      random_word <- sample(filtered_list$words, size = 1)
    }
  {
    vector_word <-str_split(random_word, "") [[1]]
  }
    }

pick_solution(solution_list, 5)

##Step 4

# [1] the answer to the puzzle (the value of your solution variable), 
# [2] a list of valid guesses (the contents of your valid_list variable), and 
# [3] a value for “number of guesses”, which you should set to the original Wordle game default of 6

play_wordle <- function()






