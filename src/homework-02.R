# I. feladat

##Házi feladat 2
##Programozás I.
##2016/17. II. félév
##Szilágyi Ádám
##2017.03.15


#II.1 feladat: Package installálás, behívás

if (!("fivethirtyeight" %in% installed.packages())) {
  install.packages("fivethirtyeight")
}

require(fivethirtyeight, quietly = TRUE)

data(comic_characters)

head(comic_characters)

#II.2 feladat: Zárójelek levágása

for (i in 1:nrow(comic_characters)) {
  comic_characters$name[i] <-
    unlist(strsplit(comic_characters$name[i],
                    split = "(", fixed = TRUE))[1]
  }

comic_characters$name <-
  substr(comic_characters$name, 1, nchar(comic_characters$name) - 1)

#II.2 feladat

source("src/homework-02-functions")


get_gender("Thor")



