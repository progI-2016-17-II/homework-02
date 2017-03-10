#----get_gender függvény--------------------------------------------------------
get_gender <- function(name) {
  # A karakter nevének megadásakor adja vissza a karakter genderét!
  for(i in nrow(comic_characters)){
    if(comic_characters$name[i]==name){
      if (is.na(comic_characters$gsm[i])==TRUE){
      print(unlist(strsplit(comic_characters$sex," "))[
        2*i-1])
    } else {
      print(unlist(strsplit(comic_characters$sex," "))[
        2*i-1])    
    }
      
    } 
    
  }
}