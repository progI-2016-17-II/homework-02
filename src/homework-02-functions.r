#
#                    Házi feladat 2     
#                    Programozás I.     
#                  2016/17. II. félév 
#                     Farsang Bence      
#                      2017.03.10.
#
#------------------------------------------------------
#                       II.feladat #
#------------------------------------------------------

#------------------------------------------------------
# 3.
#------------------------------------------------------

get_gender <- function(name) {
  # megkeressük a szuperhős indexét
  x  <-  which(comic_characters$name  ==  name)
  
  # ha a szuperhős valamilyen nemi/szexuális kisebbséghez tartozik ág
  if (is.na(comic_characters$gsm)==1) {
    
    # az y paraméter megmutatja, hogy hanyadik karakter a 'C' a stringben
    y  <-  which(strsplit(comic_characters$sex[which(comic_characters$name  ==  name)],
                          "")[[1]]  ==  "C")
    # substring-gel leválasztjuk a 'Charcters'-t
    z  <-  substr(comic_characters$sex[which(comic_characters$name == name)], start = 1, stop = y-2)
    print(z)
    
    # ha a szuperhős nem tartozik nemi/szexuális kisebbséghez ág
  } else {
    # az y paraméter megmutatja, hogy hanyadik karakter a 'C' a stringben
    y  <-  which(strsplit(comic_characters$gsm[x], "")[[1]]  ==  "C")
    # substring-gel leválasztjuk a 'Charcters'-t
    z  <-  substr(comic_characters$gsm[x], start = 1, stop = y-2)
    print(z)
  }
}

#------------------------------------------------------
# 5.
#------------------------------------------------------

# az értékek gyakorisága az align változóban (nem mutatja az NA-kat!)
t  =  as.data.frame(table(comic_characters$align))
print(t)

# a függvény megmutatja az összes szuperhőst az oldalak szerint (jók, rosszak, stb.) ABC sorrendben
get_aligns <- function(align = "Hiányzó input.") {
  # ha az align-hoz nem tartozik adat
  if (is.na(align)  ==  1)                    {
    # először megkeressük a hiányzó adatok sorait, a talált indexeket betöltjük a nevek
    # listájába, majd az abc-nek megfelelően rendezzük
    sort(comic_characters$name[which(is.na(comic_characters$align))])
    
  } else if (align  ==  "Good Characters")    {
    sort(comic_characters$name[which(comic_characters$align  ==  "Good Characters")])
    
  } else if (align  ==  "Neutral Characters") {
    sort(comic_characters$name[which(comic_characters$align  ==  "Neutral Characters")])
    
  } else if (align  ==  "Bad Characters")     {
    sort(comic_characters$name[which(comic_characters$align  ==  "Bad Characters")])
    
  } else if (align  ==  "Reformed Criminals") {
    sort(comic_characters$name[which(comic_characters$align  ==  "Reformed Criminals")])
    
  } else {
    # ha nem adtunk meg inputot, akkor a függvény a default értéket
    # különben pedig a "Nem megfelelő input." üzenetet adja vissza
    ifelse(align  ==  "Hiányzó input."
           , align, "Nem megfelelő input.") }}