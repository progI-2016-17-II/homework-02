# HW 2 Functions

get_gender <- function(nameee){
  if (is.na(comic$gsm[which(comic$name==nameee)])) {
    print(strsplit(comic$sex[which(comic$name==nameee)], " ")[[1]][1])
  } else {
    print(strsplit(comic$gsm[which(comic$name==nameee)], " ")[[1]][1])
  }
}

get_align <- function(align) {
  if (align == "Bad Characters") {
    print(comic$name[which(comic$align==align)])
  } else if (align == "Good Characters") {
    print(comic$name[which(comic$align==align)])
  } else if (align == "Neutral Characters")
    print(comic$name[which(comic$align==align)])
    else if (align == "NA") {
    print(comic$name[which(is.na(comic$align))])
  } else if (align == "Reformed Criminals") {
    print(comic$name[which(comic$align==align)])
  } else {
    print("not found")
  }
}

