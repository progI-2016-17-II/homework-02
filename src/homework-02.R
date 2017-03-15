
#########################
# Házi feladat 2        #
# Programozás I.        #
# 2016/17. II. félév    #
# Mogyorósi Pálma       #
# 2017.03.14.           #
#########################

#---------------------------II.01 feladat---------------------------
# Hívd be a előző háziban is használt fivethirtyeight package-et! 
# Olvasd be a comic_characters datasetet!

install.packages("fivethirtyeight")
# Package behívása
require("fivethirtyeight")

data(comic_characters)
comic_characters

# Függvények behívása
source("src/homework-02-functions.R")

#---------------------------II.02 feladat---------------------------
# A data frame-ben van egy name nevű oszlop. 
# Ezt alakítsd át úgy, hogy minden karakternek csak az elsődleges neve 
# maradjon ott mindenféle zárójeles rész nélkül. 
# Például “Spider-Man (Peter Parker)” helyett “Spider-Man”, 
# “Benjamin Grimm (Earth-616)” helyett “Benjamin Grimm” maradjon. 
# Ehhez segítségedül lehet az strsplit függvény.


# Az első nyitó zárójel előtti tartalom leválasztása
comic_characters$name <- substring(comic_characters$name,1,
  regexpr("(",comic_characters$name,fixed=T)-2)


#---------------------------II.03 feladat---------------------------
# Kész a függvény
get_gender

#---------------------------II.04 feladat---------------------------
# Nézd meg az előzőleg írt get_gender függvénnyel, 
# hogy milyen genderű Thor, Katherine Pryde és Loki Laufeyson!

get_gender("Thor")
get_gender("Katherine Pryde")
get_gender("Loki Laufeyson")
