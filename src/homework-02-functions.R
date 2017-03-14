#__________________________Get_gender függvény__________________________________
#A strsplitnél a () előtti szóközt nem tudtam kivágni, így amikor a fgv
#használatánál lekérjük a name-hez tartozó adatokat ilyen formátumban kell
#megtenni: "Thor " (szóközzel)

get_gender <- function(name) {
  v = (match(name, comic_characters$name))
  
  
  if (is.na(comic_characters$gsm[v]) == TRUE) {
    print(comic_characters$sex[v])
    
  } else {
    print(comic_characters$gsm[v])
    
  }
}

#_____________________________Get_aligns függvény_______________________________
# Valamiért az NA feltétel nem jó

get_aligns <- function(align_help) {
  align_filter <- subset(comic_characters, align == align_help)
  if (is.na(align_filter$align[1]) == T) {
    sort(align_filter$name, decreasing = F)
  } else {
    sort(align_filter$name, decreasing = F)
  }
}
