##Házi feladat 2
##Programozás I.
##2016/17. II. félév
##Szilágyi Ádám
##2017.03.15
                              ###FUNCTIONS###

get_gender <- function(superhero) {
  if (is.na(comic_characters$gsm[comic_characters$name == superhero]) == 1) {
    print(substr(comic_characters$sex, 1, nchar(comic_characters$sex) - 11)
          [[1]][1])
} else {
    print(comic_characters$gsm[comic_characters$name == superhero])[[1]][1]}
  }
