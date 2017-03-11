############################
# Házi feladat 2           #
# Programozás I.           #
# 2016/17. II. félév       #
# Nagy Daniella            #
# 2017.03.11.              #
############################

#----II. feladat----------------------------------------------------------------

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
# ehhez a strsplit függvényt használom, a "space(" után vágja a neveket
# ez azért kellett, mert van egy space még a zárójel előtt
names<- strsplit(comic_characters$name, "[ ][(]")
for (i in 1:nrow(comic_characters)){
  comic_characters$name[i]<-names[[i]][1]
}

# 3. get_gender függvény létrehozása
# a függvény a homework-02-functions.R scriptben található

# 4. megnézni, hogy milyen genderű Thor, Katherine Pryde és Loki Laufeyson!
get_gender("Thor")
get_gender("Katherine Pryde")
get_gender("Loki Laufeyson")

# 5. get_align függvény létrehozása
# a függvény a homework-02-functions.R scriptben található

# 6. Bad Characters és Good Characters neveinek kiírása
# A "Bad Characters" align-nal jelzett szereplők nevei ABC rendben
get_aligns("Bad Characters")
# A "Good Characters" align-nal jelzett szereplők nevei ABC rendben
get_aligns("Good Characters")
# Az "NA" align-nal jelzett (vagyis hiányzú align-ú) szereplők nevei ABC rendben
get_aligns(NA)

# Arra nem jöttem rá, hogy mitől függ, hogy hány oszlopban írja ki ez a 
# get_aligns függvény a karakterek neveit.
