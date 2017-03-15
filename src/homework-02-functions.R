##Házi feladat 2
##Programozás I.
##2016/17. II. félév
##Szilágyi Ádám
##2017.03.15
                              ###FUNCTIONS###


get_gender <- function(name){
  
  if (is.na(comic_characters$gsm[comic_characters$name == name]) == TRUE) {
    print(substr(comic_characters$sex[comic_characters$name == name][1], 1, 
          nchar(comic_characters$sex[comic_characters$name == name]) - 11))
  }else {
    print(comic_characters$gsm[comic_characters$name == name][1])}
  
}
