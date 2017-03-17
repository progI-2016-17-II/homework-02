##Házi feladat 2
##Programozás I.
##2016/17. II. félév
##Szilágyi Ádám
##2017.03.15

                                     ###FUNCTION - TEST###
 
source("src/homework-02-functions.R")

test_that("Karakter típusú-e?", {
  expect_is(get_align("Good Characters"), "character")
})

test_that("Karakter típusú-e?", {
  expect_is(get_align("Bad Characters"), "character")
})

test_that("Karakter típusú-e?", {
  expect_is(get_align("Neutral Characters"), "character")
})

test_that("Karakter típusú-e?", {
  expect_is(get_align(NA), "character")
})

#Az összes karakter típusú