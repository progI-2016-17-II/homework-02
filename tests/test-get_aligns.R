##testthat behívása-------------------------------------------------------------
library(testthat)

##get_aligns 0 elemű vektort ad, ha az argumentumba számot írunk
test_that("get_aligns does not work with numeric argument",
          {expect_identical(get_aligns(alignment = 5), character(0))
          })

##get_aligns karaktervektort ad eredményként
test_that("get_aligns returns a character vector", 
          {expect_type(get_aligns(alignment = "Good Characters"), "character")
          })

##get_aligns Neutral Characterekre 100 eleműnél hosszabb vektort ad
test_that("get_aligns returns more than 100 cases for Neutral Characters",
          {expect_gt(length(get_aligns(alignment = "Neutral Characters")), 100)
          })

##FELADAT VÉGE------------------------------------------------------------------