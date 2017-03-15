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

#II.3(functions)-4.feladat: get_gender + Superhero's gender

source("src/homework-02-functions")

get_gender("Thor")
get_gender("Katherine Pryde")
get_gender("Loki Laufeyson")

#II.5-6 feladat: get_aligns + bad/good characters

#Ez miért nem működik?
get_align_notworking("Good Characters")
get_align_notworking("Bad Characters")

#Ez már jó lesz!
get_align("Good Characters")
get_align("Bad Characters")


