#----get_gender függvény--------------------------------------------------------
get_gender <- function(name) {
  # A karakter nevének megadásakor adja vissza a karakter genderét!
  for(i in 1: nrow(comic_characters)){
    if (comic_characters$name[i]==name){
      if (is.na(comic_characters$gsm[i+1])==TRUE){
        print(comic_characters$sex[i+1])
      }
      else {
        print(comic_characters$gsm[i+1])
      }
    }
    print("Nem jó nevet adtál meg!")
   }
  }

#----get_aligns függvény--------------------------------------------------------
get_aligns<-function(align){
    comic_align<-
    subset(comic_characters, comic_characters$align==align)
  return(sort(table(comic_align$name)))
}
