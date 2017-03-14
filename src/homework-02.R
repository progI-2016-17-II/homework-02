#Házi feladat 2
#Programozás I.
#2016/17. II. félév
#Hering András
#2017.03.14

#### 2/1 ####

if (!("fivethirtyeight" %in% installed.packages())) {
  install.packages("fivethirtyeight")
}
library(fivethirtyeight)
data("comic_characters")

#### 2/2 ####

namesplit <- strsplit(comic_characters$name, " (", fixed = T)
comic_characters$name <- sapply(namesplit,"[",1)
# ismétlődések jönnek létre, ez eléggé megfúrja a get_gendert

#### 2/3 ####

source("src/homework-02-functions.R")

#### 2/4 ####

get_gender("Katherine Pryde")
get_gender("Loki Laufeyson")
get_gender("Thor")

#### 2/5 ####

# sum(c(length(get_aligns()),length(get_aligns("Good Characters")),
#       length(get_aligns("Neutral Characters")),length(get_aligns(NA)),
#       length(get_aligns("Reformed Criminals"))))
# summary(comic_characters$align)

# jónak tűnik

#### 2/6 ####

get_aligns("Bad Characters")
get_aligns("Good Characters")

#### 2/7 ####

#dir.create("~/homework-02/tests")
