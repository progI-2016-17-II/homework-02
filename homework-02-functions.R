#Get_gender függvény megírása
get_gender <- function(name_v2){
  if (is.na(comic_characters$gsm[comic_characters$name == name_v2])){
    print(comic_characters$sex[comic_characters$name == name_v2])
  }
  else {
    print(comic_characters$gsm[comic_characters$name == name_v2])
  }
}


#Get_align függvény megírása
behaviour <- comic_characters$align
get_align <- function(behaviour){
  if(comic_characters$align == "Good Characters"){
    sort(comic_characters$name[which(comic_characters$align == behaviour)])
  }else if (comic_characters$align == "Bad Characters"){
    sort(comic_characters$name[which(comic_characters$align == behaviour)]) 
  }else if (comic_characters$align == "Reformed Criminals"){
    sort(comic_characters$name[which(comic_characters$align == behaviour)])
  }else if(comic_characters$align == "Neutral Character"){
    sort(comic_characters$name[which(comic_characters$align == behaviour)])
  }else {
    sort(comic_characters$name[which(comic_characters$align == behaviour)])
  }
}
