
# Ide jönnek a get_aligns függvényhez tartozó tesztek

# testthat package installálása, behívása 
if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)

# 1. teszt

test_that("get_aligns deals with NA cases if NA is a Chr input" , {
  expect_is(get_aligns(align = "NA"), "character")
  expect_output(get_aligns(align = NA), regexp = NA)
})

# Ez a teszt megbukik, mert ad választ NA esetén is a függvény, csak azt, hogy
# 0 db ebbe a csoportba tartozó karakter van. Ugyanezt írta ki, akkor is, mielőtt
# átalakítottam volna Chr-ré az NA-t és simán futtattam, ezért csináltam belőle
# Chr típusú eseteket.

###############################################################################

# 2. teszt
# Hiba, ha nincs "" között az input argumentum:

test_that("it is a mistake if get_aligns has a non-character argument" , {
  expect_is(get_aligns(align = "NA"), "character")
  expect_error(get_aligns(align = A))
})
