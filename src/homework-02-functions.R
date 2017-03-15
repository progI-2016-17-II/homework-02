# Függvények

#-----------------------------------------------------------------------------------------------
# 2.3.get_gender függvény: A karakter nevének megadása után megadja annak nemét

get_gender <- function(nev) {
  rowind <- which(comic_characters$name_pri==nev,  arr.ind=T)[[1]] # lekérem a név sorindexét
  if (is.na(comic_characters$gsm[rowind])) {print(strsplit(as.character(comic_characters$sex[rowind]), split = " ")[[1]][[1]])} # az indexelt sorban megnézem a feltételek teljesülését 
  else  {print(strsplit(as.character(comic_characters$gsm[rowind]), split = " ")[[1]][[1]])} 
}

#-------------------------------------------------------------------------------------------------
# 2.5. get_aligns függvény: 
#align <- as.character(comic_characters$align)
#name_pri <- as.character(comic_characters$name_pri)


rm(get_aligns)
get_aligns <- function(tipus) {
  sub_comic1 <- subset(comic_characters, align==tipus)
  sub_comic1 <- data.frame(sub_comic1)
  sub_comic2 <- subset(comic_characters, is.na(align))
  sub_comic2 <- data.frame(sub_comic2)
  
  tip <-c(0)
  
  if (!is.na(tipus)==TRUE){
    for (j in 1:length(sub_comic1$align)){
      if (sub_comic1$align[j] == tipus) {tip[j]<-sub_comic1$name_pri[j]}
      
      
      #{print(sort(sub_comic1$name_pri[j], decreasing = FALSE))}
    }
  }
  
  else if (is.na(tipus)==TRUE) {
    for (j in 1:length(sub_comic2$align)){
      if (is.na(sub_comic2$align[j])) {tip[j]<-sub_comic2$name_pri[j]}
      #{print(sort(sub_comic2$name_pri[j], decreasing = FALSE))}
    }
  }
  sort(tip)
}


