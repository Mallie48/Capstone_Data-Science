# Capstone_Data-Science
# Final Project
author: Maliheh Shomali
Date: 05/25/2018 
Autosize: true

# Overview 
- The goal of this exercise is to create a product (Application) with a shiny app that would predict the next word as a sentense is entered  using the SwiftKey dataset
- A Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.
- The data is from a corpus called HC Corpora (www.corpora.heliohost.org).

[Shiny App] https://beta.rstudioconnect.com/content/3749/

[GitHub] https://github.com/Mallie48/Capstone_Data-Science 

# R scripts that are used to crate the shiny app:
1) createFilteredTables.R: this file takes the raw data and creates the file 'NGramSortedFinal.txt'. 
2) NGramSortedFinal.txt: contains four concatenated tables and the associated NGram counts.
3) getPredWord.R: this is the main function called by server.R for the application interface. This file searches for matches based on the user input, and calculates a penalty for the probability score.
4) global.R: loads the lookup tables to search for matches, loads additional libraries and functions.
5) server.R: code necessary to access user input, calls functions necessary, and return results to the user interface
6) ui.R: code necessary for the application interface. 
7) profanity.RData: a list of words that needs to be remove.
8) divideNGram.RData: contains positions used to divide the table (from NGramSortedFinal.txt) into look up tables. NGramSortedFinal.txt and divideNGram.RData are used to load and divide the tables used for searching for a match.

# Getting & Cleaning the Data
- A subset data is made from three sources (blogs,twitter and news) of original SwiftKey dataset, and then merged into one. 
- The data cleaning has been performed by converting all capitals to lowercase, removing punctuation and numbers, foreign characters, common words, and any extra white space.
- Next, the corresponding N-Grams (unigram, bigram, trigram) are  created.
- Last, the term-count tables are extracted from the N-Grams .RData and sorted according to the frequency in descending order. 
- The algorithm then calculates probability scores for matches. 

# Text Prediction Algorithem
- The algorithm returns three things. First the original text the user provided, second is the filtered text provided to the algorithm, third is a table. 
- In the lefthand column of this table we have the predicted words, in the right hand column we have the log probability. The table is sorted from the most likely word in the first row to the least likely in the last row.
- As an example, if the sentence "Born on April 15," from the en_US.news notepad, is entered by users, the App interprets the text as: "born april", and the five predicted words based on the submitted phrase will be: "th", "pm", "may", "fools" and "will".

https://beta.rstudioconnect.com/content/3749/
