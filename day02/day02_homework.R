# Complete all of the items below
# Use comments where you're having trouble or questions

# 1. Read your data set into R

library(readxl)
terrorism <- read_excel("../my_r_homework/terrorism.xlsx")

# 2. Peek at the top few rows
head(terrorism)

# 3. Peek at the top few rows for only a few columns
head(terrorism, 3)

# 4. How many rows does your data have? 57196
nrow(terrorism)

# 5. Get a summary for every column
summary(terrorism)

# 6. Get a summary for one column
summary(terrorism["nkill"])

# 7. Are any of the columns giving you unexpected values?
# No, all of the columns are giving me expected values. I am not suprised that there are character values for the columns that end with "_txt"

# 8. Select a few key columns, make a vector of the column names

terror.attack.annual.deaths <- c("iyear", "nkill")
terror.attack.annual.deaths

# 9. Create a new data.frame with just that subset of columns
deaths <- data.frame(terrorism$iyear, terrorism$nkill)

# 10. Create a new data.frame that is just the first 10 rows
#     and the last 10 rows of the data from the previous step

killed <- terrorism$nkill[c(1:10,57187:57196)]
killed
year <- terrorism$iyear[c(1:10,57187:57196)]
year

year.killed.first10.last10 <- data.frame(killed,year)
year.killed.first10.last10

# 11. Create a new data.frame that is a random sample of half of the rows.
# HINT: ?sample

57196/2

year.killed.sample <- deaths[sample(1:nrow(deaths), 28598, replace=FALSE),]

# 12. Find a comparison in your data that is interesting to make
#     (comparing two sets of numbers)
#     - run a t.test for that comparison
#     - decide whether you need a non-default test
#       (e.g., Student's, paired)
#     - run the t.test with BOTH the formula and "vector"
#       formats, if possible
#     - if one is NOT possible, say why you can't do it


terrorism2015 <- subset(terrorism, iyear == "2015")
terrorism2015

deaths2015 <- terrorism2015$nkill[1:14852]


terrorism2016 <- subset(terrorism, iyear == "2016")
terrorism2016

deaths2016 <- terrorism2016$nkill[1:13488]

t.test(x = terrorism2015$nkill, y = terrorism2016$nkill)

t.test(deaths2015,deaths2016)
t.test.2015to2016 <- t.test(deaths2015,deaths2016)


# 13. Repeat #12 for TWO more comparisons
#     - ALTERNATIVELY, if correlations are more interesting,
#       do those instead of t-tests (and try both Spearman and
#       Pearson correlations)
#     - Tip: it's okay if the comparisons are kind of nonsensical, this is just a programming exercise




terrorism2013 <- subset(terrorism, iyear == "2013")
terrorism2013
deaths2013 <- terrorism2013$nkill[1:14852]
deaths2013

terrorism2014<- subset(terrorism, iyear == "2014")
terrorism2014

deaths2014 <- terrorism2014$nkill[1:16860]
deaths2014

t.test(deaths2013, deaths2014)
t.test.2013to2014 <- t.test(deaths2013, deaths2014)
t.test.2013to2014


t.test(deaths2013, deaths2016)
t.test.2013to2016 <- t.test(deaths2013, deaths2016)
t.test.2013to2016


#Note: I attempted to run a correlation, but was unable to do so because of differing lengths of my vectors (deaths2013, deaths2014, etc.). How do I 


# 14. Save all results from #12 and #13 in an .RData file

t.test.2013to2014
save(t.test.2013to2014, file = "ttest_result_2013_to_2013.RData")

t.test.2013to2016
save(t.test.2013to2016, file = "ttest_result_2013_to_2016.RData")

# 15. Email me your version of this script, PLUS the .RData
#     file from #14
#     - ALTERNATIVELY, push your version of this script and your .RData results
#       to a repo on GitHub, and send me the link


