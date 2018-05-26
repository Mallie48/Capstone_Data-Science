# Capstone_Data-Science
Data Science Capstone : Final Project
author: Maliheh Shomali date: 05/25/2018 autosize: true

Project
A Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.

The data is from a corpus called HC Corpora (www.corpora.heliohost.org).

This Presentation will discuss the Text Prediction Algorithm, Calculating Probability Score, and finally performance and location of the application.

Text Prediction Algorithm
Step 1: We begin with user input and filter it to remove profanity, punctuation, contractions, numbers, foreign characters, common words, and any extra white space.

Step 2: Search for a match. If sufficient number of matches are found, skip to Step 4.

Step 3: If more matches are needed we shorten user input and search again

Step 4: Calculate probability scores for matches, add penalty if necessary Log probability is employed to increase algorithm speed

Calculating Probability Score
The equation below predict next word. In order to predict the next word we start with the left hand sife of the eqaution. This statement reads the probability of ‘you’ given ‘looking forward seeing’. The full equation below employs a Markov assumption. Under this assumption we can reduce the computational complexity of algorithm.

P(you|looking+forward+seeing) ~ P(you|seeing)

Application Inference
The User Input panel on the left contains three items. First is a text box to enter the phrase you’d like analyzed. Second is a drop down menu where you can select the maximum number of words to return. Third is a button, ‘Analyze Text’, that is the algorithm’s call to action and initiates the analysis. Analysis will only be performed upon pressing this button.

The algorithm returns three things. First the original text that the user provided, second is the filtered text provided to the algorithm, third is a table. In the lefthand column of this table we have the predicted words, in the right hand column we have the log probability. The table is sorted from the most likely word in the first row to the least likely in the last row.

The application can be found at: https://kabiri.shinyapps.io/Capstone/
