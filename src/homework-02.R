#######################
#Házi Feladat II.     #
#Programozás I.       #
#2016/2017 II. félév  #
#Gallina Beáta        #
#2017.03.14.          #
#######################

#_________________________________II. Feladat___________________________________

# 1.)
#Behívom a package-et és beolvasom a datasetet:

if (!("fivethirtyeight" %in% installed.packages())) {
  install.packages("fivethirtyeight")
}
library(fivethirtyeight)

data(comic_characters)

head(comic_characters)


# 2.)
#() rész levásága:

for (j in 1:nrow(comic_characters)) {
  comic_characters$name[j] <-
    unlist(strsplit(comic_characters$name[j],
                    split = " (", fixed = TRUE))[1]
}



#Character rész levágása:

for (i in 1:nrow(comic_characters)) {
  comic_characters$sex[i] <- unlist(strsplit(comic_characters$sex[i],
                                             split = " ", fixed = TRUE))[1]
}

for (h in 1:nrow(comic_characters)) {
  comic_characters$gsm[h] <- unlist(strsplit(comic_characters$gsm[h],
                                             split = " ", fixed = TRUE))[1]
}

#Behívom a függvényeket:

source("~/homework-02/src/homework-02-functions.R")

#4.)
#get_gender függvény működése a gyakorlatban:

get_gender ("Thor")
get_gender ("Katherine Pryde")
get_gender ("Loki Laufeyson")

#5.) Functions scriptben

#6.)
#get_aligns függvény működése a gyakorlatban:

get_aligns ("Good Characters")
get_aligns ("Bad Characters")


#7.) Tests scriptben
