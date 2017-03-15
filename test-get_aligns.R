#testthat package installása
if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)

#7.feladat:Get_align függvényhez tesztek írása
source("src/homework-05-funtions.R")

test_that(
  "Captain America prints Good Characters", {
expect_output(comic_characters$name = "Captain America", "Good Characters")
expect_is(comic_characters$name = "Captain America", behaviour)
})


