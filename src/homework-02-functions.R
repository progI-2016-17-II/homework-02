##Házi feladat 2
##Programozás I.
##2016/17. II. félév
##Szilágyi Ádám
##2017.03.15
                              ###FUNCTIONS###

#Get_gender függvény írása

get_gender <- function(name){
  
  if (is.na(comic_characters$gsm[comic_characters$name == name]) == TRUE) {
    print(substr(comic_characters$sex[comic_characters$name == name][1], 1, 
          nchar(comic_characters$sex[comic_characters$name == name]) - 11))
  }else {
    print(comic_characters$gsm[comic_characters$name == name][1])}
  
}

#Get_aligns függvény írása

get_align_notworking <- function(which_side) { #ez az egész vmiért 1 értéked ad
ifelse (which_side == "Good Characters", 
        comic_characters$name[comic_characters$align == "Good Characters"],
ifelse (which_side == "Bad Characters",
          comic_characters$name[comic_characters$align == "Bad Characters"],
ifelse (which_side == "Neutral Characters",
        comic_characters$name[comic_characters$align == "Neutral Characters"],                 
ifelse (which_side == "Reformed Criminals",
        comic_characters$name[comic_characters$align == "Reformed Criminals"],
ifelse(is.na(which_side) == TRUE,
        comic_characters$name[(is.na(comic_characters$align) == TRUE)],
                                         "Who are you?")))))
}


#Ez az érvényes megoldásom:

get_align<-function(which_side){
if(is.na(which_side) == FALSE){
sort(comic_characters$name[comic_characters$align == which_side]
     , decreasing = FALSE) 
}else{
sort(comic_characters$name[is.na(comic_characters$align)==TRUE]
     , decreasing = FALSE)
}
}










