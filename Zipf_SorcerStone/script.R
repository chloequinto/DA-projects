library(zipfR)

?zipfR

adv <- readLines("brown_adverbs.txt", encoding="UTF-8")
head(adv, 30)
length(adv)
View(adv)
adv.tfl <- vec2tfl(adv)
N(adv.tfl)
V(adv.tfl)
adv.spc <- tfl2spc(adv.tfl)
adv.spc
adv.vgc <- vec2vgc (adv, m.max =2)

plot(adv.tfl) #logarithmic scale recommended 
plot(adv.spc) #barplot of frequency spectrum 
plot(adv.vgc,add.m = 1:2) #vocabulary growth plot 
#################################################3

book1 <- readLines("Sorcerer's Stone.txt", encoding="UTF-8")
#lowercase all words
book1 <- tolower(book1)
#remove everything else besides letters and numbers
book1 <- stringr::str_replace_all(book1, "[^a-zA-Z\\s]", " ")
#one white space
book1 <- stringr::str_replace_all(book1, "[\\s]+", " ")
#split
book1 <- stringr::str_split(book1, " ")

indexes <- which(book1 == "")
if (length(indexes) > 0 ){ 
  book1 <- book1[-indexes]
}

View(book1)
head(book1, 100) #mathematically, a vector of tokens 
length(book1) #sample-size

require(reshape2)
book1$value <- rownames(book1)
book1 <- melt(book1)
book1$L1 <- NULL

write.table(book1, "book1.txt", row.names = FALSE)

book1 <- readLines("book1.txt")
book1.tfl <- vec2tfl(book1)
#####################################################
install.packages("pdftools")
library(pdftools)
download.file("https://www.apple.com/support/products/pdf/applecare_ipod_t_and_c_11182003.pdf", "tac_apple_2.pdf")
text <- pdf_text("tac_apple_2.pdf")

Tokenize <- function(string){ 
  #lowercase all words
  temp <- tolower(text)
  #remove everything else
  temp <- stringr::str_replace_all(text, "[^a-zA-Z\\s]", " ")
  #one white space
  temp <- stringr::str_replace_all(text, "[\\s]+", " ")
  #split
  temp <- stringr::str_split(temp, " ")[[1]]
  indexes <- which (text == "")
  if (length(indexes) > 0 ){ 
    text <- text[-indexes]
    }
  return(temp)
}

View(text)