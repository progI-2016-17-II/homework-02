############################
#Házi feladat 2            #
#Programozás I.            #
#2016/17. II. félév        #
#Kelemen Kinga             #
#2017-03-10                #
############################

#II. feladat
#1.feladat
library(fivethirtyeight)

data(comic_characters)
head(comic_characters)

#2.feladat

uj_name=strsplit(comic_characters$name, " (", fixed=TRUE)
for (i in 1:nrow(comic_characters))
{
  comic_characters$name[i]=uj_name[[i]][1]
}
head(comic_characters$name)

#3. feladat
#megoldás a homework-02-functions.R-ben
source("src/homework-02-functions.R")

get_gender()

#4. feladat

get_gender("Thor")
get_gender("Katherine Pryde")
get_gender("Loki Laufeyson")

#5.feladat
#megoldás a homework-02-functions.R-ben

#6.feladat
source("src/homework-02-functions.R")

get_aligns("Good Characters")
get_aligns("Bad Characters")

#7.feladat
#megoldás a test-get-aligns.R-ben