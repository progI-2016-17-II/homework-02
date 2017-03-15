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


get_align_notworking <- function(align) { #ez az egész vmiért 1 értéked ad
  ifelse (align == "Good Characters", 
          comic_characters$name[comic_characters$align == "Good Characters"],
          ifelse (align == "Bad Characters",
                  comic_characters$name[comic_characters$align == "Bad Characters"],
                  ifelse (align == "Neutral Characters",
                          comic_characters$name[comic_characters$align == "Neutral Characters"],                 
                          ifelse (align == "Reformed Criminals",
                                  comic_characters$name[comic_characters$align == "Reformed Criminals"],
                                  ifelse(is.na(comic_characters$align) == TRUE,
                                         comic_characters$name[(is.na(comic_characters$align) == TRUE)],
                                         "Who are you?")))))
}

#----------------

get_align<-function(which_side){ #ez már jó lesz!
if(is.na(which_side) == FALSE){
sort(comic_characters$name[comic_characters$align == which_side]
     , decreasing = FALSE) 
}else{
sort(comic_characters$name[is.na(comic_characters$align)==TRUE]
     , decreasing = FALSE)
}
}










