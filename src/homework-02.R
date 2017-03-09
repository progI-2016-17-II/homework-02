############################
# Házi feladat 2           #
# Programozás I.           #
# 2016/17. II. félév       #
# Nagy Daniella            #
# 2017.03.09.              #
############################

# --- II. feladat --------------------------------------------------------------

# A függvényeket majd innét hívja be:
source("src/homework-02-functions.R")

# 1.
# fivethirtyeight package behívása
library(fivethirtyeight)
# comic_characters dataset beolvasása
data(comic_characters)
head(comic_characters)
# a dataset megtekintése
View(comic_characters)

# 2.
# megnézem a strsplit függvény helpjét
?strsplit
# ellenőrzöm, hogy character típusú-e a name oszlop
class(comic_characters$name)
# átalakítom a name oszlopot úgy, hogy minden karakternek csak az elsődleges 
# neve maradjon ott
# először kettészedem a nevüket két részre a zárójeles rész alapján
# ehhez a strsplit függvényt használom
names<-
  strsplit(comic_characters$name, "[()]")
# mivel ez ekkor egy lista, aminek nekem az 1., 3., 5., stb. eleme kell
# ezért a következőképpen tudom megfelelővé tenni az oszlopom tartalmát:
comic_characters$name<-
  unlist(names)[2*(1:length(comic_characters$name))-1]

# 3.

