# Shiny App showing tidyeval with multiple variables

library(shiny)
data(iris)
library(dplyr)

numericVariables <- c("Sepal.Length", "Sepal.Width","Petal.Length", "Petal.Width")

# Define UI for application that draws a histogram
ui <- fluidPage(
   
  title= "Passing a List of Variables",
  
      # Show a plot of the generated distribution
      fluidRow(
        selectInput("numeric_vars", "Select a Numeric Variable", 
                    choices = numericVariables, selected = numericVariables[1:2],
                    multiple = TRUE), 
        plotOutput("boxplot")
        
      )
   )


# Define server logic required to draw a histogram
server <- function(input, output) {
   
  selected_data <- reactive({
    ## input$numeric_var is a character vector, so we cast it to a list of symbols
    var_list <- syms(input$numeric_vars)
    
    ## Now we evaluate it with !!!
    out_col <- iris %>% select(!!!var_list)
    
  })
  
  output$boxplot <- renderPlot({
    head(selected_data())
    boxplot(selected_data())
    
  })

}

# Run the application 
shinyApp(ui = ui, server = server)

