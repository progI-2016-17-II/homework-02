#------------------------------------------------------
#                       II.feladat #
#------------------------------------------------------
#------------------------------------------------------
# 7.
#------------------------------------------------------

#----Packages and sources------------------------------
if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)
source("src/homework-02-functions.R")

#----Test function get_align---------------------------

# default tesztelése
test_that(
  "get_aligns returns 'Hiányzó input.' as default", {
    expect_equal(get_aligns(), "Hiányzó input.")
    expect_is(get_aligns(), "character")
  })

# az output tesztelése a megjavult bűnözők esetében
test_that(
  "get_aligns returns character vector for character type align argument", {
    expect_equal(get_aligns(align = "Reformed Criminals"), c("Brian Elliot (New Earth)","Owen Mercer (New Earth)","Paula von Gunther (New Earth)"))
    expect_is(get_aligns((align = "Reformed Criminals")), "character")
  })