# Zipfr on Harry Potter and the Sorcerer's Stone

## Background
By definition, Zipfr's Law  states that given a large sample of words used, the frequency of any words is inversely proportional to its rank in the frequency table. Thus, the most frequent word will occur about twice as often as the second most frequent word.

## Motivation
  I came across Zipfr's Law while doing research to find the frequency of words in a text and to ultimately to create a word frequency distribution. After succeeding, I wanted to see what else I could do with the Zipfr's R library.

## Results
- **Vocabulary Growth Frequency**
  - Reports vocabulary size as a function of sample size
  - ![pic_1](https://github.com/chloequinto/DA-projects/blob/master/Zipf_SorcerStone/vgc_book1.png?raw=true)
    - Above, displays the growth for the total text of J.K. Rowling, Harry Potter and the Sorcerer's Stone. In the first few chapters of the book, the number of types and hapaxes (words that occurs only once within a text) grows at a fast rate. This continues on throughout the book, leading to the conclusion that the vocabulary growth still increases.
- **Frequency Spectra**
  - Summarizes a frequency distribution in terms of the number of types per frequency class. In other words, it reports how many distinct types occur once, how many types occur twice, and so on.
  - ![pic_3](https://github.com/chloequinto/DA-projects/blob/master/Zipf_SorcerStone/spc_book1.png?raw=true)
    -  In this case, there are around ~2,450 words that only occur once in the Sorcerer's Stone.
- **Type Frequency List**
  - A spectrum that has a non-logarithmic scale that will always have a rather uninformative L-shaped profile.
  - ![pic_2](https://github.com/chloequinto/DA-projects/blob/master/Zipf_SorcerStone/tfl_book1.png?raw=true)
    - Above displays high values corresponding to the lowest frequency classes and a very long tail of frequency classes with only one member (meaning that just one word with frequency of ~4,750 )
