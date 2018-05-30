
library(shiny)


shinyUI(pageWithSidebar(
  headerPanel("Data Science Capstone: Final Project"),
  sidebarPanel(
    h3("To predict the next word by App"),
    br(),
    
    strong(""),
    textInput("text1", "Type a phrase:", value = "In the years thereafter,"),
    br(),
    
    selectInput("words1", "Maximum predicted words to return:",
                choices = list("1" = 1, "2" = 2,
                               "3" = 3, "4"=4, "5"=5), selected = 3),
    br(),
    
#    strong("Click the button below to return the predicted words."),
    actionButton("button1", "Submit")
    
    
  ),
  mainPanel(
    tabsetPanel(
      
      tabPanel("Results",
               
               h4('The phrase that was submitted:'),
               verbatimTextOutput("text11"),
               
               h4('The App interprets the text as:'),
               verbatimTextOutput("text22"),
               
               h4('The predicted word based on the submitted phrase:'),
               tableOutput("table1")
                
               
      )
    ))
))