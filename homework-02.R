##### Házi feladat 2 #####
# Programozás I.         #
# 2016/2017. II.félév.  #
# Hőbér Boglárka        #
# 2017-03-15           #

#1.feladat:package behívás és dataset beolvasása
install.packages("fivethirtyeight")
library("fivethirtyeight")
data()
data("comic_characters")

#2.feladat:name oszlop kettévágása
?strsplit
#Mivel ezt csak character típusuaknál lehet használni, ezért megnézem,
#hogy milyen típusúak
is.character(comic_characters$name)
#Character típusúak tehát nem kell átalakítani
#Oszlop kettévágása
for(i in 1:nrow(comic_characters)) {
  comic_characters$name[i] <- strsplit(comic_characters$name, "[][()]") [[i]][1] 
}
#Ez elég sok ideig futott, ezért inkább kipróbálom, hátha gyorsabb ha először
#definiáljon,hogy mit vágjon szét. 
name_v2 <- strsplit(comic_characters$name, "[][()]")
for(i in 1:nrow(comic_characters)) {
  comic_characters$name[i] <- name_v2 [[i]][1] 
}

#3.feladat
#Az előző feladathoz hasonló módszerrel kettévágom a sex oszlopot
sex_v2 <- strsplit(comic_characters$sex, " ") 
for (i in 1:nrow(comic_characters)){
  comic_characters$sex[i] <- sex_v2[[i]][1]
}
#4.feladat: get_gender kipróbálása
get_gender("Thor")
get_gender("Katherine Pryde")
get_gender("Loki Laufeyson")
#A get_gender függvényem sajnos nem működik jól, kipróbáltam a name oszlop szét
#vágása előtt is, akkor működött. Lehet, hogy az a probléma, hogy pl. több 
#Thor kezdetű is van és nem tudja melyiket dobja ki. A probléma orvoslására
#nem találtam megoldást sajnos. 

#5.feladat:megnézem milyen típusú karakterek lehetnek
comic_characters$align <- as.factor(comic_characters$align)
summary(comic_characters$align)

#6.feladat:get_align függvény kipróbálása
get_align("Good Characters")
get_align("Bad Characters")

