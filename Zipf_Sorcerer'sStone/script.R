library(zipfR)

#First Part is to clean up the text 
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

write.table(book1, "book1.txt", row.names = FALSE, qoute = FALSE)
View(book1)
book1 <- readLines("book1.txt")

book1.tfl <- vec2tfl(book1) #vector to type frequency list 
N(book1.tfl) #sample size 
V(book1.tfl) #type count
book1.spc <- tfl2spc(book1.tfl) #computes observed freq spectrum 
book1.spc
book1.vgc <- vec2vgc (book1, m.max =2) #vocabulary growth curve 

plot(book1.tfl) #logarithmic scale recommended 
plot(book1.spc) #barplot of frequency spectrum 
plot(book1.vgc,add.m = 1:2) #vocabulary growth plot 
