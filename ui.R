# Libraries and options ####
library(shiny)
library(shinythemes)

# Define the app ####

shinyUI(fluidPage(
    
    # Theme
    theme = shinytheme("spacelab"),
    
    # Application title
    titlePanel("Next Word Predictor"),
    
       
    
        
        sidebarPanel(
            
            # Text input
            textInput("text", label = ('Write a partial sentence with two or more words separated by a space'), value = 'the default value'),
            
            # Submit button for making the prediction
            submitButton("Submit"),
            
            hr(),
            # Table output
            dataTableOutput('table')),
        
        # Mainpanel ####
        
        mainPanel(
            tabsetPanel(type = "tabs", 
                        tabPanel("Predictions",
                        
            wellPanel(
                
                # Link to report
                helpText(a('More information on the project',
                           href='http://dataexcursions.com/Word-Prediction-Shiny-App', 
                           target = '_blank')
                ),
                
                # Link to repo
                helpText(a('Link to the GitHub Repository',
                           href='https://github.com/arttuK/word-prediction/tree/master/shiny',
                           target = '_blank')
                ),
                
               
                # Barchart output
                h2("Top 5 Predicted Words"),
                plotOutput("barchart"),
                
               
                h2("Wordcloud for the Predicted Words"),
                plotOutput('wordcloud')
                
            )),
              tabPanel("Instructions",
               h1("Using the App"),
                HTML("(A.)The application uses an algorithm based on the stupid backoff in order to predict the sequential word in a given sentence or sentence.
                     (B.) To predict use of the application simply write a partial sentence of 2 or more words separated by a space and click on the option send.
                     (C.) A table with the possible predicted words and the punctuation of the backoff algorithm will appear in the sidebar.
                     (D.) The main panel will show a bar chart of the 5 words with the highest possible incidence, as well as the 100 main words predicted in a wordcloud.
                     "))
         
       
        
        ) )
