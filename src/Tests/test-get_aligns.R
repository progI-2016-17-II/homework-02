#7.) 
#Tesztelés

if (!("testthat" %in% installed.packages())) {
install.packages("testthat", dependencies = T)
}
library(testthat)

source("src/homework-02-functions.R")


test_that ("get_aligns függvény jól működik?", {
  expect_is(get_aligns("Neutral Characters"), "character")
})
