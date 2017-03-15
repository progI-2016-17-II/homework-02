# Függvény tesztelése

# Függvény behívása
source("src/homework-02-functions.R")

library(testthat)


test_that("get_aligns prints sorted name_pri for character type tipus argument", {
  
  eredm <- get_aligns("Good Characters")

  expect_equal(length(eredm), 7468)
  expect_is(eredm, "character")
  expect_identical(eredm[1], "'Spinner")
  expect_that(length(eredm) <  length(comic_characters$align), is_true() )
  expect_identical(eredm[1], sort(subset(comic_characters, align=="Good Characters")$name_pri)[1])
})

# expect_identical(for (i in 1:length(eredm)) {eredm[i]}, for (i in 1:length(eredm) ){sort(subset(comic_characters, align=="Good Characters")$name_pri)[i]}) 

