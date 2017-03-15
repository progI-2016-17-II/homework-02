#Házi feladat 2
#Programozás I.
#2016/17. II. félév
#Hering András
#2017.03.14
#Funkciók

#### 2/3 ####

get_gender <- function(name) {
  if (is.na(comic_characters$gsm[comic_characters$name == name]) == T) {
    paste(strsplit(comic_characters$sex[comic_characters$name == name]
                   , " ", fixed = T)[[1]][1])
  } else {
    paste(strsplit(comic_characters$gsm[comic_characters$name == name]
                   , " ", fixed = T)[[1]][1])
  }
}

#### 2/5 ####

get_aligns <- function(align = "Bad Characters") {
  if(is.na(align)){
    paste(sort(comic_characters$name[is.na(comic_characters$align)],
               decreasing = F))
  } else {
    paste(sort(comic_characters$name[comic_characters$align == align],
               decreasing = F ))
  }

}
