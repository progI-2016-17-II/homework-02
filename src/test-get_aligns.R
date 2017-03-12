# testek

library(testthat)

test_that("get_align prints Bad Characters if align is Bad Characters", {
  expect_equal(get_align("Reformed Criminals"), 
               c("Owen Mercer ", "Brian Elliot ", "Paula von Gunther "))
})