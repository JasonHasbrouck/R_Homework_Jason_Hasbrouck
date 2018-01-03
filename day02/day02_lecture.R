# Day 2 lecture

# Review
# - pulling down changes from the class repo
# - setting up your own repo
# - other questions?

# Topics:
# - calculator and simple interactive use in the console
# - syntax/formatting basics
# - interface: scripts
# - workbench analogy
# - object basics
# - functions as "tools"
# - function structure
# - help
# - packages
# - environments
# - saving environments and objects
# - naming objects
# - reading data from files

####################################################################

# Console
# - most "bare bones" interface with R
# - type commands at the command line, hit Enter after each command
# - code run and evaluated every time you hit Enter
# - can (usually) use up/down arrows to scroll through previous commands

# Basic calculator examples (type along!)


# Some syntax basics
# - whitespace (mostly) doesn't matter
# - no "line end" character
# - "plus" sign instead of ">" prompt when a line is "incomplete"
#    can hit Esc (or equivalent) to bail out

#########
# Scripts
# - End with .R
# - written *entirely* in R
# - this document is a script!
# - the "comment" symbol is #
#   anything to the right of a # symbol is ignored when running code
#   (exception: if the # is part of a string, as indicated by quotes,
#   it's treated as part of that string and not as a comment character)
# - you can run entire scripts using `source()` function


#############################
# Workbench analogy for R use


##############################
# Objects: creating and naming

# assignment: creating something in your workspace


# checking the workspace contents

# removing things from the workspace

# object naming conventions
# cannot start with a number

# some different "style" options
camelCase <- 10
dot.delimited <- 10
underscore_delimited <- 10

# other style examples:
# https://google.github.io/styleguide/Rguide.xml
# http://adv-r.had.co.nz/Style.html


# case matters

######################
# Structure of objects

# simple structure: vectors
# c()
# seq() for sequences
# x:y as a shortcut for seq(from = x, to = y, by = 1)
# [] for subsetting


# syntax note: [square brackets] are used ONLY for "extraction"/subsetting
#              (parentheses) are used in math, and in functions (more below)


# vectors:
# - all a single data type
# - always one-dimensional
# - multi-dimentional things are other types of objects
#   - data frames
#   - lists
#   - matrices
#   - arrays



#############
# Data frames
# - two dimensional
# - columns act as vectors (all same data type)
# - ideal standard format for (most) data
# - columns = variables, rows = cases
?sleep

# [ , ]
# names
# $

# Some handy functions for inspecting data frames
# head(), tail()
# nrow(), ncol()
# summary()
# colnames()


###########
# Functions
# - everything in R is an object!
# - some objects function as "tools" -- they *do* stuff
# - these are "functions"
# - functions are still objects, too!

# syntax: FUNCTIONNAME(arg1, arg2, arg3...)

# functions return a single value, but may have other "side effects"
# the returned value may be complex, but it is still a single *object*

# example: t.test()
# with made-up vectors


################
# Quick practice

# using [ ] and <-, pull out some numbers from the sleep data, and compare with t.test



###################
# More on arguments
# - names
# - order
# - optional vs. required

# getting help()

# finding help
# Google
# "fuzzy matching"

# sometimes hints from tab-completion in RStudio

# can be sloppy with argument names

# return to t-test (options)

rm("summary")
summary(sleep)


########################################
# PRACTICE TIME!
# Complete items 1-3 in day02_practice.R
########################################

##########
# Packages

library(MASS)
install.packages("dplyr")
library(dplyr)
install.packages(c("ggplot2", "tidyr"))
library(ggplot2)
install.packages("tidyverse") # https://www.tidyverse.org/

# update.packages()

##############
# Environments

# workspaces

# naming conflicts

# MASS::select(x)
# select(x)

# saving workspaces & objects

########################################
# PRACTICE TIME!
# Complete items 4-7 in day02_practice.R
########################################


#########################
# Reading data from files

# read.table() family
?read.table
# for SPSS
# old package: `foreign`
# new package: `haven`

# for Excel: `readxl`
# install.packages("readxl")
# library(readxl)

# Others?

####################################
# PRACTICE: Try to read in your data
####################################