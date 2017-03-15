#Házi feladat 2
#Programozás I.
#2016/17. II. félév
#Hering András
#2017.03.14
#Tesztek

if (!("testthat" %in% installed.packages())) {
  install.packages("testthat", dependencies = T)
}
library(testthat)
source("~/homework-02/src/homework-02.R")


# default teszt pipa

test_that("default működik", {
  expect_output(print(get_aligns()[696]),
   print(sort(comic_characters$name[comic_characters$align == "Bad Characters"],
             decreasing = F))[696])
})

# NA működik pipa

test_that("NA működik", {
  expect_gt(length(print(get_aligns(align = NA))),0)
})

# type teszt pipa

test_that("type teszt", {
  expect_type(get_aligns(), type = "character")
})

# length teszt pipa?
# A sort valahogy kikupálja a lengthet

test_that("length teszt", {
  expect_length(get_aligns("Bad Characters"),
    length(comic_characters$align[comic_characters$align == "Bad Characters"]))
})
# ez nem veszi be az NA-kat


test_that("length teszt2", {
  expect_length(get_aligns("Bad Characters"),
  length(sort(comic_characters$name[comic_characters$align == "Bad Characters"]
              , decreasing = F)))
})
# ez már igen

# coverage teszt

sum(c(length(get_aligns()),length(get_aligns("Good Characters")),
     length(get_aligns("Neutral Characters")),length(get_aligns(NA)),
     length(get_aligns("Reformed Criminals"))))
summary(comic_characters$align) # megszámolja NA-t
(table(comic_characters$align)) # nem számolja meg az NA-t

#jónak tűnik

