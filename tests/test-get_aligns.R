#----Package telepítése a teszteléshez------------------------------------------
if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)

#----Forrás beállítása----------------------------------------------------------
source("src/homework-02-functions.R")

test_that("Működik-e NA-ra is a get_aligns függvény, és egyéb tesztek", {
  expect_is(get_aligns(NA),"character")
  expect_output(get_aligns(NA), "*A'kane")
  expect_output(get_aligns("Bad Characters"),"*Thor")
})