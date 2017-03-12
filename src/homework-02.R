#########################
#  Házi feladat 2       #
#  Programozás I.       #
#  2016/17. II. félév   #
#  Verba Zoltán         #
#  2017.03.10.          # 
#########################

# II. feladat

# 1. feladatrész: adatok behívása

# fivethirtyeight installálása, ha szükséges, majd behívás
if (!("fivethirtyeight" %in% installed.packages())) {
  install.packages("fivethirtyeight")
}
library(fivethirtyeight)

data(package = "fivethirtyeight")
data(comic_characters)
head(comic_characters)
View(comic_characters)

################################################################################

# 2. feladatrész

# megnézem a strsplit függvény helpjét
?strsplit
# ellenőrzöm, hogy character típusú-e a name oszlop
class(comic_characters$name)
# átalakítom a name oszlopot úgy, hogy minden karakternek csak az elsődleges 
# neve maradjon ott
# először kettészedem a nevüket két részre a zárójeles rész alapján
# ehhez a strsplit függvényt használom
names<- strsplit(comic_characters$name, "[ ][()]")

# aztán egy for ciklussal mindegyik nevet átíratom az első tagra
for (i in 1:nrow(comic_characters)){
  comic_characters$name[i]<-names[[i]][1]
}

################################################################################

# 3. és 4. feladatrész

# a megírt get_gender és get_aligns függvény behívása

source("src/homework-02-functions.R")

# nézzük meg a következő 3 karakter nemét:
# 1. Thor:
get_gender("Thor")

# 2. Katherine Pryde:
get_gender("Katherine Pryde")

# 3. Loki Laufeyson:
get_gender("Loki Laufeyson")

################################################################################

# 5. és 6. feladatrész

# lekérem a good és a bad karakterekhez tartozó neveket
get_aligns("Good Characters")
get_aligns("Bad Characters")

################################################################################


