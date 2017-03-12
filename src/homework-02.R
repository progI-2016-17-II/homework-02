##Házi Feladat 2
# Prog 1
# félév: 16-17/2
# károlyi
# 17-03-12

library(fivethirtyeight)
comic <- comic_characters

name <- strsplit(comic$name, "[(]")
head(name)


for (i in 1:length(name)) {
  comic$name[i]<-name[[i]][1]
}


get_gender("Deadpool ")
get_gender("Susan Storm ")
get_gender("Thor ")
get_gender("Katherine Pryde ")
get_gender("Loki Laufeyson ")

summary(as.factor(comic$align))
get_align("Bad Characters")
get_align("Good Characters")
get_align("Neutral Characters")
get_align("NA")
get_align("Reformed Criminals")
get_align("többi")

reformed <- c("Owen Mercer ", "Brian Elliot ", "Paula von Gunther ")
