#----get_gender függvény--------------------------------------------------------
get_gender <- function(name){
  # A karakter nevének megadásakor adja vissza a karakter genderét!
  # Ha több neme van, vagy többször szerepel az adatbázisban,
  # akkor kiírja az összeset
  gender <- NA
  for(i in 1:nrow(comic_characters)){
    gender[i] <- comic_characters$gsm[i]
    
    if (is.na(gender[i])==TRUE){
      gender[i] <- comic_characters$sex[i]
    }
    
    if (comic_characters$name[i]==name){
      print(strsplit(gender, " ")[[i]][1])
    }
  }
}

#----get_aligns függvény--------------------------------------------------------
get_aligns<-function(align){
  # Írja ki az adott align-hoz tartozó karakterek nevét ABC rendben!
  # A nevek subsetjét hozom létre, amelyek az adott align-hoz tartoznak.
  # Ezelőtt azonban, hogy NA argumentummal is működjön, kell egy feltétel,
  # ez külön subsetet hoz létre, ha az argumentum NA.
  # majd az else után a nem NA bemeneteket kezeli
  if (is.na(align)==TRUE){
    comic_align_na<-
      subset(comic_characters$name, is.na(comic_characters$align)==TRUE)
      # majd ezt íratom ki növekvő sorrendben 
      sort(comic_align_na, decreasing=F)
  } else {
    comic_align<-
      subset(comic_characters$name, comic_characters$align==align)
      # majd ezt íratom ki növekvő sorrendben
      sort(comic_align, decreasing=F, na.last = T)
  }
}
