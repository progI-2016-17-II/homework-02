if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)

source("src/homework-02-functions.R")

test_that(
  "get_aligns prints the name of character if we gives the align of this character", {
    expect_is(get_aligns(aligns = "Bad Characters"), "character")
    expect_is(get_aligns(aligns = "Neutral Characters"), "character")
    expect_is(get_aligns(aligns = "Good Characters"), "character")
    expect_is(get_aligns(aligns = "Reformed Criminals"), "character")
    expect_is(get_aligns(aligns = NA), "character")
    expect_is(get_aligns(), "character")
    expect_error(get_aligns(aligns = A))
    expect_error(get_aligns(aligns = A, B))
    expect_error(get_aligns(aligns = A, B, C))
    expect_output(get_aligns(aligns = 1), "Csak szoveget irhatsz be!")
    expect_equal(get_aligns(aligns="Reformed Criminals"), c("Brian Elliot", "Owen Mercer", "Paula von Gunther"))
    
  })