#----Package telepítése a teszteléshez------------------------------------------
if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)

#----Forrás beállítása----------------------------------------------------------
source("src/homework-02-functions.R")

#----Tesztek--------------------------------------------------------------------
test_that("Jól működik-e a get_aligns függvény? - különféle tesztek", {
  # character típusú-e az NA-val megadott get_aligns outputja?
  expect_is(get_aligns(NA),"character")
  # ha nem adunk meg argumentumot, akkor jelez hibát?
  expect_error(get_aligns())
  # leellenőrzi, hogy több rossz szereplő van-e, mint 1? - mert ezt várjuk
  expect_gt(length(get_aligns("Bad Characters")),1)
  # leellenőrzi, hogyha nem jó/nem létező align-t adunk meg,
  # akkor tényleg nem ad meg semmit?
  expect_length(get_aligns("Comic Characters"),0)
  # mivel tudjuk, hogy összesen 23272 szereplő van a comic_characters 
  # database-ben, ezért ennél kevesebb jó/rossz karakternek kell lennie
  # erre teszt:
  expect_lt(length(get_aligns("Good Characters")),23272)
})