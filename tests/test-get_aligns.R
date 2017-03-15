#---------------------------II.07 feladat---------------------------
# Nyiss egy új R szkriptet és mentsd el egy tests nevű mappába 
# test-get_aligns.R néven! Írj teszteket a get_aligns függvényhez 
# ebbe szkriptbe!

#Packages and sources
if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)
source("src/homework-02-functions.R")


# Sajnos a test függvények közül csak a Joker-re írt működik, de nem gondolnám,
# hogy azért, mert jól írtam meg

test_that("Is Superman good?", {
  test <- length(get_aligns("Good Characters"))
  expect_true(length(test) == "Superman")
})

test_that("Is Joker good?", {
  test <- length(get_aligns("Good Characters"))
  expect_true(length(test) == "Joker")
})
