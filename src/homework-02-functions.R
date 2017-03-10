#----get_gender függvény--------------------------------------------------------
get_gender <- function(name) {
  # A karakter nevének megadásakor adja vissza a karakter genderét!
  gsm <- strsplit(comic_characters$gsm, "[ ]")
    for (i in 1:nrow(comic_characters)){
    print(gsm[[i]][1])
  sex <- strsplit(comic_characters$sex, "[ ]")
    for (i in 1:nrow(comic_characters)){
      print(sex[[i]][1])
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
  # még azt is beállítottam, hogy a nevek listázásánál azt is írja ki, ha
  # van az adott align-nál olyan, hogy hiányzik a karakter neve.
  if (is.na(align)==TRUE){
    comic_align_na<-
      subset(comic_characters$name, is.na(comic_characters$align)==TRUE)
    # majd ezt íratom ki növekvő sorrendben
    print(sort(comic_align_na, decreasing=F, na.last = T))
  }else{
    comic_align<-
    subset(comic_characters$name, comic_characters$align==align)
    # majd ezt íratom ki növekvő sorrendben
    print(sort(comic_align, decreasing=F, na.last = T))
  }
}
