#######################
# Házi feladat 2.     #
# Programozás I.      #
# 2016/17. II. félév  #
# Nagy szimonetta     #
# 2017-03-15          #
#######################


##1. fivethirtyeight pckg behívása, comic_characters beolvasása ----------------
library("fivethirtyeight")
comic_characters

##2. name oszlop átalakítása zárójeles nevek elhagyásával-----------------------
#külön táblázatban megjelenítem a df-et
View(comic_characters)

##az oszlopba beteszi azt, ami azután marad, hogy mindent, ami a zárójel nyitása
##után van, szóközzel helyettesíti, az utolsó argumentum adja meg, hogy ezt
##hol csinálja, utána eltünteti a whitespaceket a jobb oldalról
comic_characters$name <- gsub("\\(.*", "\\1", comic_characters$name)
comic_characters$name <- trimws(comic_characters$name, "r")

##fv script behívása a következő feladatokhoz ----------------------------------
source("src/homework-02-functions.R")

##4. get_gender fv  kipróbálása-------------------------------------------------
##get_gender kipróbálása  Thor, Katherine Pryde és Loki Laufeyson esetében
get_gender("Thor")
get_gender("Katherine Pryde")
get_gender("Loki Laufeyson")

##6. get_aligns fv kipróbálása--------------------------------------------------
##get_aligns kipróbálása "Bad Characters" és "Good Characters" esetére
get_aligns("Bad Characters")
get_aligns("Good Characters")

##FELADAT VÉGE------------------------------------------------------------------
