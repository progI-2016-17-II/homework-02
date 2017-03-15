#3. feladat függvénye

get_gender<-function(name=comic_characters$name[[1]])
{
  index<-0
  for (i in 1:nrow(comic_characters))
  {
    if(name==comic_characters$name[i])
    {
      index=i
      break
    }
  }
  uj_gsm<-strsplit(comic_characters$gsm, split=" ")
  uj_s<-strsplit(comic_characters$sex, split=" ")
  if(is.na(comic_characters$gsm[index])==TRUE)
  {
    return(print(uj_s[[index]][1]))
  }
  else
  {
    return(print(uj_gsm[[index]][1]))
  }
  
}
#5. feladat

get_aligns<-function(aligns=NA, na.rm=TRUE)
{
  if(is.numeric(aligns)==TRUE)
  {
    return(print("Csak szoveget irhatsz be!"))
  }
  if(is.na(aligns)==TRUE)
  {
    nevek_na=comic_characters$name[is.na(comic_characters$align)==TRUE]
    nevek_na_abc<-sort(nevek_na)
    return(nevek_na_abc)
  }
  else
  {
    nevek<-comic_characters$name[comic_characters$align==aligns & is.na(comic_characters$align)==FALSE]
    nevek_abc<-sort(nevek)
    return(nevek_abc)
  }
}
#más megoldás az 5.feladatra
#hosszabb, tovább fut
get_aligns_2<-function(aligns_2=NA)
{
  if(is.na(aligns_2)==TRUE)
  {
    k=0
    nevek_2_na<-NULL
    for (i in 1:nrow(comic_characters))
    {
      if(is.na(comic_characters$align[i])==TRUE)
      {
        k<-k+1
        nevek_2_na[k]<-comic_characters$name[i]
      }
    }
    return(sort(nevek_2_na))
  }
  else
  {
    j=0
    nevek_masodik<-NULL
    for (i in 1:nrow(comic_characters))
    {
      if(comic_characters$align[i]==aligns_2 & is.na(comic_characters$align[i])==FALSE)
      {
        j<-j+1
        nevek_masodik[j]<-comic_characters$name[i]
      }
    }
    
    return(sort(nevek_masodik))
  }
}