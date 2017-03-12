
############### a homework-02.R fájlhoz tartozó függvények ####################

################       a get_gender függvény      #############################

get_gender <- function(nev){
  # Létrehozom a neme és hiany segédváltozókat:
  neme <- c()
  hiany <- c()
  x <- NA
  # egy ciklus írok, mely megcsinálja a "neme" változót, ami vagy a gsm vagy 
  # a sex változóból jön
  for(i in 1: length(comic_characters$name)){
    neme[i] <- comic_characters$gsm[i]
    hiany[i] <- is.na(neme[i])
    if (hiany[i] == "TRUE"){
      neme[i] <- comic_characters$sex[i]
    }
    
    # végül kiíratom az argumentumban megadott névhez tartozó karakter nemét:
    
    if (nev == comic_characters$name[i]){
      x <- nev
      print(strsplit(neme[i], " Characters"))
    }
  }
  
  # Ha esetleg elrontjuk a karakter nevét, akkor ez az üzenet fogad:
  
  if (is.na(x) == "TRUE"){
    print("Ilyen név nincs az adatbázisban. Kérlek ellenőrizd, hogy jól írtad-e
          be a karakter nevét!")
  }
  }

################################################################################

###############       get_aligns függvény              #########################

# Ez a függvény az adott align-hoz tartozó karakterek nevét írja ki ABC rendben

get_aligns<-function(align){
  # megcsinálom olyanra, hogy működjön "NA" beírása esetén is
  missing <- is.na(comic_characters$align)
  for (i in 1:length(comic_characters$align)){
    if (missing[i] == "TRUE"){
      comic_characters$align[i] <- "NA"
    }
  }
  # Egy subsetet hozok létre, mely az adott típushoz tartozó karaktereket
  # tartalmazza
  comic_align<-
    subset(comic_characters$name, comic_characters$align==align)
  # kiíratjuk növekvő sorrendben
  print(sort(comic_align, decreasing=F))
}



