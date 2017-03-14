#Házi feladat 2
#Programozás I.
#2016/17. II. félév
#Hering András
#2017.03.14

#2.feladat
#2/1
if (!("fivethirtyeight" %in% installed.packages())) {
  install.packages("fivethirtyeight")
}
library(fivethirtyeight)
data("comic_characters")

#2/2

namesplit <- strsplit(comic_characters$name, " (", fixed = T)
comic_characters$name <- sapply(namesplit,"[",1)
# ismétlődések jönnek létre, ez eléggé megfúrja a get_gendert

#2/3 funkció teszt

# is.na(comic_characters$name["Mookie"])
# get_gender("Mookie")
# comic_characters$gsm[comic_characters$name == "Mookie"]
# subset(comic_characters,comic_characters$name == "Raymonde Belmonde")
# get_gender("Raymonde Belmonde")
# subset(comic_characters,comic_characters$name == "Alma Chalmers")
# get_gender("Alma Chalmers")

#2/4

get_gender("Katherine Pryde")
get_gender("Loki Laufeyson")
get_gender("Thor")

#2/5 teszt

# get_aligns()
# get_aligns("Bad Characters")
# get_aligns("Good Characters")
# get_aligns("Neutral Characters")
# get_aligns("Reformed Criminals")
# get_aligns(NA)
# 
# sum(c(length(get_aligns()),length(get_aligns("Good Characters")),
#       length(get_aligns("Neutral Characters")),length(get_aligns(NA)),
#       length(get_aligns("Reformed Criminals"))))
# summary(comic_characters$align)
# jónak tűnik




