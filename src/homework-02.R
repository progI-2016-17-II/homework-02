#
#                    Házi feladat 2     
#                    Programozás I.     
#                  2016/17. II. félév 
#                     Farsang Bence      
#                      2017.03.10.
#
#------------------------------------------------------
#                       I.feladat #
#------------------------------------------------------

# clear console & environment
cat("\014")    
rm(list=ls(all=TRUE))


#------------------------------------------------------
#                       II.feladat #
#------------------------------------------------------
#------------------------------------------------------
# 1.
#------------------------------------------------------

# package telepítés, ha még nincs telepítve
if (!("fivethirtyeight" %in% installed.packages())) {
  install.packages("fivethirtyeight", dependencies  =  T)}

# package behívása
library(fivethirtyeight)

# adat megnyitása
data(package ="fivethirtyeight")
data(comic_characters)
head(comic_characters)

#------------------------------------------------------
# 2.
#------------------------------------------------------

# új változó létrehozása
bracket  <-  NA

# megkeressük a '(' karakter helyét a stringben, majd substring-gel a megfelelő
# helyen leszeleteljük

for (i in 1:length(comic_characters$name)) {
  bracket[i]  <-  which(strsplit(comic_characters$name[i], "")[[1]] == "(")
  comic_characters$name[i]  <-  substr(comic_characters$name[i], start=1, stop=bracket[i]-2)
}

#------------------------------------------------------
# 4.
#------------------------------------------------------

# 3 szuperhőst tartalmazó lista
superheroes = c("Thor","Katherine Pryde","Loki Laufeyson")

# get_gender fv. alkalmazása a 3 szuperhősre
for (i in 1:length(superheroes)) {
  get_gender(superheroes[i])
}

#------------------------------------------------------
# 6.
#------------------------------------------------------

# a jó és rossz szuperhősök kiíratása
get_aligns("Bad Characters")
get_aligns("Good Characters")