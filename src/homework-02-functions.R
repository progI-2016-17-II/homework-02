 #---------------------------II.03 feladat---------------------------
# Írj egy függvény get_gender néven, aminek az a célja, 
# hogy egy karakter nevének megadásakor visszaadja a karakter genderét. 
# A karakter genderét úgy add vissza, hogy ha a gsm oszlopban NA érték van, 
# akkor a sex oszlop tartalmát írja ki a függvény, viszont ha a  gsm oszlop 
# értéke nem NA, akkor a gsm oszlop tartalmát írja ki. 
# A gender kiírásakor vágd le a " Characters" részt, tehát pl. 
# “Male Characters” helyett “Male”-t, 
#“Female Characters” helyett “Female”-t írjon ki a függvény.


get_gender <- function(who) {
  i <- which(comic_characters$name==who)[1]
  if (is.na(comic_characters$gsm[i])) 
  { print(substring(comic_characters$sex[i],1,regexpr(" ",comic_characters$sex[i],fixed=T)-1)) 
  } else { print(comic_characters$gsm[i]) }
}

#---------------------------II.05 feladat---------------------------
# Írj egy függvényt get_aligns néven, aminek az a célja, hogy az align oszlop 
# értékeit megadva kiírja az összes karakter nevét ABC sorrendben, 
# akik adott értékhez vannak sorolva! Tehát például a “Bad Characters” 
# bemenetre térjen vissza a függvény az összes gonosz karakter nevével. 
# Figyelj arra, hogy NA megadása esetén is működjön a függvény!


get_aligns <- function(goodbad=NA) {
  if (is.na(goodbad)) {
    print(sort(comic_characters$name[is.na(comic_characters$align)]))
  } else print(sort(comic_characters$name[regexpr(goodbad,comic_characters$align)>0]))
}

