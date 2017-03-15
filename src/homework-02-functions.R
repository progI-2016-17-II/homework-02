##3. get_gender fv: kiírja az adott hős genderét/szexuális orientációját--------
get_gender <- function(hero) {
  sor <- subset.data.frame(comic_characters, comic_characters$name == hero)
  if (is.na(sor$gsm)==T) {gender <- sor$sex
  } else {gender <- sor$gsm}
  gender <- gsub("Cha.*", "\\1", gender)
  gender <- trimws(gender, "r")
  gender[1]
}
##Megj.: amelyik karakter többször is szerepel, ott a fv az eredmény mellett dob
##egy warningot is, amennyiben gsm=NA, mert a feltétel így 1-nél hosszabb, de
##ezen már nem tudtam segíteni
#-------------------------------------------------------------------------------

##5. get_aligns fv: az align oszlop értékeit megadva kiírja az összes odatartozó
##karakter nevét ABC sorrendben-------------------------------------------------
get_aligns <- function(alignment) {
  if (is.na(alignment))
  {side <- subset.data.frame(comic_characters, 
                             is.na(comic_characters$align))
  } else {side <- subset.data.frame(comic_characters, 
                                    comic_characters$align == alignment)
  }
  (sort(side$name))
}

##FELADAT VÉGE------------------------------------------------------------------