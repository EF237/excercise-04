
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

##################################

library(tidyverse)
library(dplyr)

# Data Files

# collins-scrabble-words-2019.txt    # "words"
A <- read_csv("https://raw.githubusercontent.com/difiore/ada-datasets/refs/heads/main/collins-scrabble-words-2019.txt")

# google-10000-english-usa-no-swears.txt  # "words"
B <- read_csv("https://raw.githubusercontent.com/difiore/ada-datasets/refs/heads/main/google-10000-english-usa-no-swears.txt")


